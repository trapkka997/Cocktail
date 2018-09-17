package sesoc.global.cocktail.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.cocktail.vo.LikeCocktail;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserCocktail;
import sesoc.global.cocktail.vo.UserFollow;
import sesoc.global.cocktail.vo.UserLikeCocktail;
import sesoc.global.cocktail.vo.UserPhoto;
import sesoc.global.cocktail.vo.UserPhotoLike;

@Repository
public class userCocktailRepository {
	@Autowired
	SqlSession sqlSession;

	public int usercocktailInsert(UserCocktail vo) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.usercocktailInsert(vo);
	}

	public int usercocktailDelete(String usercocktailName) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.usercocktailDelete(usercocktailName);
	}

	public int usercocktailUpdate(UserCocktail vo) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.usercocktailUpdate(vo);
	}

	public ArrayList<UserCocktail> userselect() {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.userselect();

	}

	public UserCocktail userselectOne(String usercocktailseq) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.userselectOne(usercocktailseq);
	}

	// 조회수
	public int userhitcount(int usercocktailseq) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.userhitcount(usercocktailseq);
	}

	// 추천수(좋아요)
	public int userlike(int usercocktailseq) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.userlike(usercocktailseq);
	}

	// 유저가 팔로우 했을 때
	public int UserFollowInsert(UserFollow vo) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.UserFollowInsert(vo);
	}

	// 유저가 칵테일 좋아요 했을때
	public int LikeCocktailInsert(LikeCocktail vo) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.LikeCocktailInsert(vo);
	}

	// 유저가 유저끼리 만든 레시피에 좋아요 했을때
	public int UserLikeCocktailInsert(UserLikeCocktail vo) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.UserLikeCocktailInsert(vo);
	}

	// 유저가 라이브러리 사진에 좋아요 눌렀을때
	public int UserPhotoLikeInsert(UserPhotoLike vo) {
		userCocktailDAO dao = sqlSession.getMapper(userCocktailDAO.class);
		return dao.UserPhotoLikeInsert(vo);
	}
}
