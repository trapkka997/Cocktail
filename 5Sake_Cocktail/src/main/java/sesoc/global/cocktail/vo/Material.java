package sesoc.global.cocktail.vo;

public class Material {
	private String cocktailname;
	private String material;
	public Material() {
		super();
	}
	public Material(String cocktailname, String material) {
		super();
		this.cocktailname = cocktailname;
		this.material = material;
	}
	
	public String getCocktailname() {
		return cocktailname;
	}
	public void setCocktailname(String cocktailname) {
		this.cocktailname = cocktailname;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	
	@Override
	public String toString() {
		return "Material [cocktailname=" + cocktailname + ", material=" + material + "]";
	}
	
}
