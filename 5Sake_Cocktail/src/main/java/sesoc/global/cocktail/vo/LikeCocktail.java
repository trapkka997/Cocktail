package sesoc.global.cocktail.vo;

public class LikeCocktail {
	private String userEmail;
	private String cocktail_Seq;

	public LikeCocktail(String userEmail, String cocktail_Seq) {
		super();
		this.userEmail = userEmail;
		this.cocktail_Seq = cocktail_Seq;
	}

	public LikeCocktail() {
		super();
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getCocktail_Seq() {
		return cocktail_Seq;
	}

	public void setCocktail_Seq(String cocktail_Seq) {
		this.cocktail_Seq = cocktail_Seq;
	}

	@Override
	public String toString() {
		return "LlikeCocktail [userEmail=" + userEmail + ", cocktail_Seq=" + cocktail_Seq + "]";
	}

}
