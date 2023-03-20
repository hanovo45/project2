package co.prod.mapper;

import co.prod.vo.UsersVO;

public interface Mapper {

	// 로그인
	public UsersVO login(UsersVO vo);
	
	// 회원가입
	public int insertUser(UsersVO vo);
	
	// 비밀번호 찾기
	public String selectUser(UsersVO vo);
	
	public UsersVO searchUser(String userEmail);
}
