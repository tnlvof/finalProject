package com.kh.fooding.store.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.member.model.vo.Member;
import com.kh.fooding.store.model.service.StoreService;
import com.kh.fooding.store.model.vo.Sam;
import com.kh.fooding.store.model.vo.Store;

@Controller
public class StoreController {
	@Autowired
	private StoreService ss;
 
	
	@RequestMapping(value="storeInfo.st")
	public String storeInfo(Store s, Model model,
			@RequestParam(name="Photo", required=false)MultipartFile photo,
			HttpServletRequest request ,HttpSession session) {

		
		System.out.println("controller : " + s);
		
		Member m = (Member) session.getAttribute("loginUser");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String filePath = root + "\\uploadFiles";
		s.setMainPhoto(filePath);
		s.setMid(m.getMid());
		
		System.out.println(photo);
		try {	
			photo.transferTo(new File(filePath + "\\" + photo.getOriginalFilename()));
		} catch (IllegalStateException | IOException e1) {
			e1.printStackTrace();
		}
		ss.insertStoreInfo(s);

		return "main/main";
		
		
	}

	// open api 사용
	/*
	 * @RequestMapping(value = "searchResult.st") public ModelAndView
	 * searchResult(@RequestParam("searchKey") String searchKey, ModelAndView mv) {
	 * 
	 * try { System.out.println("controller sK : " + searchKey);
	 * 
	 * String key = URLEncoder.encode(searchKey, "UTF-8"); String seoul =
	 * URLEncoder.encode("서울", "UTF-8"); String apiURL =
	 * "http://api.dbstore.or.kr:8880/foodncafe/json/FoodShopSrch.do?sido="+ seoul
	 * +"&foodNM=" +key; URL url = new URL(apiURL); String conkey =
	 * "NDkyLTE1MjQxMjc2OTc1MTgtMTM2ZDBkZDQtYjYxYi00MjI2LWFkMGQtZDRiNjFiYTIyNjAy";
	 * HttpURLConnection con = (HttpURLConnection) url.openConnection();
	 * con.setRequestMethod("GET"); con.setRequestProperty("x-waple-authorization",
	 * conkey);
	 * 
	 * int responseCode = con.getResponseCode(); BufferedReader br;
	 * if(responseCode==200) { // 정상 호출 br = new BufferedReader(new
	 * InputStreamReader(con.getInputStream())); } else { // 에러 발생 br = new
	 * BufferedReader(new InputStreamReader(con.getErrorStream())); } String
	 * inputLine; StringBuffer response = new StringBuffer(); while ((inputLine =
	 * br.readLine()) != null) { response.append(inputLine); } br.close();
	 * System.out.println(response.toString());
	 * 
	 * } catch (ProtocolException e) { e.printStackTrace(); } catch
	 * (MalformedURLException e) { e.printStackTrace(); } catch (IOException e) {
	 * e.printStackTrace(); }
	 * 
	 * mv.setViewName("store/searchList");
	 * 
	 * return mv; }
	 */

	@RequestMapping(value = "searchResult.st", method = RequestMethod.GET)
	public ModelAndView searchResult(/*@RequestParam("searchKey") String searchKey,*/ ModelAndView mv, HttpServletRequest request/*,*/
			/*@RequestParam("currentPage") String requestCp*/) {
		String searchKey = request.getParameter("searchKey");
		
		System.out.println("controller sK : " + searchKey);
		
		// 페이징처리

		int currentPage;
		int limit;
		int maxPage;
		int startPage;
		int endPage;

		currentPage = 1;

		limit = 12;

		if(request.getParameter("currentPage") != null ){
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		int listCount = ss.getListCount(searchKey);
		
		maxPage = (int) ((double) listCount / limit + 0.9);

		startPage = ((int) ((double) (currentPage / limit + 0.9) - 1) * limit + 1);

		endPage = startPage + limit - 1;

		if (maxPage < endPage) {
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);

		ArrayList<Sam> sam = ss.searchResult(pi,searchKey);

		int samSize = sam.size();

		request.setAttribute("searchKey",searchKey);
		mv.addObject("pi",pi);
		mv.addObject("samSize", samSize);
		mv.addObject("sam", sam);
		mv.setViewName("store/searchList");

		return mv;
	}
	
	@RequestMapping(value="goDetail.st")
	public String goDatail(HttpServletRequest request) {
		
		String restName = request.getParameter("restName");
		
		System.out.println("controller restName = " + restName);
		
		Sam s = ss.selectOneSam(restName);
		
		request.setAttribute("s", s);
		
		
		
		return "store/detail";
	}
	
	//가게 조회 
	@RequestMapping(value="selectAllStores.st", method = RequestMethod.POST)
	public ModelAndView selectAllStores(ModelAndView mv) {
		
		ArrayList<Store> storeList = ss.selectAllStores();
		
		System.out.println("storeList : " + storeList);
		
		mv.addObject("storeList", storeList);
		
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	//테마 식당 더 보기
	@RequestMapping(value="moreThemeRest.st")
	public String showMoreThemeRest() {
		
		return "store/themeRest";
	}
	
	
	//테마 식당 추천
	@RequestMapping(value="themeRest.st", method=RequestMethod.GET)
	public ModelAndView selectThemeRest(ModelAndView mv, HttpServletRequest request) {
		// query 종류 - kor, izakaya, meat, chinese, pizza 
		String query = request.getParameter("type");
		System.out.println(query);
		
		//페이지 헤더에 넣을 이미지 주소, 문구 지정
		/*String imgName = "";
		String phrase = "";
		
		switch(query) {
		case "kor" : imgName = "resources/images/main/korfood.png"; phrase = "한국인의 자랑스러운 맛 <br><br> 푸딩이 선정한  한식 맛집입니다."; break;
		case "japanese" :imgName = "resources/images/main/recomd03.jpg"; phrase="안주 종결자 이자카야 <br><br> 술맛은 똑같지만 안주와 분위기는 다릅니다."; break;		
		case "chinese" : imgName="resources/images/main/chinese.jpg"; phrase = "바삭한 탕수육과 불맛을 제대로 느낄 수 있는 중국식당을 소개합니다.";break;
		case "western" : imgName="resources/images/main/pizza.jpg" ; phrase="흉내낼 수 없는 셰프의 피자를 맛보세요 <br><br> 이탈리아를 그대로 가져온 것 같은 피제리아 "; break;
 		}
		
		ArrayList<String> forHeaderList = new ArrayList();
		
		forHeaderList.add(imgName);
		forHeaderList.add(phrase);
		*/
		
		
		// 테마 식당 가져오기
		ArrayList<Store> themeList = ss.selectThemeList(query);
		
		System.out.println(themeList);
		
		
		mv.addObject("themeList", themeList);
		mv.setViewName("store/theRecommended");		
		
		
		return mv;
	}
	
	
}
