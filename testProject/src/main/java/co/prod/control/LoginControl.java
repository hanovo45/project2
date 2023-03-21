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

public class LoginControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mail = request.getParameter("umail");
		String pw = request.getParameter("upw");
		
		Service service = new ServiceImpl();
		UsersVO vo = new UsersVO();
		vo.setUserEmail(mail);	
		vo.setUserPassword(pw);
		System.out.println(vo);
		
		vo = service.login(vo);
		System.out.println(vo);
		
		HttpSession session = request.getSession();
		
		if(vo!=null) {
			
			session.setAttribute("email", vo.getUserEmail());			
			System.out.println( vo.getUserEmail());
			session.setAttribute("pw", vo.getUserPassword());
			System.out.println(vo.getUserPassword());
			session.setAttribute("auth", vo.getUserAuth());
			System.out.println(vo.getUserAuth());
			try {
				response.sendRedirect("test.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			
//			System.out.println("실패");
			request.setAttribute("msg", "이메일이나 비밀번호가 일치하지 않습니다");
			request.setAttribute("url", "WEB-INF/views/login/login.jsp");
			try {
				request.getRequestDispatcher("loginForm.do").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			return 
		}
		
		
//		String userEmail;
//		String userPassword;
//		String userAuth;
//		String userNickname;
//		String userCoupon;
//		String userLikelist;
	}

}
