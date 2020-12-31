package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import util.NetUtilImpl;
import util.JsonUtilImpl;


 
@Controller
public class MyController {
	
	NetUtilImpl netUtilImpl = new NetUtilImpl();
	JsonUtilImpl jsonUtilImpl = new JsonUtilImpl();
 
    @RequestMapping("/weatherSer")
    @ResponseBody
    public Map<String,String>  showMessage(@RequestParam(value = "city", required = false, defaultValue = "Spring") String name) throws IOException {
 
    	Map<String, String> map = new HashMap<String,String>();
    	System.out.println("before mv"+name);
    	
		String url = "http://api.openweathermap.org/data/2.5/weather?q="+name+"&appid=8f046bdc3838e6b489a20d5225eba357";
		String data = netUtilImpl.getJson(url);
		List<String> lists = jsonUtilImpl.getData(data);
		System.out.println("lists  "+lists);
		double tem=Double.parseDouble(lists.get(1))- 273.15;
		double fTem=Double.parseDouble(lists.get(3))- 273.15;
		map.put("wea", lists.get(0));
    	map.put("tem", String.format("%.1f", tem) +"°„C");
    	map.put("wind", lists.get(2)+"km/h");
    	map.put("feelTem", String.format("%.1f", fTem) +"°„C");

        return map;
    }
}