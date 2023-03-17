package co.prod.control;

import java.io.IOException;

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
		session.setAttribute("email", vo.getUserEmail());
		
		try {
			response.sendRedirect("test.do");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
//		String userEmail;
//		String userPassword;
//		String userAuth;
//		String userNickname;
//		String userCoupon;
//		String userLikelist;
	}

}
