package co.prod.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;

public class TestControl implements Control{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// 페이지 재지정.
				String path = "test/test.tiles";
				try {
					request.getRequestDispatcher(path).forward(request, response);
				} catch (ServletException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}

}
