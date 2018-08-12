package sesoc.global.cocktail.vo;

public class Cocktail {
	private String cocktailName;
	private String alcole;
	private String liqueur;
	private String meteial;
	private String receipe;
	private String userSavename;
	private String userFilename;
	public Cocktail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cocktail(String cocktailName, String alcole, String liqueur, String meteial, String receipe,
			String userSavename, String userFilename) {
		super();
		this.cocktailName = cocktailName;
		this.alcole = alcole;
		this.liqueur = liqueur;
		this.meteial = meteial;
		this.receipe = receipe;
		this.userSavename = userSavename;
		this.userFilename = userFilename;
	}
	public String getCocktailName() {
		return cocktailName;
	}
	public void setCocktailName(String cocktailName) {
		this.cocktailName = cocktailName;
	}
	public String getAlcole() {
		return alcole;
	}
	public void setAlcole(String alcole) {
		this.alcole = alcole;
	}
	public String getLiqueur() {
		return liqueur;
	}
	public void setLiqueur(String liqueur) {
		this.liqueur = liqueur;
	}
	public String getMeteial() {
		return meteial;
	}
	public void setMeteial(String meteial) {
		this.meteial = meteial;
	}
	public String getReceipe() {
		return receipe;
	}
	public void setReceipe(String receipe) {
		this.receipe = receipe;
	}
	public String getUserSavename() {
		return userSavename;
	}
	public void setUserSavename(String userSavename) {
		this.userSavename = userSavename;
	}
	public String getUserFilename() {
		return userFilename;
	}
	public void setUserFilename(String userFilename) {
		this.userFilename = userFilename;
	}
	@Override
	public String toString() {
		return "Cocktail [cocktailName=" + cocktailName + ", alcole=" + alcole + ", liqueur=" + liqueur + ", meteial="
				+ meteial + ", receipe=" + receipe + ", userSavename=" + userSavename + ", userFilename=" + userFilename
				+ "]";
	}

	

}
