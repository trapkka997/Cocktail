package sesoc.global.cocktail.vo;

public class WorldBest {
  private String cocktailName;
  private String imageRink;
  private String cocktailSeq;
  private String ingredient;
public WorldBest() {
	super();
	// TODO Auto-generated constructor stub
}
public WorldBest(String cocktailName, String imageRink, String cocktailSeq, String ingredient) {
	super();
	this.cocktailName = cocktailName;
	this.imageRink = imageRink;
	this.cocktailSeq = cocktailSeq;
	this.ingredient = ingredient;
}
public String getCocktailName() {
	return cocktailName;
}
public void setCocktailName(String cocktailName) {
	this.cocktailName = cocktailName;
}
public String getImageRink() {
	return imageRink;
}
public void setImageRink(String imageRink) {
	this.imageRink = imageRink;
}
public String getCocktailSeq() {
	return cocktailSeq;
}
public void setCocktailSeq(String cocktailSeq) {
	this.cocktailSeq = cocktailSeq;
}
public String getIngredient() {
	return ingredient;
}
public void setIngredient(String ingredient) {
	this.ingredient = ingredient;
}
@Override
public String toString() {
	return "WorldBest [cocktailName=" + cocktailName + ", imageRink=" + imageRink + ", cocktailSeq=" + cocktailSeq
			+ ", ingredient=" + ingredient + "]";
}
  
  
}
