package sesoc.global.cocktail.vo;

public class User {
	private String userEmail;
	private String userPwd;
	private String userNickname;
	private String userAuthCode;
	private String userAuth;
	private String userProfilePicture;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String userEmail, String userPwd, String userNickname, String userAuthCode, String userAuth,
			String userProfilePicture) {
		super();
		this.userEmail = userEmail;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userAuthCode = userAuthCode;
		this.userAuth = userAuth;
		this.userProfilePicture = userProfilePicture;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
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
	public String getUserProfilePicture() {
		return userProfilePicture;
	}
	public void setUserProfilePicture(String userProfilePicture) {
		this.userProfilePicture = userProfilePicture;
	}
	@Override
	public String toString() {
		return "User [userEmail=" + userEmail + ", userPwd=" + userPwd + ", userNickname=" + userNickname
				+ ", userAuthCode=" + userAuthCode + ", userAuth=" + userAuth + ", userProfilePicture="
				+ userProfilePicture + "]";
	}
}
