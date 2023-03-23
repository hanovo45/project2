package co.prod.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.Service;
import co.prod.service.ServiceImpl;
import co.prod.vo.UsersVO;

public class SignUpControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		UsersVO vo = new UsersVO();
		vo.setUserEmail(request.getParameter("umail"));
		vo.setUserPassword(request.getParameter("upw"));
		vo.setUserNickname(request.getParameter("uname"));
		
		System.out.println(vo);
		boolean result = new ServiceImpl().addUser(vo);
	
		if(result) {
		
			try {
				request.setAttribute("msg", "회원가입을 축하합니다\\n 가입축하금 5000원이 지급되었습니다");
				request.getRequestDispatcher("mainpage.do").forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}else {
			request.getRequestDispatcher("signUpForm.do");
		}
	}

}
