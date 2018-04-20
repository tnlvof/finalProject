package com.kh.fooding.store.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.store.model.service.StoreService;
import com.kh.fooding.store.model.vo.Sam;
import com.kh.fooding.store.model.vo.Store;

@Controller
public class StoreController {
	@Autowired
	private StoreService ss;
	
	@RequestMapping(value="storeInfo.st")
	public String storeInfo(Store s, Model model,
			@RequestParam(name="mainPhoto", required=false)MultipartFile photo,
			HttpServletRequest request) {
		System.out.println("controller : " + s);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";
		
		try {
			photo.transferTo(new File(filePath + "\\" + photo.getOriginalFilename()));
		} catch (IllegalStateException | IOException e1) {
			e1.printStackTrace();
		}
		
		
		ss.insertStoreInfo(s);
		
		
		return "main/main";
		
		
	}

	//open api 사용
	/*@RequestMapping(value = "searchResult.st")
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
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mv.setViewName("store/searchList");

		return mv;
	}*/

	@RequestMapping(value = "searchResult.st")
	public ModelAndView searchResult(@RequestParam("searchKey") String searchKey, ModelAndView mv) {
		
		System.out.println("controller sK : " + searchKey);
		
		ArrayList<Sam> sam = ss.searchResult(searchKey);
		
		mv.setViewName("store/searchList");
		
		return mv;
	}

}
