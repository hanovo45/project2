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
	public static PageDTO pageInfoF = null;
	public static PageDTO pageInfoN = null;
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
		//Q
		int pageQ = (request.getParameter("pageQ") != null)?Integer.parseInt(request.getParameter("pageQ")):1;
		int totalQ = service.getTotalCount("Q");
		pageInfoQ = new PageDTO(pageQ, totalQ);
		request.setAttribute("pageQ", pageInfoQ);
		
		Map<String, Object> map = new HashMap<>();
		map.put("type", "Q");
		map.put("page", pageQ);
		List<PostsVO> ListQ = service.postListPaging(map);
		request.setAttribute("questions", ListQ);
		
		//F
		int pageF = (request.getParameter("pageF") != null)?Integer.parseInt(request.getParameter("pageF")):1;
		int totalF = service.getTotalCount("F");
		pageInfoF = new PageDTO(pageF, totalF);
		request.setAttribute("pageF", pageInfoF);
		
		map.put("type", "F");
		map.put("page", pageF);
		List<PostsVO> ListF = service.postListPaging(map);
		request.setAttribute("faqs", ListF);
		
		//N
		int pageN = (request.getParameter("pageN") != null)?Integer.parseInt(request.getParameter("pageN")):1;
		int totalN = service.getTotalCount("N");
		pageInfoN = new PageDTO(pageN, totalN);
		request.setAttribute("pageN", pageInfoN);
		
		map.put("type", "N");
		map.put("page", pageN);
		List<PostsVO> ListN = service.postListPaging(map);
		request.setAttribute("notices", ListN);
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
