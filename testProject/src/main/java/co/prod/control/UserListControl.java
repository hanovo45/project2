package co.prod.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.Service;
import co.prod.service.ServiceImpl;
import co.prod.vo.UsersVO;

public class UserListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		Service service = new ServiceImpl();
		List<UsersVO> list = service.userList();
		
		request.setAttribute("list", list);
		try {
			request.getRequestDispatcher("WEB-INF/views/login/userList.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
	}
}
