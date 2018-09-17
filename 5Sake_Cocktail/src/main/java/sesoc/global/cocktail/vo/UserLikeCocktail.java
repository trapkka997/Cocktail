<<<<<<< HEAD
package sesoc.global.cocktail.vo;

public class UserLikeCocktail {

	private String userEmail;
	private String userCocktailSeq;

	public UserLikeCocktail(String userEmail, String userCocktailSeq) {
		super();
		this.userEmail = userEmail;
		this.userCocktailSeq = userCocktailSeq;
	}

	public UserLikeCocktail() {
		super();
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserCocktailSeq() {
		return userCocktailSeq;
	}

	public void setUserCocktailSeq(String userCocktailSeq) {
		this.userCocktailSeq = userCocktailSeq;
	}

	@Override
	public String toString() {
		return "UserLikeCocktail [userEmail=" + userEmail + ", userCocktailSeq=" + userCocktailSeq + "]";
	}
}
=======
package sesoc.global.cocktail.vo;

public class UserLikeCocktail {
	private String userEmail;
	private String userCocktailSeq;
	public UserLikeCocktail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserLikeCocktail(String userEmail, String userCocktailSeq) {
		super();
		this.userEmail = userEmail;
		this.userCocktailSeq = userCocktailSeq;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserCocktailSeq() {
		return userCocktailSeq;
	}
	public void setUserCocktailSeq(String userCocktailSeq) {
		this.userCocktailSeq = userCocktailSeq;
	}
	@Override
	public String toString() {
		return "UserLikeCocktail [userEmail=" + userEmail + ", userCocktailSeq=" + userCocktailSeq + "]";
	}
	
	

}
>>>>>>> branch 'master' of https://github.com/trapkka997/Cocktail
