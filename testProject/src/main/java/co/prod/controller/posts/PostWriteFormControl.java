package co.prod.controller.posts;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;

public class PostWriteFormControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.getRequestDispatcher("posts/postWriteForm.tiles").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
