package co.prod.controller.posts;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.PostsService;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PostsVO;

public class PostModifyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String temp = request.getParameter("pid");
		System.out.println(temp);
		try {
			if (temp != null) {
				int pid = Integer.parseInt(temp);
				PostsService service = new PostsServiceImpl();
				String title = request.getParameter("modTitle");
				String content = request.getParameter("modContent");
				PostsVO vo = new PostsVO();
				vo.setPostId(pid);
				vo.setPostTitle(title);
				vo.setPostContent(content);
				System.out.println(vo);
				service.postModify(vo);
				response.sendRedirect("viewPost.do?pid="+pid);
			} else {
				response.sendRedirect("postList.do");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
