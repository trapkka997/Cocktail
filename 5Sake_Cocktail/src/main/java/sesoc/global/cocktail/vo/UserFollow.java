<<<<<<< HEAD
package sesoc.global.cocktail.vo;

public class UserFollow {

	private String userEmail;
	private String followUserEmail;

	public UserFollow(String userEmail, String followUserEmail) {
		super();
		this.userEmail = userEmail;
		this.followUserEmail = followUserEmail;
	}

	public UserFollow() {
		super();
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getFollowUserEmail() {
		return followUserEmail;
	}

	public void setFollowUserEmail(String followUserEmail) {
		this.followUserEmail = followUserEmail;
	}

	@Override
	public String toString() {
		return "UserFollow [userEmail=" + userEmail + ", followUserEmail=" + followUserEmail + "]";
	}

}
=======
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
>>>>>>> branch 'master' of https://github.com/trapkka997/Cocktail
