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

public class MainPageListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// 페이지 재지정.
		//인규 작업중. 메인페이지 업로드를 위해 작업중. 중복작업 금지 0315
		//인규 작업중. 메인페이지 업로드를 위해 작업중. 중복작업 금지 0315
		HotelFilterService service = new HotelFilterServiceImpl();
		
		List<HotelsVO> list = service.getHotelList();
		for(int i=0; i<list.size(); i++) {
			HotelsVO testVO = list.get(i);
			testVO.setHotelPhoto((list.get(i).getHotelPhoto().split("\\+"))[0]);
			testVO.setHotelView((list.get(i).getHotelView().split("\\+"))[0]);
			list.set(i, testVO);
		}
		
		for(HotelsVO i : list) {
			System.out.println("Photo의 값은 1개 이여야 합니다: "+i);
		}
		request.setAttribute("hotelList", list);
//		"main_page/main_page.tiles"
//		"WEB-INF/views/main_page/main_page.jsp"
		
		String path = "main_page/main_page.tiles";
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
