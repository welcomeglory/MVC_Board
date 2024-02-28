package edu.sejong.ex.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sejong.ex.dao.BDao;
import edu.sejong.ex.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BDao dao = new BDao();
		List<BDto> boards = dao.list();
		
		request.setAttribute("boards", boards);
		
	}	

}
