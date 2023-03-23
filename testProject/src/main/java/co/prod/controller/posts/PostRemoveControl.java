package co.prod.controller.posts;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.PostsService;
import co.prod.service.PostsServiceImpl;
import co.prod.service.Service;
import co.prod.vo.PostsVO;

public class PostRemoveControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String temp = request.getParameter("pid");
		try {
			if (temp != null) {
				int pid = Integer.parseInt(temp);
				new PostsServiceImpl().postRemove(pid);
				response.sendRedirect("postList.do");
			} else {
				response.sendRedirect("postList.do");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
