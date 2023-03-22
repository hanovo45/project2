package co.prod.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.Service;
import co.prod.service.ServiceImpl;

public class MyPageFormControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
//		String path = "test/test.tiles";
//		try {
//			request.getRequestDispatcher(path).forward(request, response);
//		} catch (ServletException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		Service service = new ServiceImpl();
		String umail = request.getParameter("umail");
		
		request.setAttribute("info", service.getUserInfo(umail));
		
		
		try {
			request.getRequestDispatcher("mypage/mypage.tiles").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
