package co.prod.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.Service;
import co.prod.service.ServiceImpl;
import co.prod.vo.UsersVO;

public class FindPwControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String umail = request.getParameter("umail");
//		String uname = request.getParameter("uname");
		
		String hiddenumail = request.getParameter("hiddenumail");
		
		System.out.println(umail);
		System.out.println(hiddenumail);		// input hidden의 value는 의미가 없어보임 뭔지모르겠따. value에 ${user_password}? 
		System.out.println("메일,히든");
		
		Service service = new ServiceImpl();
		UsersVO vo = service.getUser(Integer.parseInt(umail));
		System.out.println(vo);
		request.setAttribute("result", vo);
		     
		if(umail.equals(vo)) {
			// ㅠ.......................제발
		}
		
		
		try {
			request.getRequestDispatcher("WEB-INF/views/login/findpwResult.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		MemberDao dao = new MemberDao();
//		 String member_mid = dao.findId(member_name, member_phone); //아이디를 디비에서 가져옴..실패시 널
//		 
//		%>
//
//		  <form name="idsearch" method="post">
//		      <%
//		       if (member_mid != null) {
//		      %>
//		      
//		      <div class = "container">
//		      	<div class = "found-success">
//			      <h4>  회원님의 아이디는 </h4>  
//			      <div class ="found-id"><%=member_mid%></div>
//			      <h4>  입니다 </h4>
//			     </div>
//			     <div class = "found-login">
//		 		    <input type="button" id="btnLogin" value="로그인" onClick = 'login()'/>
//		       	</div>
//		       </div>
//		      <%
//		  } else {
//		 %>
//		        <div class = "container">
//		      	<div class = "found-fail">
//			      <h4>  등록된 정보가 없습니다 </h4>  
//			     </div>
//			     <div class = "found-login">
//		 		    <input type="button" id="btnback" value="다시 찾기" onClick="history.back()"/>
//		 		    <input type="button" id="btnjoin" value="회원가입" onClick="joinin()"/>
//		       	</div>
//		       </div>
//		       
//		    <div class = "adcontainer">
//			<a href="#" ><img src = "../images/casead.png" /></a>                
//		</div>   
//		       <%
//		  }
//		 %> 
//		      </form>
	}

}
