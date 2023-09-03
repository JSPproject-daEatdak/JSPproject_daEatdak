package com.daeatdak.board.dto;

public class BoardDTO {
	
	private int boardNum;
	private String boardName;
	private String boardContent;
	private String boardDate;
	private int boardCount;
	private String boardPassword;
	private int boardLock;
	private int userNum;
	
	//기본생성자 
	public BoardDTO() {
		
	}
	//메소드
	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public String getBoardPassword() {
		return boardPassword;
	}

	public void setBoardPassword(String boardPassword) {
		this.boardPassword = boardPassword;
	}

	public int getBoardLock() {
		return boardLock;
	}

	public void setBoardLock(int boardLock) {
		this.boardLock = boardLock;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [boardNum=" + boardNum + ", boardName=" + boardName + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", boardCount=" + boardCount + ", boardPassword=" + boardPassword
				+ ", boardLock=" + boardLock + ", userNum=" + userNum + "]";
	}
	
	
	
	
	
	
}
