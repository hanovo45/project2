package co.prod.controller.posts;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.prod.common.Control;
import co.prod.service.PostsService;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PostsVO;

public class PostWriteControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		PostsVO vo = new PostsVO();
		vo.setPostType(request.getParameter("type"));
		vo.setPostTitle(request.getParameter("title"));
		vo.setPostContent(request.getParameter("content"));
		vo.setUserEmail(request.getParameter("email"));
		PostsService service = new PostsServiceImpl();
		boolean result = service.writePost(vo);
		Map<String, Object> map = new HashMap<>();
		Gson gson = new GsonBuilder().create();
		String json = "";
		if (result) {
			map.put("retCode", "Success");
			map.put("post", vo);
		}else {
			map.put("retCode", "Fail");
			map.put("post", null);
		}
		json = gson.toJson(map);
		response.setContentType("text/json;charset=utf-8");
		try {
			response.getWriter().append(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
