package sesoc.global.cocktail.vo;

public class UserPhoto {
	private String userEmail;
	private String title;
	private String contents;
	private String saveFileName;
	private String originalFileName;
	private String writeDate;
	private String hitcount;
	private String likecount;
	private String cocktailName;
	public UserPhoto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserPhoto(String userEmail, String title, String contents, String saveFileName, String originalFileName,
			String writeDate, String hitcount, String likecount, String cocktailName) {
		super();
		this.userEmail = userEmail;
		this.title = title;
		this.contents = contents;
		this.saveFileName = saveFileName;
		this.originalFileName = originalFileName;
		this.writeDate = writeDate;
		this.hitcount = hitcount;
		this.likecount = likecount;
		this.cocktailName = cocktailName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getHitcount() {
		return hitcount;
	}
	public void setHitcount(String hitcount) {
		this.hitcount = hitcount;
	}
	public String getLikecount() {
		return likecount;
	}
	public void setLikecount(String likecount) {
		this.likecount = likecount;
	}
	public String getCocktailName() {
		return cocktailName;
	}
	public void setCocktailName(String cocktailName) {
		this.cocktailName = cocktailName;
	}
	@Override
	public String toString() {
		return "UserPhoto [userEmail=" + userEmail + ", title=" + title + ", contents=" + contents + ", saveFileName="
				+ saveFileName + ", originalFileName=" + originalFileName + ", writeDate=" + writeDate + ", hitcount="
				+ hitcount + ", likecount=" + likecount + ", cocktailName=" + cocktailName + "]";
	}
	
	

}
