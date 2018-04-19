package com.kh.fooding.store.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	/*
	 * @Autowired private StoreService ss;
	 */

	@RequestMapping(value = "searchResult.st")
	public ModelAndView searchResult(@RequestParam("searchKey") String searchKey, ModelAndView mv) {

		try {
			System.out.println("controller sK : " + searchKey);
			
			String key = URLEncoder.encode(searchKey, "UTF-8");
			String seoul = URLEncoder.encode("서울", "UTF-8");
			String apiURL = "http://api.dbstore.or.kr:8880/foodncafe/json/FoodShopSrch.do?sido="+ seoul +"&foodNM=" +key;
			URL url = new URL(apiURL);
			String conkey = "NDkyLTE1MjQxMjc2OTc1MTgtMTM2ZDBkZDQtYjYxYi00MjI2LWFkMGQtZDRiNjFiYTIyNjAy";
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("x-waple-authorization", conkey);
			
			 int responseCode = con.getResponseCode();
		        BufferedReader br;
		        if(responseCode==200) { // 정상 호출
		            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		        } else {  // 에러 발생
		            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		        }
		        String inputLine;
		        StringBuffer response = new StringBuffer();
		        while ((inputLine = br.readLine()) != null) {
		            response.append(inputLine);
		        }
		        br.close();
		        System.out.println(response.toString());
			
		} catch (ProtocolException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.setViewName("store/searchList");

		return mv;
	}

}
