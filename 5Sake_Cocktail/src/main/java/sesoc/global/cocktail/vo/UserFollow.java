package sesoc.global.cocktail.vo;

public class UserFollow {
	private String userEmail;
	private String followUser;
	@Override
	public String toString() {
		return "UserFollow [userEmail=" + userEmail + ", followUser=" + followUser + "]";
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getFollowUser() {
		return followUser;
	}
	public void setFollowUser(String followUser) {
		this.followUser = followUser;
	}
	public UserFollow() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserFollow(String userEmail, String followUser) {
		super();
		this.userEmail = userEmail;
		this.followUser = followUser;
	}
	
}
