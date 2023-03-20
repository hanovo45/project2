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

//		System.out.println(hiddenumail);		// input hidden의 value는 의미가 없어보임 뭐에쓰는거지. value에 ${user_password}? 
//		System.out.println("메일,히든");
		
		Service service = new ServiceImpl();
		UsersVO vo = new UsersVO();//vo에는 parameter로 넣어놨으니까 vo.equal(vo)형태라 틀려도 전혀 비교 안됨
		UsersVO user = new UsersVO();//비교 군으로 사용하려고 즉 얘로 조회하고 얘랑 vo를 비교//

//		vo = service.getUser(vo);
		vo.setUserEmail(umail);
		vo.setUserNickname(uname);
		System.out.println(vo);
		user=service.search(umail);
		System.out.println("--------");
		String passwd = service.getUser(vo);
		request.setAttribute("passwd", passwd);
		System.out.println(passwd); 	// 우선 null
		System.out.println("||||||||||||||");
		System.out.println(user);
		if(passwd!=null) {
			
		}else {
			
		}
//		request.setAttribute("result", vo);
		if(user!=null) {
		if(umail.equals(user.getUserEmail())&&uname.equals(user.getUserNickname())) {
			System.out.println("umail : " + umail);
			request.setAttribute("passwd", "비밀번호는 " + passwd +"입니다\\n로그인화면으로 돌아갑니다");
			try {
				request.getRequestDispatcher("WEB-INF/views/login/findpwResult.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				request.getRequestDispatcher("WEB-INF/views/login/findpw.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}else {
			System.out.println("조회된 유저가 없습니다.");
			try {
				request.getRequestDispatcher("WEB-INF/views/login/findpw.jsp").forward(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
