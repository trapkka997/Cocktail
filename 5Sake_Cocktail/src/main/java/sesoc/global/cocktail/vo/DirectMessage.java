package sesoc.global.cocktail.vo;

public class DirectMessage {
	private String userEmail;
	private String toUserEmail;
	private String message;
	public DirectMessage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DirectMessage(String userEmail, String toUserEmail, String message) {
		super();
		this.userEmail = userEmail;
		this.toUserEmail = toUserEmail;
		this.message = message;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getToUserEmail() {
		return toUserEmail;
	}
	public void setToUserEmail(String toUserEmail) {
		this.toUserEmail = toUserEmail;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "DirectMessage [userEmail=" + userEmail + ", toUserEmail=" + toUserEmail + ", message=" + message + "]";
	}
	
	
}
