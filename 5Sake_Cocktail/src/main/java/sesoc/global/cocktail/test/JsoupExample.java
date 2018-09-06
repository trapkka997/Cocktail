package sesoc.global.cocktail.test;

import java.io.IOException;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

import org.jsoup.Jsoup;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.jsoup.nodes.Element;

public class JsoupExample {
	public String getImage(String url) throws Exception {
		Document doc= Jsoup.connect(url).get();
		Element table = doc.select("script").get(3);
		//System.out.println(table.getAllElements());
		String data = table.dataNodes().get(0).getWholeData();
		String newData = data.substring(21, data.length()-1);
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(newData);
		JSONObject jsonObj = (JSONObject)obj;

		JSONObject code = (JSONObject) jsonObj.get("entry_data");
		ArrayList<JSONObject> postPage = (ArrayList<JSONObject>)code.get("PostPage");
		JSONObject graphql = (JSONObject) postPage.get(0).get("graphql");
		JSONObject shortcode_media = (JSONObject) graphql.get("shortcode_media");
		String display_url = (String) shortcode_media.get("display_url");
		return display_url;
	}
	
}
