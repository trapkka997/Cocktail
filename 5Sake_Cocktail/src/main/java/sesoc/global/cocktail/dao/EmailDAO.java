package sesoc.global.cocktail.dao;

import sesoc.global.cocktail.vo.User;

public interface EmailDAO {

	void insertUser(User vo);

	void createAuthKey(User vo);

	void userAuth(User user);

	
}
