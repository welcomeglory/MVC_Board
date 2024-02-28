package edu.sejong.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sejong.ex.command.BCommand;
import edu.sejong.ex.dao.BDao;
import edu.sejong.ex.dto.BDto;

public class BContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//http://localhost:8282/jsp_hjs_board/content_view.do?bid=21		
		String bid = request.getParameter("bid");
		
		BDao dao = new BDao();
		
		BDto board = dao.contentView(bid);
		
		request.setAttribute("content_view", board);

	}

}
