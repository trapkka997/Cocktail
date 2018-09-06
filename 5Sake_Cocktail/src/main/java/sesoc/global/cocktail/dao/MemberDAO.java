package sesoc.global.cocktail.dao;

import java.util.List;

import sesoc.global.cocktail.vo.User;
import sesoc.global.cocktail.vo.UserPhoto;

public interface MemberDAO {

	public int insertMember(User vo); 
	public User selectOne(User vo);
	public List<User> selectAll();
	public List<UserPhoto> selectUserPhoto(User vo);
	public List<UserPhoto> selectAllUserPhoto();	
}
