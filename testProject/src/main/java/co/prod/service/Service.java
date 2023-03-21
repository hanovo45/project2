package co.prod.service;

import org.springframework.beans.factory.annotation.Autowired;

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
	public UsersVO searchE(UsersVO vo);
	
	public UsersVO searchN(String userNickname);
//	이메일 
	
	public AjaxService(UsersVO vo);
	
	public int checkId(String id);
	// 중복체크?
	
	public class AjaxService {
	    
	    private MemberDao memberDao;
	    
	    @Autowired
	    public AjaxService(MemberDao memberDao) {
	        this.memberDao = memberDao;
	    }
	 
	    public int checkId(String id) {
	        int result = 0;
	        
	        result = memberDao.checkId(id);
	        return result;
	    }
	    
	 
	 
	}
	
}
