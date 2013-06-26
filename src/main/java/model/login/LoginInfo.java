package model.login;

import java.io.Serializable;

public class LoginInfo implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Boolean isLogin;
	private String userName;
	public Boolean getIsLogin() {
		return isLogin;
	}
	public void setIsLogin(Boolean isLogin) {
		this.isLogin = isLogin;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

}
