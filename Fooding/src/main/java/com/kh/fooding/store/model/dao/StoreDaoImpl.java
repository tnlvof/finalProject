package com.kh.fooding.store.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.common.PageInfo;
import com.kh.fooding.store.model.vo.Coupon;
import com.kh.fooding.store.model.vo.Sam;
import com.kh.fooding.store.model.vo.Store;

@Repository
public class StoreDaoImpl implements StoreDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertStoreInfo(Store s, SqlSessionTemplate sqlSession) {
		System.out.println("storedao"+ s );
		return sqlSession.insert("Store.insertStore",s);
  }
    
	// 검색 결과
	@Override
	public ArrayList<Sam> searchResult(String searchKey,PageInfo pi, SqlSessionTemplate sqlSession) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		ArrayList<Sam> sam = (ArrayList)sqlSession.selectList("Store.searchResult", searchKey , rowBounds);
		
		for (Object sam2 : sam) {
			System.out.println("dao result : " + sam2);
		}
		
		/*for (Sam sam2 : sam) {
			System.out.println("dao sam : " + sam2);
		}*/
		
		return sam;
	}
	
	@Override
	public int getListCount(String searchKey , SqlSessionTemplate sqlSession) {
		
		System.out.println("dao searchKey : " + searchKey);
		
		int result = sqlSession.selectOne("Store.getListCount",searchKey);
		
		System.out.println("dao result : " + result);
		
		return result;
	}
	
	@Override
	public Sam selectOneSam(String restName, SqlSessionTemplate sqlSession) {
		
		System.out.println("dao restName = " + restName);
		
		Sam s = sqlSession.selectOne("Store.selectOneSam", restName);
		
		System.out.println("dao s = "+s);
		
		return s;
	}


	// 업체 조회
	@Override
	public ArrayList<Store> selectAllStores(SqlSessionTemplate sqlSession) {
		
		ArrayList<Store> storeList =(ArrayList) sqlSession.selectList("Store.selectAllStores");
		return storeList;
	}

	//테마별 식당 - 카테고리별
	@Override
	public ArrayList<Store> selectThemeList(SqlSessionTemplate sqlSession, String query) {
					
		switch(query) {
			case "kor" : query="한식"; break;
			case "japanese" :query="일식"; break;			
			case "chinese" :query="중식";break;
			case "western" :query="양식";  break;
 		}
		
		
		ArrayList<Store> selectThemeList = (ArrayList) sqlSession.selectList("Store.selectRestType", query);
		
		System.out.println("themeList : "  + selectThemeList);
		
		return selectThemeList;
	}


	@Override
	public ArrayList<Store> searchStore(SqlSessionTemplate sqlSession, String searchKey, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		ArrayList<Store> store = (ArrayList)sqlSession.selectList("Store.searchStore", searchKey , rowBounds);
		
		for (Object sam2 : store) {
			System.out.println("dao result : " + sam2);
		}
		
		return store;
	}

	// 테마별 식당 - 카테고리별 Sam 
	@Override
	public ArrayList<Sam> selectThemeListSamCat(SqlSessionTemplate sqlSession, String query) {
	

		switch(query) {
			case "kor" : query="한식"; break;
			case "japanese" :query="일식"; break;			
			case "chinese" :query="중식";break;
			case "western" :query="양식";  break;
 		}
		
		ArrayList<Sam> selectThemeListSamCat =(ArrayList) sqlSession.selectList("Store.selectSamThemeListCat" , query);
		
		return selectThemeListSamCat;
	}


	//추천 쿠폰 추천
	@Override
	public ArrayList<Coupon> selectBestCoupon(SqlSessionTemplate sqlSession) {
		ArrayList<Coupon> couponList = (ArrayList) sqlSession.selectList("Store.selectBestCoupon");
		return couponList;
	}


	
	// 테마별 식당 - 메뉴별
	@Override
	public ArrayList<Sam> selectThemeListMenu(SqlSessionTemplate sqlSession, String query) {
		
		String statement = "Store.selectMenu";			
		ArrayList<Sam> selectThemeListMenu = new ArrayList<Sam>();
		switch(query) {
			case "izakaya" : query="이자카야";  break;
			case "pizza" :query="피자"; break;			
			case "meat" : statement = "Store.selectMenuMeat"; break;
 		}
		
		if(! query.equals("meat")) {			
			selectThemeListMenu = (ArrayList) sqlSession.selectList(statement, query);
		} else {
			selectThemeListMenu = (ArrayList) sqlSession.selectList(statement);			
		}
		
		
		
		return selectThemeListMenu;
	}




}
