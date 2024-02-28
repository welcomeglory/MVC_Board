package edu.sejong.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sejong.ex.dao.BDao;
import edu.sejong.ex.dto.BDto;

public class BDeleteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//http://localhost:8282/jsp_hjs_board/delete.do?bid=22
        String bid = request.getParameter("bid");

        BDao dao = new BDao();
		
		dao.delete(Integer.valueOf(bid));
		

	}

}
