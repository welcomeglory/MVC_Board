package edu.sejong.game.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface RspCommand {

	void excuete(HttpServletRequest request, HttpServletResponse response);

}
