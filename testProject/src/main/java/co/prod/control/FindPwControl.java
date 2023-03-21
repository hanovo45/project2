package co.prod.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.prod.common.Control;
import co.prod.service.Service;
import co.prod.service.ServiceImpl;
import co.prod.vo.UsersVO;

public class FindPwControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String umail = request.getParameter("umail");
		String uname = request.getParameter("uname");
		
//		String hiddenumail = request.getParameter("hiddenumail");
		
		System.out.println(umail);
		System.out.println(uname);
		
		Service service = new ServiceImpl();
		UsersVO vo = new UsersVO();//vo에는 parameter로 넣어놨으니까 vo.equal(vo)형태라 틀려도 전혀 비교 안됨
		UsersVO user = new UsersVO();//비교 군으로 사용하려고 즉 얘로 조회하고 얘랑 vo를 비교//
		UsersVO user2 = new UsersVO();//비교 군으로 사용하려고 즉 얘로 조회하고 얘랑 vo를 비교//

//		vo = service.getUser(vo);
		vo.setUserEmail(umail);
		vo.setUserNickname(uname);
		
		user=service.searchE(vo);
//		user2=service.searchN(uname);

		
		String passwd = service.getUser(vo);
		request.setAttribute("passwd", passwd);
		
		System.out.println(passwd); 	// 우선 null
		System.out.println(user);
//		if(passwd!=null) {
//			
//		}else {
//			
//		}				패쓰
//		request.setAttribute("result", vo);
		
		if(user!=null) {	
		
		
			if(umail.equals(user.getUserEmail())&&uname.equals(user.getUserNickname())) {
				
			System.out.println("umail : " + umail);
			request.setAttribute("passwdResult", "비밀번호는 " + passwd +"입니다\\n로그인화면으로 돌아갑니다");
			request.setAttribute("url", "WEB-INF/views/login/findpwResult.jsp");
			
			try {
				request.getRequestDispatcher("loginForm.do").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(uname.equals(user.getUserNickname())||umail.equals(user.getUserEmail())){
			
			request.setAttribute("msg", "닉네임이 일치하지 않습니다");
			request.setAttribute("url", "WEB-INF/views/login/findpw.jsp");
//			try {
//				response.sendRedirect("findPwForm.do");
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} 
			try {        // 새로고침ㅅ
				System.out.println();
				request.getRequestDispatcher("findPwForm.do").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}else {
			request.setAttribute("msg", "등록된 회원이 아닙니다\\n회원가입이 필요합니다");
			request.setAttribute("url", "WEB-INF/views/login/findpw.jsp");
			
			try {
				request.getRequestDispatcher("signUpForm.do").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

}
}
