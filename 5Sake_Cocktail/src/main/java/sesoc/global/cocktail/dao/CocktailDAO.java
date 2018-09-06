package sesoc.global.cocktail.dao;

import java.util.List;

import sesoc.global.cocktail.vo.Cocktail;

public interface CocktailDAO {

	public List<Cocktail> getCocktailList();

	public Cocktail selectCocktail(String cocktailname);

	public List<Cocktail> getCocktailByColor(String colorName);

}
