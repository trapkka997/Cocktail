package sesoc.global.cocktail.dao;

import java.util.ArrayList;

import sesoc.global.cocktail.vo.Cocktail2;

public interface CocktailMapper {

		public int cocktailInsert(Cocktail2 vo); //등록
		public int cocktailDelete(String cocktailName); //삭제
		public int cocktailUpdate(Cocktail2 vo); //수정
		public ArrayList<Cocktail2> select(); //전체목록
		public Cocktail2 selectOne(String cocktailName);
}
