package co.prod.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;

public class purchasePageForm implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		

//		"main_page/hotel_info.tiles"
//		"WEB-INF/views/main_page/hotel_info.jsp"
		System.out.println("작동됨 ");
		String path = "main_page/purchase_page.tiles";
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
