package co.prod.service;

import java.util.List;

import co.prod.vo.UsersVO;

public interface Service {

	// 로그인
	public UsersVO login(UsersVO vo);
	
	// 회원가입
	public boolean addUser(UsersVO vo);
	
	// 로그아웃 ??
	
	// 파라미터 값
	public String getUser(UsersVO vo);
	public UsersVO searchE(UsersVO vo);
	public UsersVO searchN(String userNickname);
	
	// 정보수정용 리스트
	public List<UsersVO> userList();
	
	// 정보수정에서 유저조회
	public UsersVO getUserInfo(String userEmail);
	
}
