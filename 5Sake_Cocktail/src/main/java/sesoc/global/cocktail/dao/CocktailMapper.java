package sesoc.global.cocktail.dao;

import java.util.ArrayList;

import sesoc.global.cocktail.vo.Cocktail;

public interface CocktailMapper {
		public int cocktailInsert(Cocktail vo); //등록
		public int cocktailDelete(String cocktailName); //삭제
		public int cocktailUpdate(Cocktail vo); //수정
		public ArrayList<Cocktail> select(); //전체목록
		public Cocktail selectOne(String cocktailName);
}
