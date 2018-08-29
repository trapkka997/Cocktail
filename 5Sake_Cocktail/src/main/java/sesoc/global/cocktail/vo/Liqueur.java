package sesoc.global.cocktail.vo;

public class Liqueur {
	private String cocktailname;
	private String liqueur;
	public Liqueur() {
		super();
	}
	public Liqueur(String cocktailname, String liqueur) {
		super();
		this.cocktailname = cocktailname;
		this.liqueur = liqueur;
	}
	public String getCocktailname() {
		return cocktailname;
	}
	public void setCocktailname(String cocktailname) {
		this.cocktailname = cocktailname;
	}
	public String getLiqueur() {
		return liqueur;
	}
	public void setLiqueur(String liqueur) {
		this.liqueur = liqueur;
	}
	
	@Override
	public String toString() {
		return "Liqueur [cocktailname=" + cocktailname + ", liqueur=" + liqueur + "]";
	}
	
	
}
