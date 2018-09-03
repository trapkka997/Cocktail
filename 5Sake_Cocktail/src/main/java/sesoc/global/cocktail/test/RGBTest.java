package sesoc.global.cocktail.test;

import java.util.ArrayList;
import java.util.Scanner;

class RGB{
	private String colorName;
	private int red;
	private int green;
	private int blue;
	public RGB() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RGB(String colorName, int red, int green, int blue) {
		super();
		this.colorName = colorName;
		this.red = red;
		this.green = green;
		this.blue = blue;
	}
	@Override
	public String toString() {
		return "RGB [colorName=" + colorName + ", red=" + red + ", green=" + green + ", blue=" + blue + "]";
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	public int getRed() {
		return red;
	}
	public void setRed(int red) {
		this.red = red;
	}
	public int getGreen() {
		return green;
	}
	public void setGreen(int green) {
		this.green = green;
	}
	public int getBlue() {
		return blue;
	}
	public void setBlue(int blue) {
		this.blue = blue;
	}
	
	
	
}

public class RGBTest {
	
	
	public static void main(String ...arg) {
		int red = 0;
		int green = 0 ;
		int blue = 0;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("red 색 입력");
		red = sc.nextInt();
		System.out.println("green 색 입력");
		green = sc.nextInt();
		System.out.println("blue 색 입력");
		blue = sc.nextInt();
		RGB e1 = new RGB("e1",red, green, blue);
		RGB e2 = new RGB("e2", 255,255,255);
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
		rgbArray.add(e2);
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
		
		RGBTest test = new RGBTest();
		double temp = 99999.0;
		String colorName = "";
		for(RGB rgb : rgbArray) {
			double data = test.ColourDistance(e1, rgb);
			System.out.println(data);
			if(temp > data) {
				temp = data;
				colorName = rgb.getColorName();
			}
		}
		
		System.out.println(temp);
		System.out.println(colorName);
	}
	

		double ColourDistance(RGB e1, RGB e2){
		  long rmean = ( (long)e1.getRed() + (long)e2.getRed() ) / 2;
		  long r = (long)e1.getRed() - (long)e2.getRed();
		  long g = (long)e1.getGreen() - (long)e2.getGreen();
		  long b = (long)e1.getBlue() - (long)e2.getBlue();
		  return Math.sqrt((((512+rmean)*r*r)>>8) + 4*g*g + (((767-rmean)*b*b)>>8));
		}


}
