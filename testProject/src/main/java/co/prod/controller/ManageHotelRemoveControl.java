package co.prod.controller;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.ManageHotelListService;
import co.prod.service.ManagerHotelListServiceImpl;

public class ManageHotelRemoveControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String hid = request.getParameter("hotelId");
		ManageHotelListService service = new ManagerHotelListServiceImpl();
		int r =service.RemoveHotel(hid);
		System.out.println(r);
		
		if(r>0) {
			System.out.println("삭제 성공");
			try {
				response.sendRedirect("manageHotelList.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			System.out.println("실패");
		}
	}

}
