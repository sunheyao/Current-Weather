package util;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;




public class JsonUtilImpl implements JsonUtil{
	public List<String> getData(String json) {
 
		
		
		ArrayList<String>  lists = new ArrayList<String>();
		JsonParser jsonParser = new JsonParser();//json to paeser
	if(json.length()>1) {
		JsonObject object=(JsonObject) jsonParser.parse(json);  //creat JsonObject
		JsonArray WeaArray=object.getAsJsonArray("weather");//get json array
		JsonObject weather = WeaArray.get(0).getAsJsonObject();
		JsonObject dweather = weather.getAsJsonObject();
		JsonObject mainObj=object.getAsJsonObject("main");
		JsonObject winObj=object.getAsJsonObject("wind");
		
		lists.add(dweather.get("description").getAsString());
		lists.add(mainObj.get("temp").getAsString());
		lists.add(winObj.get("speed").getAsString());
		lists.add(mainObj.get("feels_like").getAsString());
	}
		return lists;
		
	}
}
