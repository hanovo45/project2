package co.prod.service;

import co.prod.vo.UsersVO;

public interface Service {

	// 로그인
	public UsersVO login(UsersVO vo);
	
	// 회원가입
	public boolean addUser(UsersVO vo);
	
	// 로그아웃 ??
	
	// 파라미터 값
	public String getUser(UsersVO vo);
	
	// 
	public UsersVO search(String userEmail);
	
//	이메일 
}
