package sesoc.global.cocktail.test;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class JsoupExample2 {//	public static void main(String...arg) throws Exception {
//		JsoupExample2 main = new JsoupExample2();
//		main.getImg();
//	}
	public ArrayList<String> getImg() throws Exception {
		ArrayList<String> urlList = new ArrayList<String>();
		Document doc= Jsoup.connect("https://www.instagram.com/cocktails/").get();
		Element table = doc.select("script").get(3);
		String data = table.dataNodes().get(0).getWholeData();
		String newData = data.substring(21, data.length()-1);
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(newData);
		JSONObject jsonObj = (JSONObject)obj;
		JSONObject code = (JSONObject) jsonObj.get("entry_data");
		ArrayList<JSONObject> profilePage = (ArrayList<JSONObject>)code.get("ProfilePage");
		JSONObject graphql = (JSONObject) profilePage.get(0).get("graphql");
		JSONObject user = (JSONObject) graphql.get("user");
		String username = (String) user.get("username");
		JSONObject edge_owner_to_timeline_media = (JSONObject) user.get("edge_owner_to_timeline_media");
		ArrayList<JSONObject> edges = (ArrayList<JSONObject>) edge_owner_to_timeline_media.get("edges");
		for(JSONObject object : edges) {
			JSONObject node = (JSONObject) object.get("node");
			String shortcode = (String) node.get("shortcode");
			urlList.add("https://www.instagram.com/p/"+shortcode+"/?taken-by="+username);
		}
//		for(String url : urlList) {
//			JsoupExample js = new JsoupExample();
//			System.out.println(js.getImage(url));
//		}
		return urlList;
	}
}
