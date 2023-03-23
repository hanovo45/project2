package co.prod.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.control.FindPwControl;
import co.prod.control.FindPwFormControl;
import co.prod.control.LoginControl;
import co.prod.control.LoginFormControl;
import co.prod.control.LogoutControl;
import co.prod.control.MyPageFormControl;
import co.prod.control.SignUpControl;
import co.prod.control.SignUpFormControl;
import co.prod.control.UserListControl;
import co.prod.control.UserModifyControl;
import co.prod.control.UserRemovoControl;
import co.prod.controller.EventpageControl;
import co.prod.controller.MainPageListControl;
import co.prod.controller.ManageHotelAddControl;
//import co.prod.controller.ManageHotelAddControl;
import co.prod.controller.ManageHotelListControl;
import co.prod.controller.ManageHotelModifyControl;
import co.prod.controller.ManageHotelRemoveControl;
//import co.prod.controller.ManageHotelModifyControl;
//import co.prod.controller.TestControl;
import co.prod.controller.TestControl;
import co.prod.controller.posts.PostListAjaxControl;
import co.prod.controller.hotelInfoForm;
import co.prod.controller.purchasePageForm;
import co.prod.controller.posts.PostListControl;
import co.prod.controller.posts.PostModifyControl;
import co.prod.controller.posts.PostRemoveControl;
import co.prod.controller.posts.PostWriteAjaxControl;
import co.prod.controller.posts.PostWriteControl;
import co.prod.controller.posts.PostWriteFormControl;
import co.prod.controller.posts.ViewPostControl;

public class FrontController extends HttpServlet{
	// url패턴과 실행 컨트롤러 등록.
	// url - controller : map 등록.
	Map<String, Control> map = new HashMap<>();
	String enc;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		enc = config.getInitParameter("encoding");
		map.put("/test.do", new TestControl()); // 삭제
		//메인페이지 및 호텔INFO [INKYU]
		map.put("/mainpage.do", new MainPageListControl());
		map.put("/hotelInfoForm.do", new hotelInfoForm());
		map.put("/purchasePageForm.do", new purchasePageForm());
		
		map.put("/postList.do", new PostListControl());			// 공지사항
		map.put("/login.do", new LoginControl());	// 로그인 등록처리
		map.put("/loginForm.do", new LoginFormControl());	// 로그인 등록화면
		map.put("/logout.do", new LogoutControl());	// 로그아웃
		map.put("/findPwForm.do", new FindPwFormControl()); 	// 비밀번호 찾기화면
		map.put("/findPw.do", new FindPwControl());	// 비밀번호 찾기 처리
		map.put("/signUp.do", new SignUpControl());	// 회원가입처리
		map.put("/signUpForm.do", new SignUpFormControl());	//회원가입화면
		map.put("/userList.do", new UserListControl());  	// 리스트
		map.put("/myPageForm.do", new MyPageFormControl());	// -> 마이페이지인데 정보수정으로 가게
		map.put("/userModify.do", new UserModifyControl());	// 유저 정보 수정
		map.put("/userRemovo.do", new UserRemovoControl());	// 유저 탈퇴
		map.put("/manageHotelList.do", new ManageHotelListControl()); //관리자페이지 홈
		map.put("/viewPost.do", new ViewPostControl());
		map.put("/postWriteForm.do", new PostWriteFormControl());
		map.put("/postWrite.do", new PostWriteAjaxControl());
		map.put("/postWriteNotAjax.do", new PostWriteControl());
		map.put("/postListAjax.do", new PostListAjaxControl());
		map.put("/postRemove.do", new PostRemoveControl());
		map.put("/postModify.do", new PostModifyControl());
		map.put("/manageHotelAdd.do", new ManageHotelAddControl());
		map.put("/manageHotelRemove.do", new ManageHotelRemoveControl());
		map.put("/manageHotelModify.do", new ManageHotelModifyControl());
		map.put("/eventpage.do", new EventpageControl());
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(enc);
		// url - control 매칭.
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());
		System.out.println(path);
		
		Control sub = map.get(path);
		sub.execute(req, resp);
	}
}
