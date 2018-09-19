package sesoc.global.cocktail.vo;

public class Ingredient {
	private String ingredientSeq;
	private String ingredient;
	private String classify;
	public Ingredient() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ingredient(String ingredientSeq, String ingredient, String classify) {
		super();
		this.ingredientSeq = ingredientSeq;
		this.ingredient = ingredient;
		this.classify = classify;
	}
	public String getIngredientSeq() {
		return ingredientSeq;
	}
	public void setIngredientSeq(String ingredientSeq) {
		this.ingredientSeq = ingredientSeq;
	}
	public String getIngredient() {
		return ingredient;
	}
	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	@Override
	public String toString() {
		return "Ingredient [ingredientSeq=" + ingredientSeq + ", ingredient=" + ingredient + ", classify=" + classify
				+ "]";
	}
	
	
	
}
