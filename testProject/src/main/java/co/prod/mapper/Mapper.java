package co.prod.mapper;

import java.util.List;

import co.prod.vo.UsersVO;

public interface Mapper {

	
	// 로그인
	public UsersVO login(UsersVO vo);
	
	// 회원가입
	public int insertUser(UsersVO vo);
	
	// 비밀번호 찾기
	public String selectUser(UsersVO vo);
	public UsersVO searchEmail(UsersVO vo);
	public UsersVO searchName(String userName);

	// 수정용 유저조회기능
	public List<UsersVO> userList();
	public UsersVO selectUserd(String userEmail);

	// 유저 수정
	public int updateUser(UsersVO vo);
	// 유저 삭제
	public int deleteUser(String umail);
}
