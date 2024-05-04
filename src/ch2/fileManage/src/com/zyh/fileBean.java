package com.zyh;

public class fileBean {

	private String fileName;
	private String fileType;
	private String userName;
	private String userDate;
	private String userId;
	
	public fileBean() {
		super();
	}

	public fileBean(String fileName, String fileType, String userName, String userDate, String userId) {
		super();
		this.fileName = fileName;
		this.fileType = fileType;
		this.userName = userName;
		this.userDate = userDate;
		this.userId = userId;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserDate() {
		return userDate;
	}

	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
