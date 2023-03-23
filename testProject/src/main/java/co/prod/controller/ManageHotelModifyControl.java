package co.prod.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.ManageHotelListService;
import co.prod.service.ManagerHotelListServiceImpl;
import co.prod.vo.HotelsVO;

public class ManageHotelModifyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String hotelPhoto = request.getParameter("hotelPhoto");
		String hotelId = request.getParameter("hotelId");
		String hotelLocation = request.getParameter("hotelLocation");
		String hotelName = request.getParameter("hotelName");
		String hotelTel=request.getParameter("hotelTel");
		String hotelService = request.getParameter("hotelService");
		String hotelView = request.getParameter("hotelView");
		String hotelAddress=request.getParameter("hotelAddress");
		
		
		HotelsVO hotel = new HotelsVO();
		hotel.setHotelPhoto(hotelPhoto);
		hotel.setHotelId(hotelId);
		hotel.setHotelLocation(hotelLocation);;
		hotel.setHotelName(hotelName);
		hotel.setHotelTel(hotelTel);
		hotel.setHotelService(hotelService);
		hotel.setHotelView(hotelView);
		hotel.setHotelAddress(hotelAddress);
	
		System.out.println(hotel);
		ManageHotelListService service = new ManagerHotelListServiceImpl();
		if(service.modifyHotel(hotel)>0) {
			System.out.println("수정 성공");
		}
		try {
			response.sendRedirect("manageHotelList.do");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
