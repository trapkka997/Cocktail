package sesoc.global.cocktail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.cocktail.vo.Cocktail;
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
	
	

}
