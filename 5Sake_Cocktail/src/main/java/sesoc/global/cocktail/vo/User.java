package sesoc.global.cocktail.vo;

public class User {
	private String useremail; 
	private String usernickname;
	private String userpwd;
	public User() {
		super();
	}
	public User(String useremail, String usernickname, String userpwd) {
		super();
		this.useremail = useremail;
		this.usernickname = usernickname;
		this.userpwd = userpwd;
	}
	
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUsernickname() {
		return usernickname;
	}
	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	
	@Override
	public String toString() {
		return "User [useremail=" + useremail + ", usernickname=" + usernickname + ", userpwd=" + userpwd + "]";
	}
}
