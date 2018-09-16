package sesoc.global.cocktail.vo;

public class Cocktail {
	private String cocktailSeq;
	private String cocktailName;
	private String cocktailNameEn;
	private String Ingredient;
	private String recipe;
	private String imageRink;
	private String colorValue;
	private String recommand;
	private String hitcount;
	public Cocktail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cocktail(String cocktailSeq, String cocktailName, String cocktailNameEn, String ingredient, String recipe,
			String imageRink, String colorValue, String recommand, String hitcount) {
		super();
		this.cocktailSeq = cocktailSeq;
		this.cocktailName = cocktailName;
		this.cocktailNameEn = cocktailNameEn;
		Ingredient = ingredient;
		this.recipe = recipe;
		this.imageRink = imageRink;
		this.colorValue = colorValue;
		this.recommand = recommand;
		this.hitcount = hitcount;
	}
	@Override
	public String toString() {
		return "Cocktail2 [cocktailSeq=" + cocktailSeq + ", cocktailName=" + cocktailName + ", cocktailNameEn="
				+ cocktailNameEn + ", Ingredient=" + Ingredient + ", recipe=" + recipe + ", imageRink=" + imageRink
				+ ", colorValue=" + colorValue + ", recommand=" + recommand + ", hitcount=" + hitcount + "]";
	}
	public String getCocktailSeq() {
		return cocktailSeq;
	}
	public void setCocktailSeq(String cocktailSeq) {
		this.cocktailSeq = cocktailSeq;
	}
	public String getCocktailName() {
		return cocktailName;
	}
	public void setCocktailName(String cocktailName) {
		this.cocktailName = cocktailName;
	}
	public String getCocktailNameEn() {
		return cocktailNameEn;
	}
	public void setCocktailNameEn(String cocktailNameEn) {
		this.cocktailNameEn = cocktailNameEn;
	}
	public String getIngredient() {
		return Ingredient;
	}
	public void setIngredient(String ingredient) {
		Ingredient = ingredient;
	}
	public String getRecipe() {
		return recipe;
	}
	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}
	public String getImageRink() {
		return imageRink;
	}
	public void setImageRink(String imageRink) {
		this.imageRink = imageRink;
	}
	public String getColorValue() {
		return colorValue;
	}
	public void setColorValue(String colorValue) {
		this.colorValue = colorValue;
	}
	public String getRecommand() {
		return recommand;
	}
	public void setRecommand(String recommand) {
		this.recommand = recommand;
	}
	public String getHitcount() {
		return hitcount;
	}
	public void setHitcount(String hitcount) {
		this.hitcount = hitcount;
	}
	
	
}
