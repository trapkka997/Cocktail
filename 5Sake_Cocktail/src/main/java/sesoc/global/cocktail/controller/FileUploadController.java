package sesoc.global.cocktail.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.google.cloud.vision.v1.AnnotateImageRequest;
import com.google.cloud.vision.v1.AnnotateImageResponse;
import com.google.cloud.vision.v1.BatchAnnotateImagesResponse;
import com.google.cloud.vision.v1.ColorInfo;
import com.google.cloud.vision.v1.DominantColorsAnnotation;
import com.google.cloud.vision.v1.EntityAnnotation;
import com.google.cloud.vision.v1.Feature;
import com.google.cloud.vision.v1.Image;
import com.google.cloud.vision.v1.ImageAnnotatorClient;
import com.google.cloud.vision.v1.Feature.Type;
import com.google.protobuf.ByteString;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.type.Color;

import sesoc.global.cocktail.dao.CocktailRepository;
import sesoc.global.cocktail.dao.MemberRepository;
import sesoc.global.cocktail.test.JsoupExample;
import sesoc.global.cocktail.test.JsoupExample2;
import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.RGB;
import sesoc.global.cocktail.vo.UserPhoto;


@Controller
public class FileUploadController {
	
	private String originalFileName;
	private String savedFileName;
	
	
	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getSavedFileName() {
		return savedFileName;
	}

	public void setSavedFileName(String savedFileName) {
		this.savedFileName = savedFileName;
	}
	@Autowired
	MappingJackson2JsonView jsonView;
	
	@Autowired
	CocktailRepository cocktailRepository;
	@Autowired
	MemberRepository memberRepository;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	
	@RequestMapping(value = "/visionUpload", method = RequestMethod.GET)
	public String home(Model model) {
//		JsoupExample2 jsoup = new JsoupExample2();
//		ArrayList<String> urls = new ArrayList<>();
//		try {
//			ArrayList<String> urlList = jsoup.getImg();
//			for(String url : urlList) {
//				JsoupExample js = new JsoupExample();
//				System.out.println(js.getImage(url));
//				urls.add(js.getImage(url));
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		model.addAttribute("urls",urls);
		return "test/visionUpload";
	}
	
	@RequestMapping(value="vision", method=RequestMethod.POST, produces="application/json")
	public @ResponseBody List<Cocktail> vision(MultipartHttpServletRequest multipartRequest,HttpServletRequest servletRequest) throws Exception {
		Iterator<String> itr = multipartRequest.getFileNames(); 
		String colorName = null;
		if(itr.hasNext()) {
			MultipartFile mpf = multipartRequest.getFile(itr.next());
			System.out.println(mpf.getOriginalFilename() +" uploaded!"); 
			setOriginalFileName(mpf.getOriginalFilename());
			int fileLength = mpf.getBytes().length;
			System.out.println("file 크기 : " + fileLength);
			UUID uuid = UUID.randomUUID();
			setSavedFileName(uuid+"_"+getOriginalFileName());
			String jsonPath = servletRequest.getSession().getServletContext().getRealPath("/resources/"+getSavedFileName());
			System.out.println(jsonPath);
			File saveFile = new File(jsonPath);
			if(!saveFile.exists()) {
				saveFile.mkdirs();
			}
			try { 
				mpf.transferTo(saveFile);
			} catch (IOException e){
				System.out.println(e.getMessage());
				e.printStackTrace(); 
			}
//			if(!visionText(jsonPath)) {
//				return null;
//			};
			if((colorName = visionColor(jsonPath)).equals("fail")) {
				return null;
			}
			List<Cocktail> cocktailList = cocktailRepository.getCocktailByColor(colorName);
			return cocktailList;
			} else{
			return null;
		}
	}
	//  UserPhoto에 업로드 함
	// 유저 이미지, 글, 칵테일 이미지 모두 받아서 디비에 넣으며 된다
	@RequestMapping(value="writeBoard", method=RequestMethod.POST, produces="application/json")
	public @ResponseBody String writeBoard(String contents,String cocktailName, HttpSession httpSession) throws Exception {
		UserPhoto userPhoto = new UserPhoto();
		
		userPhoto.setTitle(contents);
		userPhoto.setContents(contents);
		userPhoto.setOriginalFileName(originalFileName);
		userPhoto.setSaveFileName(savedFileName);
		userPhoto.setUserEmail((String)httpSession.getAttribute("useremail"));
		userPhoto.setCocktailName(cocktailName);
		int result = memberRepository.writeBoard(userPhoto);
		if(result ==1) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	public String visionColor(String jsonPath) throws IOException {
		String result = null;
		// Instantiates a client
		 try (ImageAnnotatorClient vision = ImageAnnotatorClient.create()) {

		   // The path to the image file to annotate
		   String fileName = jsonPath;
		   // Reads the image file into memory
		   Path path = Paths.get(fileName);
		   byte[] data = Files.readAllBytes(path);
		   ByteString imgBytes = ByteString.copyFrom(data);

		   // Builds the image annotation request
		   List<AnnotateImageRequest> requests = new ArrayList<>();
		   Image img = Image.newBuilder().setContent(imgBytes).build();
		   Feature feat = Feature.newBuilder().setType(Type.IMAGE_PROPERTIES).build();

		   
		   AnnotateImageRequest request = AnnotateImageRequest.newBuilder()
		       .addFeatures(feat)
		       .setImage(img)
		       .build();
		   requests.add(request);

		   // Performs label detection on the image file
		   BatchAnnotateImagesResponse response = vision.batchAnnotateImages(requests);
		   List<AnnotateImageResponse> responses = response.getResponsesList();
		   for (AnnotateImageResponse res : responses) {
		     if (res.hasError()) {
		       System.out.printf("Error: %s\n", res.getError().getMessage());
		       return "fail";
		     }

		  // For full list of available annotations, see http://g.co/cloud/vision/docs
		      DominantColorsAnnotation colors = res.getImagePropertiesAnnotation().getDominantColors();
		      Color getColor = colors.getColorsList().get(0).getColor();
		      int red = (int)getColor.getRed();
		      int green = (int)getColor.getGreen();
		      int blue = (int)getColor.getBlue();
		      result  = colorTest(red,green,blue);
		      for (ColorInfo color : colors.getColorsList()) {
		        System.out.printf(
		            "fraction: %f\nr: %f, g: %f, b: %f\n",
		            color.getPixelFraction(),
		            color.getColor().getRed(),
		            color.getColor().getGreen(),
		            color.getColor().getBlue());
		      }

		   }
		 }
		 return result;
	
	}
	public boolean visionText(String jsonPath) throws IOException {
		// Instantiates a client
		 try (ImageAnnotatorClient vision = ImageAnnotatorClient.create()) {

		   // The path to the image file to annotate
		   String fileName = jsonPath;
		   // Reads the image file into memory
		   Path path = Paths.get(fileName);
		   byte[] data = Files.readAllBytes(path);
		   ByteString imgBytes = ByteString.copyFrom(data);

		   // Builds the image annotation request
		   List<AnnotateImageRequest> requests = new ArrayList<>();
		   Image img = Image.newBuilder().setContent(imgBytes).build();
		   Feature feat = Feature.newBuilder().setType(Type.LABEL_DETECTION).build();
		   
		   AnnotateImageRequest request = AnnotateImageRequest.newBuilder()
		       .addFeatures(feat)
		       .setImage(img)
		       .build();
		   requests.add(request);

		   // Performs label detection on the image file
		   BatchAnnotateImagesResponse response = vision.batchAnnotateImages(requests);
		   List<AnnotateImageResponse> responses = response.getResponsesList();
		   for (AnnotateImageResponse res : responses) {
		     if (res.hasError()) {
		       System.out.printf("Error: %s\n", res.getError().getMessage());
		       return false;
		     }

		     for (EntityAnnotation annotation : res.getLabelAnnotationsList()) {
		       annotation.getAllFields().forEach((k, v) ->
		           System.out.printf("%s : %s\n", k, v.toString()));
		     }
		   }
		 }
		 return true;
	
	}
	
	public String colorTest(int r, int g, int b) {
		RGB e1 = new RGB("e1",r, g, b);
		//yellow : FFFF00
		RGB yellowColor = new RGB("yellowColor",255, 255, 0);
		//red :: FF0000
		RGB redColor = new RGB("redColor",255, 0, 0);
		//rainbow :: 
		//purple :: #800080
		RGB purpleColor = new RGB("purpleColor",128, 0, 128);
		//pink :: #FFC0CB
		RGB pinkColor = new RGB("pinkColor",255, 192, 203);
		//peach :: #FFDAB9
		RGB peachColor = new RGB("peachColor",255, 218, 185);
		//orange :: #FFA500
		RGB orangeColor = new RGB("orangeColor",255, 165, 0);
		//green :: #008000
		RGB greenColor = new RGB("greenColor",0, 128, 0);
		//clear 
		//cream :: #F5FFFA
		RGB creamColor = new RGB("creamColor",245, 255, 250);
		// brown :: #A52A2A
		RGB brownColor = new RGB("brownColor",165, 42, 42);
		//blue :: #0000FF
		RGB blueColor = new RGB("blueColor",0,0,255);
		//black :: #000000
		RGB blackColor = new RGB("blackColor",0, 0, 0);
		ArrayList<RGB> rgbArray = new ArrayList<RGB>();
		rgbArray.add(yellowColor);
		rgbArray.add(redColor);
		rgbArray.add(purpleColor);
		rgbArray.add(pinkColor);
		rgbArray.add(peachColor);
		rgbArray.add(orangeColor);
		rgbArray.add(greenColor);
		rgbArray.add(creamColor);
		rgbArray.add(brownColor);
		rgbArray.add(blueColor);
		rgbArray.add(blackColor);
		
		double temp = 99999.0;
		String colorName = "";
		for(RGB rgb : rgbArray) {
			double data = ColourDistance(e1, rgb);
			System.out.println(data);
			if(temp > data) {
				temp = data;
				colorName = rgb.getColorName();
			}
		}
		System.out.println(temp);
		System.out.println(colorName);
		return colorName;
	}
	double ColourDistance(RGB e1, RGB e2)
	{
	  long rmean = ( (long)e1.getRed() + (long)e2.getRed() ) / 2;
	  long r = (long)e1.getRed() - (long)e2.getRed();
	  long g = (long)e1.getGreen() - (long)e2.getGreen();
	  long b = (long)e1.getBlue() - (long)e2.getBlue();
	  return Math.sqrt((((512+rmean)*r*r)>>8) + 4*g*g + (((767-rmean)*b*b)>>8));
	}
}
