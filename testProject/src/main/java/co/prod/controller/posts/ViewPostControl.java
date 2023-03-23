package co.prod.controller.posts;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PostsVO;

public class ViewPostControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		PostsVO vo = new PostsServiceImpl().getPost(Integer.parseInt(request.getParameter("pid")));
		request.setAttribute("post", vo);
		PostsVO postResponse = new PostsServiceImpl().getPostResponse(vo.getPostId());
		request.setAttribute("postResponse", postResponse);
		try {
			request.getRequestDispatcher("posts/post.tiles").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
