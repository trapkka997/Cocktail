package sesoc.global.cocktail.vo;

public class User {
	private String userSeq;
	private String userId;
	private String userPw;
	private String userName;
	private String email;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String userSeq, String userId, String userPw, String userName, String email) {
		super();
		this.userSeq = userSeq;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.email = email;
	}
	public String getUserSeq() {
		return userSeq;
	}
	public void setUserSeq(String userSeq) {
		this.userSeq = userSeq;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "User [userSeq=" + userSeq + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
				+ ", email=" + email + "]";
	}
	
	
}
