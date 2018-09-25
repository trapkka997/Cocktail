package sesoc.global.cocktail.dao;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;

import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.Ingredient;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserCocktail;

public interface CocktailDAO {

	public List<Cocktail> getCocktailList();

	public Cocktail selectCocktail(String cocktailSeq);

	public List<Cocktail> getCocktailByColor(String colorName);

	public List<UserCocktail> selectUserCocktail(User vo);

	public List<Cocktail> getRecommandCocktailList();

	public int recommandCocktail(String cocktailSeq);

	public List<Ingredient> getIngredientByAlcole();

	public List<Ingredient> getIngredientByFruit();

	public List<Ingredient> getIngredientByLiqueur();

	public List<Ingredient> getIngredientByMaterial();

	public List<HashMap<String,BigDecimal>> getIngredientOfCocktail(HashMap<String, String> map);

}
