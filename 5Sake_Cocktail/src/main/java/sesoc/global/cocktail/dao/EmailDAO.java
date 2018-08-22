package sesoc.global.cocktail.dao;

import sesoc.global.cocktail.vo.User;

public interface EmailDAO {

	public int insertUser(User vo);

	void createAuthKey(User vo);

	void userAuth(User user);

	
}
