package co.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.ManageHotelListService;
import co.prod.service.ManagerHotelListServiceImpl;
import co.prod.vo.HotelsVO;

public class ManageHotelAddControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String hotelId = request.getParameter("hotelId");
		String hotelLocation = request.getParameter("hotelLocation");
		String hotelName = request.getParameter("hotelName");
		String hotelTel = request.getParameter("hotelTel");
		String hotelService = request.getParameter("hotelService");
		String hotelView = request.getParameter("hotelView");
		String hotelAddress = request.getParameter("hotelAddress");
		String hotelPhoto = request.getParameter("hotelPhoto");
		String hotelCheckIn = request.getParameter("hotelCheckIn");
		String hotelCheckOut = request.getParameter("hotelCheckOut");


		
		
		
		System.out.println("test");
		HotelsVO vo = new HotelsVO();
		vo.setHotelId(hotelId);
		vo.setHotelLocation(hotelLocation);
		vo.setHotelName(hotelName);
		vo.setHotelTel(hotelTel);
		vo.setHotelService(hotelService);
		vo.setHotelView(hotelView);
		vo.setHotelAddress(hotelAddress);
		vo.setHotelPhoto(hotelPhoto);
		vo.setHotelCheckIn(hotelCheckIn);
		vo.setHotelCheckOut(hotelCheckOut);
		
		ManageHotelListService service = new ManagerHotelListServiceImpl();
		
		if(service.addHotel(vo)) {
			List<HotelsVO> list = service.getHotelList();
			
			request.setAttribute("list", list);
			try {
				request.getRequestDispatcher("manageHotelList.do").forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}
//			else {
//			request.getRequestDispatcher("WEB-INF/book/bookAddForm.jsp").forward(request, response);
//		}

	}

}
