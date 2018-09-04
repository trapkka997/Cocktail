package sesoc.global.cocktail.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.cocktail.vo.User;
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

}
