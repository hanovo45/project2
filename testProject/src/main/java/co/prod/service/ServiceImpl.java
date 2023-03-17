package co.prod.service;

import org.apache.ibatis.session.SqlSession;

import co.prod.common.DataSource;
import co.prod.mapper.Mapper;
import co.prod.vo.UsersVO;

public class ServiceImpl implements Service {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private Mapper mapper = sqlSession.getMapper(Mapper.class);
	
	// 로그인
	@Override
	public UsersVO login(UsersVO vo) {
		
		return mapper.login(vo);
	}

	// 회원가입
	@Override
	public boolean addUser(UsersVO vo) {
		
		return mapper.insertUser(vo) == 1;
	}

}
