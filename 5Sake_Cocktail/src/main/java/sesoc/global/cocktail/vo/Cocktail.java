package sesoc.global.cocktail.vo;

public class Cocktail {
	private String cocktailname;
	private String cocktailname_en;
	private String alcole;
	private String liqueur;
	private String mateial;
	private String receipe;
	private String imagerink;
	//private String colorvalue; //기존 DB에 포함되어 있지 않아서 주석처리했습니다. alter구문 실행 후에 주석처리를 풀고 다른 부분도 수정요!
	//alter table score drop column colorvalue;
	public Cocktail() {
		super();
	}

	public Cocktail(String cocktailname, String cocktailname_en, String alcole, String liqueur, String mateial,
			String receipe, String imagerink) {
		super();
		this.cocktailname = cocktailname;
		this.cocktailname_en = cocktailname_en;
		this.alcole = alcole;
		this.liqueur = liqueur;
		this.mateial = mateial;
		this.receipe = receipe;
		this.imagerink = imagerink;
	}

	public String getCocktailname() {
		return cocktailname;
	}

	public void setCocktailname(String cocktailname) {
		this.cocktailname = cocktailname;
	}

	public String getCocktailname_en() {
		return cocktailname_en;
	}

	public void setCocktailname_en(String cocktailname_en) {
		this.cocktailname_en = cocktailname_en;
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

	public String getMateial() {
		return mateial;
	}

	public void setMateial(String mateial) {
		this.mateial = mateial;
	}

	public String getReceipe() {
		return receipe;
	}

	public void setReceipe(String receipe) {
		this.receipe = receipe;
	}

	public String getImagerink() {
		return imagerink;
	}

	public void setImagerink(String imagerink) {
		this.imagerink = imagerink;
	}

	@Override
	public String toString() {
		return "Cocktail [cocktailname=" + cocktailname + ", cocktailname_en=" + cocktailname_en + ", alcole=" + alcole
				+ ", liqueur=" + liqueur + ", mateial=" + mateial + ", receipe=" + receipe + ", imagerink=" + imagerink
				+ "]";
	}

}
