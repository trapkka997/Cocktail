package sesoc.global.cocktail.dao;

import java.util.ArrayList;

import sesoc.global.cocktail.vo.LikeCocktail;
import sesoc.global.cocktail.vo.UserCocktail;
import sesoc.global.cocktail.vo.UserFollow;
import sesoc.global.cocktail.vo.UserLikeCocktail;
import sesoc.global.cocktail.vo.UserPhotoLike;

public interface userCocktailDAO {

		public int usercocktailInsert(UserCocktail vo); //등록
		public int usercocktailDelete(String usercocktailName); //삭제
		public int usercocktailUpdate(UserCocktail vo); //수정
		public ArrayList<UserCocktail> userselect(); //전체목록
		public UserCocktail userselectOne(String usercocktailseq);

		//조회수
		public int userhitcount(int usercocktailseq);
		//추천수(좋아요)
		public int userlike(int usercocktailseq);
		
		//유저가 팔로우 했을 때
		public int UserFollowInsert(UserFollow vo); 
		//유저가 칵테일 좋아요 했을때
		public int LikeCocktailInsert(LikeCocktail vo); 
		//유저가 유저끼리 만든 레시피에 좋아요 했을때
		public int UserLikeCocktailInsert(UserLikeCocktail vo); 
		//유저가 라이브러리 사진에 좋아요 눌렀을때
		public int UserPhotoLikeInsert(UserPhotoLike vo);
		public ArrayList<UserCocktail> usermyselect(String userEmail); 
		

}
