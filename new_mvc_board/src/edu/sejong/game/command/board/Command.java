package edu.sejong.game.command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {


	void excuete(HttpServletRequest request, HttpServletResponse response);




}
