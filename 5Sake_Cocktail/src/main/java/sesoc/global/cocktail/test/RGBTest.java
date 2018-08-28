package sesoc.global.cocktail.test;

import java.util.Scanner;

class RGB{
	private int red;
	private int green;
	private int blue;
	public RGB() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RGB(int red, int green, int blue) {
		super();
		this.red = red;
		this.green = green;
		this.blue = blue;
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
	@Override
	public String toString() {
		return "RGB [red=" + red + ", green=" + green + ", blue=" + blue + "]";
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
		RGB e1 = new RGB(red, green, blue);
		System.out.println("red 색 입력");
		red = sc.nextInt();
		System.out.println("green 색 입력");
		green = sc.nextInt();
		System.out.println("blue 색 입력");
		blue = sc.nextInt();
		RGB e2 = new RGB(red, green, blue);
		
		RGBTest test = new RGBTest();
		double value  = test.ColourDistance(e1, e2);
		
		System.out.println(value);
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
