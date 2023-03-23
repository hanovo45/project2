package co.prod.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.Service;
import co.prod.service.ServiceImpl;

public class UserRemovoControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String umail = request.getParameter("userEMAIL");
		
		Service service = new ServiceImpl();
		
		int r = service.removoUser(umail);
		System.out.println("r은 : " + r);
		
		if(r>0) {
			System.out.println("삭제 성공");
			request.getSession().setAttribute("email", null);
			request.setAttribute("msg", "회원 탈퇴되었습니다");
		}
		try {
			request.getRequestDispatcher("mainpage.do").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
