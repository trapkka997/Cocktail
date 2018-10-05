package sesoc.global.cocktail.vo;

public class UserPhotoLike {
	private String userEmail;
	private String userPhotoSeq;
	public UserPhotoLike() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserPhotoLike(String userEmail, String userPhotoSeq) {
		super();
		this.userEmail = userEmail;
		this.userPhotoSeq = userPhotoSeq;
	}
	@Override
	public String toString() {
		return "UserLikePhoto [userEmail=" + userEmail + ", userPhotoSeq=" + userPhotoSeq + "]";
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
	
	
}
