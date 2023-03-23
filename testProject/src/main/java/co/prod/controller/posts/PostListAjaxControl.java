package co.prod.controller.posts;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.prod.common.Control;
import co.prod.service.PostsService;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PageDTO;
import co.prod.vo.PostsVO;

public class PostListAjaxControl implements Control {
	public static PageDTO pageInfo = null;
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		PostsService service = new PostsServiceImpl();
		int page = (request.getParameter("page") != null)?Integer.parseInt(request.getParameter("page")):1;
		String qfn = request.getParameter("QFN");
		int total = service.getTotalCount(qfn);
		pageInfo = new PageDTO(page, total);
		request.setAttribute("pageQ", pageInfo);
		List<PostsVO> list = null;
		Map<String, Object> map2 = new HashMap<>();
		map2.put("page", page);
		switch (qfn) {
		case "Q":
			map2.put("type", "Q");
			list = service.postListPaging(map2);
			break;
		case "N":
			map2.put("type", "N");
			list = service.postListPaging(map2);
			break;
		case "F":
			map2.put("type", "F");
			list = service.postListPaging(map2);
			break;
		}
		Map<String, Object> map = new HashMap<>();
		Gson gson = new GsonBuilder().create();
		String json = "";
		map.put("list", list);
		json = gson.toJson(map);
		response.setContentType("text/json;charset=utf-8");
		try {
			response.getWriter().append(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
