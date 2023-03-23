package co.prod.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;

import co.prod.common.Control;
import co.prod.service.Service;
import co.prod.service.ServiceImpl;
import co.prod.vo.UsersVO;

public class UserModifyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String userPassword = request.getParameter("userPassword");
		String userNickName = request.getParameter("userNickname");
		String userEmail = (String) request.getSession().getAttribute("email");
		UsersVO user = new UsersVO();
		user.setUserPassword(userPassword);
		user.setUserNickname(userNickName);
		user.setUserEmail(userEmail);
		System.out.println(user);
		
		Service service = new ServiceImpl();
		
		HttpSession session = request.getSession();
		
		if(service.modifyUser(user)>0) {
			
			UsersVO vo = service.login(user);
			
			session.setAttribute("email", vo.getUserEmail());			
			System.out.println( vo.getUserEmail());
			session.setAttribute("pw", vo.getUserPassword());
			System.out.println(vo.getUserPassword());
			session.setAttribute("auth", vo.getUserAuth());
			System.out.println(vo.getUserAuth());
			session.setAttribute("userVO", vo);
			
			request.setAttribute("msg", "수정 완료");
			try {
				request.getRequestDispatcher("myPageForm.do").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		

}
}
	
