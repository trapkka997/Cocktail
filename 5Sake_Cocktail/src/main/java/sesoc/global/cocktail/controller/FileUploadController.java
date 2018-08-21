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
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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

@Controller
public class FileUploadController {
	@Autowired
	MappingJackson2JsonView jsonView;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	
	@RequestMapping(value = "/visionUpload", method = RequestMethod.GET)
	public String home() {

		return "visionUpload";
	}
	
	@RequestMapping(value="vision", method=RequestMethod.POST, produces="text/plain")
	public @ResponseBody String vision(MultipartHttpServletRequest multipartRequest,HttpServletRequest servletRequest) throws Exception {
		Iterator<String> itr = multipartRequest.getFileNames(); 
		
		if(itr.hasNext()) {
			MultipartFile mpf = multipartRequest.getFile(itr.next());
			System.out.println(mpf.getOriginalFilename() +" uploaded!"); 
			String originalFilename = mpf.getOriginalFilename();
			int fileLength = mpf.getBytes().length;
			System.out.println("file 크기 : " + fileLength);
			UUID uuid = UUID.randomUUID();
			String savedFileName = uuid+"_"+originalFilename;
			String jsonPath = servletRequest.getSession().getServletContext().getRealPath("/WEB-INF/resources/"+savedFileName);
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
			if(!visionText(jsonPath)) {
				return "error";
			};
			if(!visionColor(jsonPath)) {
				return "error";
			}
			return "success";
			} else{
			return "fail";
		}
	}
	
	public boolean visionColor(String jsonPath) throws IOException {
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
		       return false;
		     }

		  // For full list of available annotations, see http://g.co/cloud/vision/docs
		      DominantColorsAnnotation colors = res.getImagePropertiesAnnotation().getDominantColors();
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
		 return true;
	
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
}
