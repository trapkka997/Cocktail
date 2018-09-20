package sesoc.global.cocktail.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.Ingredient;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserCocktail;

@Repository
public class CocktailRepository {
	@Autowired SqlSession sqlSession;

	public List<Cocktail> getCocktailList() {
		List<Cocktail> result = null;
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		result = dao.getCocktailList();
		return result;
	}

	public Cocktail selectCocktail(String cocktailname) {
		Cocktail result = null;
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		result = dao.selectCocktail(cocktailname);
		return result;
	}

	public List<Cocktail> getCocktailByColor(String colorName) {
		List<Cocktail> result = null;
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		result = dao.getCocktailByColor(colorName);
		return result;
	}

	public List<UserCocktail> selectUserCocktail(User vo) {
		List<UserCocktail> result = null;
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		result = dao.selectUserCocktail(vo);
		return result;
	}

	public List<Cocktail> getRecommandCocktailList() {
		List<Cocktail> result = null;
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		result = dao.getRecommandCocktailList();
		return result;
	}

	public int recommandCocktail(String cocktailSeq) {
		int result = 0;
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		result = dao.recommandCocktail(cocktailSeq);
		return result;
	}

	public List<Ingredient> getIngredientByAlcole() {
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		return dao.getIngredientByAlcole();
	}

	public List<Ingredient> getIngredientByFruit() {
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		return dao.getIngredientByFruit();
	}

	public List<Ingredient> getIngredientByLiqueur() {
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		return dao.getIngredientByLiqueur();
	}

	public List<Ingredient> getIngredientByMaterial() {
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		return dao.getIngredientByMaterial();
	}

	public List<Cocktail> getIngredientOfCocktail(HashMap<String, String> map) {
		CocktailDAO dao = sqlSession.getMapper(CocktailDAO.class);
		return dao.getIngredientOfCocktail(map);
	}
	
	

}
