package edu.sejong.game.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sejong.game.command.board.BoardModifyCommand;
import edu.sejong.game.command.board.BoardDeleteCommand;
import edu.sejong.game.command.board.BoardListCommand;
import edu.sejong.game.command.board.Command;

@WebServlet("/board/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("doGet() .. ");
      actionDo(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("doPost() .. ");
      actionDo(request, response);
   }
   
   private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("actionDo() .. ");
      
      request.setCharacterEncoding("UTF-8");
      
      String viewPage = null;
      Command command = null;
      
      String uri = request.getRequestURI();
      String conPath = request.getContextPath();
      String commandDo = uri.substring(conPath.length());
      
      System.out.println("uri : " + uri);
      System.out.println("conPath : " + conPath);
      System.out.println("commandDo : " + commandDo);
      
      if(commandDo.equals("/board/list.do")) {
         
         command = new BoardListCommand();
         command.excuete(request, response);
         
         viewPage = "/board_list.jsp";
      } else if (commandDo.equals("/board/delete.do")) {
		    // 게시글 삭제를 처리하는 BDeleteCommand 객체 생성
		    command = new BoardDeleteCommand();
	         command.excuete(request, response);
		    viewPage = "/board/list.do";
		} else if (commandDo.equals("/board/modify.do")) {
		    // 게시글 수정을 처리하는 BModifyCommand 객체 생성
		    command = new BoardModifyCommand();
	         command.excuete(request, response);
		    viewPage = "/board/list.do";
		}
      
      RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
      dispatcher.forward(request, response);
      
   }
}
