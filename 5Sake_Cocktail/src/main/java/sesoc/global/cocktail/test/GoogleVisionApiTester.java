package sesoc.global.cocktail.test;

import com.google.cloud.vision.v1.ImageAnnotatorClient;
import com.google.cloud.vision.v1.ImageSource;
import com.google.cloud.vision.v1.AnnotateImageRequest;
import com.google.cloud.vision.v1.AnnotateImageResponse;
import com.google.cloud.vision.v1.BatchAnnotateImagesResponse;
import com.google.cloud.vision.v1.ColorInfo;
import com.google.cloud.vision.v1.DominantColorsAnnotation;
import com.google.cloud.vision.v1.Feature;
import com.google.cloud.vision.v1.Feature.Type;
import com.google.cloud.vision.v1.Image;
import com.google.protobuf.ByteString;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class GoogleVisionApiTester {
	
	public static void main(String[] args) throws IOException {
		 List<AnnotateImageRequest> requests = new ArrayList<>();

		  ImageSource imgSource = ImageSource.newBuilder().setImageUri("https://cdn.filestackcontent.com/zjht1wT1Sl6n687VdMf5").build();
		  Image img = Image.newBuilder().setSource(imgSource).build();
		  Feature feat = Feature.newBuilder().setType(Type.IMAGE_PROPERTIES).build();
		  AnnotateImageRequest request =
		      AnnotateImageRequest.newBuilder().addFeatures(feat).setImage(img).build();
		  requests.add(request);

		  try (ImageAnnotatorClient client = ImageAnnotatorClient.create()) {
		    BatchAnnotateImagesResponse response = client.batchAnnotateImages(requests);
		    List<AnnotateImageResponse> responses = response.getResponsesList();

		    for (AnnotateImageResponse res : responses) {
		      if (res.hasError()) {
		        System.out.printf("Error: %s\n", res.getError().getMessage());
		        return;
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
	}
}
