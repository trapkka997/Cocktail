package sesoc.global.cocktail.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.DirectMessage;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserFollow;
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
	public List<UserPhoto> selectAllUserPhoto(Map<String,String> map) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		
		return dao.selectAllUserPhoto(map);
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
	public List<User> viewFollow(String userEmail) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.viewFollow(userEmail);
	}
	public List<User> viewFollower(String userEmail) {
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
	public String getUserFollowerNum(User vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.getUserFollowerNum(vo);
	}
	public UserFollow getUserFollow(UserFollow vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.getUserFollow(vo);
	}
	public int insertUserFollow(UserFollow vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.insertUserFollow(vo);
	}
	public List<Cocktail> selectAllUserLikeCocktail(String userEmail) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.selectAllUserLikeCocktail(userEmail);
		
	}
	public List<UserPhoto> selectAllUserLikePhoto(String userEmail) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.selectAllUserLikePhoto(userEmail);
	}
	public int updateUser(User vo) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.updateUser(vo);
	}
}

