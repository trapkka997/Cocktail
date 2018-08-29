package sesoc.global.cocktail.vo;

public class Alcole {
	private String cocktailname;
	private String alcole;
	public Alcole() {
		super();
	}
	public Alcole(String cocktailname, String alcole) {
		super();
		this.cocktailname = cocktailname;
		this.alcole = alcole;
	}
	public String getCocktailname() {
		return cocktailname;
	}
	public void setCocktailname(String cocktailname) {
		this.cocktailname = cocktailname;
	}
	public String getAlcole() {
		return alcole;
	}
	public void setAlcole(String alcole) {
		this.alcole = alcole;
	}
	
	@Override
	public String toString() {
		return "Alcole [cocktailname=" + cocktailname + ", alcole=" + alcole + "]";
	}
	
}
