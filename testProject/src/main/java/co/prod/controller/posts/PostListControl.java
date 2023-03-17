package co.prod.controller.posts;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.vo.PageDTO;
import co.prod.common.Control;
import co.prod.service.PostsService;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PostsVO;

public class PostListControl implements Control {
	public static PageDTO pageInfoQ = null;
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//질문, 공지, 자주묻는질문 각각 리스트로 가져와서
		PostsService service = new PostsServiceImpl();
//		List<PostsVO> list = service.getPostsQuestion();
//		List<PostsVO> list2 = service.getPostsNotice();
//		List<PostsVO> list3 = service.getPostsFAQ();
		//아래 어트리뷰트에 담음
//		request.setAttribute("questions", list);
//		request.setAttribute("notices", list2);
//		request.setAttribute("faqs", list3);
		
		//페이징
		int page = (request.getParameter("pageQ") != null)?Integer.parseInt(request.getParameter("pageQ")):1;
		int totalQ = service.getTotalCount("Q");
		pageInfoQ = new PageDTO(page, totalQ);
		request.setAttribute("pageQ", pageInfoQ);
		
		Map<String, Object> map = new HashMap<>();
		map.put("type", "Q");
		map.put("page", page);
		System.out.println(map);
		List<PostsVO> tempList = service.postListPaging(map);
		request.setAttribute("questions", tempList);
		//글쓰기 ajax에 필요한 ID 
		int nextId = service.getPostId();
		request.setAttribute("postNextId", nextId);
		try {
			request.getRequestDispatcher("posts/postsList.tiles").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
