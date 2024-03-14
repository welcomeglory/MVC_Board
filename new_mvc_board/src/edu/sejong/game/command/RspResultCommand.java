package edu.sejong.game.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sejong.game.vo.RspVO;

public class RspResultCommand implements RspCommand {

	@Override
	public void excuete(HttpServletRequest request, HttpServletResponse response) {
		//값을 받아옴
		String rsp = request.getParameter("rsp");
		System.out.println(rsp);
		
		RspVO computer =  new RspVO();
		RspVO  you = new RspVO(rsp);
		
		//전달
		request.setAttribute("computer", computer);
		request.setAttribute("you", you);		
	}
}
