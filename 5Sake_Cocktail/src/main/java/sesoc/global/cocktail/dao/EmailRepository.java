package sesoc.global.cocktail.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.cocktail.controller.HomeController;
import sesoc.global.cocktail.vo.User;

@Repository
public class EmailRepository {
	@Autowired SqlSession sqlSession;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private static final String namespace = "emailMapper";
	public void insertUser(User vo) throws Exception {
		// TODO Auto-generated method stub

		logger.info("dao "+vo);
		System.out.println("DAO 로그 : 회원가입 중");
		EmailDAO dao = sqlSession.getMapper(EmailDAO.class);
		dao.insertUser(vo);
//			System.out.println(vo.toString());
	}

	public void createAuthKey(String user_email, String user_authCode) throws Exception {
		// TODO Auto-generated method stub
		User vo = new User();
		vo.setUserAuthCode(user_authCode);
		vo.setUserEmail(user_email);
		EmailDAO dao = sqlSession.getMapper(EmailDAO.class);
		dao.createAuthKey(vo);
	}
	
	public void userAuth(User user) throws Exception {
		// TODO Auto-generated method stub
		EmailDAO dao = sqlSession.getMapper(EmailDAO.class);
		dao.userAuth(user);
	}

	
}
