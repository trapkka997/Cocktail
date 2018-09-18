package sesoc.global.cocktail.vo;

public class UserPhotoLike {

	private String userEmail;
	private String userPhotoSeq;

	public UserPhotoLike(String userEmail, String userPhotoSeq) {
		super();
		this.userEmail = userEmail;
		this.userPhotoSeq = userPhotoSeq;
	}

	public UserPhotoLike() {
		super();
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhotoSeq() {
		return userPhotoSeq;
	}

	public void setUserPhotoSeq(String userPhotoSeq) {
		this.userPhotoSeq = userPhotoSeq;
	}

	@Override
	public String toString() {
		return "UserPhotoLike [userEmail=" + userEmail + ", userPhotoSeq=" + userPhotoSeq + "]";
	}

}
