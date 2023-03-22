package co.prod.service;

import java.util.List;

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

	@Override
	public String getUser(UsersVO vo) {

		return mapper.selectUser(vo);
	}

	@Override
	public UsersVO searchE(UsersVO vo) {
		System.out.println("ServiceImpl의 Email 값: " + vo);
		
		return mapper.searchEmail(vo);
	}

	@Override
	public UsersVO searchN(String userNickname) {
		// TODO Auto-generated method stub
		return mapper.searchName(userNickname);
	}
	
	// 정보수정용 리스트
	@Override
	public List<UsersVO> userList() {
		// TODO Auto-generated method stub
		return mapper.userList();
	}

	@Override
	public UsersVO getUserInfo(String userEmail) {
		// TODO Auto-generated method stub
		return mapper.selectUserd(userEmail);
	}
	

}
