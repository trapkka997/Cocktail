package sesoc.global.cocktail.vo;

public class User {
	private String userEmail;
	private String userPassword;
	private String userAuthCode;
	private String userAuth;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String userEmail, String userPassword, String userAuthCode, String userAuth) {
		super();
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userAuthCode = userAuthCode;
		this.userAuth = userAuth;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserAuthCode() {
		return userAuthCode;
	}
	public void setUserAuthCode(String userAuthCode) {
		this.userAuthCode = userAuthCode;
	}
	public String getUserAuth() {
		return userAuth;
	}
	public void setUserAuth(String userAuth) {
		this.userAuth = userAuth;
	}
	@Override
	public String toString() {
		return "User [userEmail=" + userEmail + ", userPassword=" + userPassword + ", userAuthCode=" + userAuthCode
				+ ", userAuth=" + userAuth + "]";
	}
	
	
	
	
}
