package sesoc.global.cocktail.vo;

public class RGB{
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