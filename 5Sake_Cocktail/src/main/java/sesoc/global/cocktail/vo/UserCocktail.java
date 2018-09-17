package sesoc.global.cocktail.vo;

public class UserCocktail {

	private String userCocktailSeq;
	private String useremail;
	private String usercocktailname;
	private String usercocktailname_en;
	private String userIngredient;
	private String userreceipe;
	private String savefilename;
	private String originalfilename;
	private String usercolorvalue;
	private int userhitcount;
	private int userrecommand;

	public UserCocktail(String userCocktailSeq, String useremail, String usercocktailname, String usercocktailname_en,
			String userIngredient, String userreceipe, String savefilename, String originalfilename,
			String usercolorvalue, int userhitcount, int userrecommand) {
		super();
		this.userCocktailSeq = userCocktailSeq;
		this.useremail = useremail;
		this.usercocktailname = usercocktailname;
		this.usercocktailname_en = usercocktailname_en;
		this.userIngredient = userIngredient;
		this.userreceipe = userreceipe;
		this.savefilename = savefilename;
		this.originalfilename = originalfilename;
		this.usercolorvalue = usercolorvalue;
		this.userhitcount = userhitcount;
		this.userrecommand = userrecommand;
	}

	public UserCocktail() {
		super();
	}

	public String getUserCocktailSeq() {
		return userCocktailSeq;
	}

	public void setUserCocktailSeq(String userCocktailSeq) {
		this.userCocktailSeq = userCocktailSeq;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUsercocktailname() {
		return usercocktailname;
	}

	public void setUsercocktailname(String usercocktailname) {
		this.usercocktailname = usercocktailname;
	}

	public String getUsercocktailname_en() {
		return usercocktailname_en;
	}

	public void setUsercocktailname_en(String usercocktailname_en) {
		this.usercocktailname_en = usercocktailname_en;
	}

	public String getUserIngredient() {
		return userIngredient;
	}

	public void setUserIngredient(String userIngredient) {
		this.userIngredient = userIngredient;
	}

	public String getUserreceipe() {
		return userreceipe;
	}

	public void setUserreceipe(String userreceipe) {
		this.userreceipe = userreceipe;
	}

	public String getSavefilename() {
		return savefilename;
	}

	public void setSavefilename(String savefilename) {
		this.savefilename = savefilename;
	}

	public String getOriginalfilename() {
		return originalfilename;
	}

	public void setOriginalfilename(String originalfilename) {
		this.originalfilename = originalfilename;
	}

	public String getUsercolorvalue() {
		return usercolorvalue;
	}

	public void setUsercolorvalue(String usercolorvalue) {
		this.usercolorvalue = usercolorvalue;
	}

	public int getUserhitcount() {
		return userhitcount;
	}

	public void setUserhitcount(int userhitcount) {
		this.userhitcount = userhitcount;
	}

	public int getUserrecommand() {
		return userrecommand;
	}

	public void setUserrecommand(int userrecommand) {
		this.userrecommand = userrecommand;
	}

	@Override
	public String toString() {
		return "UserCocktail [userCocktailSeq=" + userCocktailSeq + ", useremail=" + useremail + ", usercocktailname="
				+ usercocktailname + ", usercocktailname_en=" + usercocktailname_en + ", userIngredient="
				+ userIngredient + ", userreceipe=" + userreceipe + ", savefilename=" + savefilename
				+ ", originalfilename=" + originalfilename + ", usercolorvalue=" + usercolorvalue + ", userhitcount="
				+ userhitcount + ", userrecommand=" + userrecommand + "]";
	}

}
