package co.prod.control;

import java.io.IOException;

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
				response.sendRedirect("test.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.getRequestDispatcher("signUpForm.do");
		}
	}

}
