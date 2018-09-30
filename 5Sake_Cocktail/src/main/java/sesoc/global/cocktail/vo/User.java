package sesoc.global.cocktail.vo;

public class User {
	private String userEmail;
	private String userPwd;
	private String userNickname;
	private String userAuthCode;
	private String userAuth;
	private String userProfilePicture;
	private String originalFilename;
	private String savedFilename;
	private String userSentence;
	private String userInsta;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String userEmail, String userPwd, String userNickname, String userAuthCode, String userAuth,
			String userProfilePicture, String originalFilename, String savedFilename, String userSentence,
			String userInsta) {
		super();
		this.userEmail = userEmail;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userAuthCode = userAuthCode;
		this.userAuth = userAuth;
		this.userProfilePicture = userProfilePicture;
		this.originalFilename = originalFilename;
		this.savedFilename = savedFilename;
		this.userSentence = userSentence;
		this.userInsta = userInsta;
	}
	@Override
	public String toString() {
		return "User [userEmail=" + userEmail + ", userPwd=" + userPwd + ", userNickname=" + userNickname
				+ ", userAuthCode=" + userAuthCode + ", userAuth=" + userAuth + ", userProfilePicture="
				+ userProfilePicture + ", originalFilename=" + originalFilename + ", savedFilename=" + savedFilename
				+ ", userSentence=" + userSentence + ", userInsta=" + userInsta + "]";
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
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getSavedFilename() {
		return savedFilename;
	}
	public void setSavedFilename(String savedFilename) {
		this.savedFilename = savedFilename;
	}
	public String getUserSentence() {
		return userSentence;
	}
	public void setUserSentence(String userSentence) {
		this.userSentence = userSentence;
	}
	public String getUserInsta() {
		return userInsta;
	}
	public void setUserInsta(String userInsta) {
		this.userInsta = userInsta;
	}
	
	
	
}
