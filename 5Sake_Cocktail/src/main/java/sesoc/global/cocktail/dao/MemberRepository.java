package sesoc.global.cocktail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.cocktail.vo.DirectMessage;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserLikeCocktail;
import sesoc.global.cocktail.vo.UserPhoto;

@Repository
public class MemberRepository {
	@Autowired SqlSession sqlSession;

	public User selectOne(User vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.selectOne(vo);
	}
	public List<UserPhoto> selectUserPhoto(User vo) {
		MemberDAO dao =sqlSession.getMapper(MemberDAO.class);
		return dao.selectUserPhoto(vo);
	}
	public List<UserPhoto> selectAllUserPhoto() {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		return dao.selectAllUserPhoto();
	}
	
	public int writeBoard(UserPhoto vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.writeBoard(vo);
	}
	public String getUserFollowNum(User vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.getUserFollowNum(vo);
	}
	public String selectUserPhotoNum(User vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.selectUserPhotoNum(vo);
	}
	public List<DirectMessage> selectDirectMessage(DirectMessage vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.selectDirectMessage(vo);
	}
	public int writeMessage(DirectMessage vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.writeMessage(vo);
	}
	public List<String> viewFollow(String userEmail) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.viewFollow(userEmail);
	}
	public List<String> viewFollower(String userEmail) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.viewFollower(userEmail);	
	}
	public List<UserPhoto> getRecommandUserPhotoList() {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.getRecommandUserPhotoList();	
	}
	public int insertUserLikeCocktail(UserLikeCocktail userLikeCocktail) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.insertUserLikeCocktail(userLikeCocktail);	
		
	}
	public UserLikeCocktail selectUserLikeCocktail(UserLikeCocktail userLikeCocktail) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.selectUserLikeCocktail(userLikeCocktail);	
	}
	public int updateProfilePicture(User vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.updateProfilePicture(vo);
	}
}

