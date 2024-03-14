package edu.sejong.game.vo;

import java.util.Arrays;

public class RspVO {
	private String rsp =  null;
	private static String[] arrRsp= {"가위","바위","보"};
	
	//컴퓨터 객체 생성
	public RspVO() {
		rsp = arrRsp[(int)(Math.random()*3)];//0~2번호 생성
	}
	
	//user 객체 생성
	public RspVO(String rsp) {
		this.rsp=rsp;
	}
	
	public String getRsp() {
		return rsp;
	}

	public void setRsp(String rsp) {
		this.rsp = rsp;
	}
	
	public String getResult(RspVO you) {
		
		String result = "비겼습니다.";
		
		 if(this.rsp.equals(you.getRsp())) {
	         return result;
	      }
	      
	      if(this.rsp.equals("가위") && you.getRsp().equals("바위") ) {
	         result = "당신이 이겼습니다.";
	      }else if(this.rsp.equals("가위") && you.getRsp().equals("보") ) {
	         result = "당신이 졌습니다.";
	      }else if(this.rsp.equals("바위") && you.getRsp().equals("보") ) {
	         result = "당신이 이겼습니다.";
	      }else if(this.rsp.equals("바위") && you.getRsp().equals("가위") ) {
	         result = "당신이 졌습니다";
	      }else if(this.rsp.equals("보") && you.getRsp().equals("가위") ) {
	         result = "당신이 이겼습니다.";
	      }else if(this.rsp.equals("보") && you.getRsp().equals("바위") ) {
	         result = "당신이 졌습니다";
	      }   	         
	      return result;
	   }	
}
