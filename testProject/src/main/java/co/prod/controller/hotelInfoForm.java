package co.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.HotelFilterService;
import co.prod.service.HotelFilterServiceImpl;
import co.prod.vo.HotelsVO;

public class hotelInfoForm implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String hotelId = request.getParameter("hotel-id");
		System.out.println(hotelId + "데이터를 출력해줄 단일id파라메터");
		HotelFilterService service = new HotelFilterServiceImpl();
		
		HotelsVO hotelInfo = service.getHotelInfo(hotelId);
		System.out.println(hotelInfo);
		String[] hotelPhotoList = (hotelInfo.getHotelPhoto().split("\\+"));
				
		request.setAttribute("hotelInfo", hotelInfo);
		request.setAttribute("hotelPhoto", hotelPhotoList);
//		"main_page/hotel_info.tiles"
//		"WEB-INF/views/main_page/hotel_info.jsp"
		
		String path = "WEB-INF/views/main_page/hotel_info.jsp";
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
