package sesoc.global.cocktail.dao;

import java.util.List;
import java.util.Map;

import sesoc.global.cocktail.vo.Cocktail;
import sesoc.global.cocktail.vo.DirectMessage;
import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserFollow;
import sesoc.global.cocktail.vo.UserLikeCocktail;
import sesoc.global.cocktail.vo.UserPhoto;

public interface MemberDAO {

	public int insertMember(User vo); 
	public User selectOne(User vo);
	public List<User> selectAll();
	public List<UserPhoto> selectUserPhoto(User vo);
	public List<UserPhoto> selectAllUserPhoto(Map<String,String> map);	
	public int writeBoard(UserPhoto vo);
	public String getUserFollowNum(User vo);
	public String selectUserPhotoNum(User vo);
	public List<DirectMessage>  selectDirectMessage(DirectMessage vo);
	public int writeMessage(DirectMessage vo);
	public List<User> viewFollow(String userEmail);
	public List<User> viewFollower(String userEmail);
	public List<UserPhoto> getRecommandUserPhotoList();
	public int insertUserLikeCocktail(UserLikeCocktail userLikeCocktail);
	public UserLikeCocktail selectUserLikeCocktail(UserLikeCocktail userLikeCocktail);
	public int updateProfilePicture(User vo);
	public String getUserFollowerNum(User vo);
	public UserFollow getUserFollow(UserFollow vo);
	public int insertUserFollow(UserFollow vo);
	public List<Cocktail> selectAllUserLikeCocktail(String userEmail);
	public List<UserPhoto> selectAllUserLikePhoto(String userEmail);
	public int updateUser(User vo);
}
