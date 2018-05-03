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
import com.kh.fooding.store.model.vo.StoreSam;

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
	public ArrayList<StoreSam> searchResult(String searchKey,PageInfo pi, SqlSessionTemplate sqlSession) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		ArrayList<StoreSam> list = (ArrayList)sqlSession.selectList("Store.searchStore", searchKey , rowBounds);
		
		System.out.println("dao list size : " + list.size());
		
		rowBounds = new RowBounds(offset, pi.getLimit() - list.size());
		
		System.out.println("dao rowBounds : " + rowBounds);

		ArrayList<StoreSam> list2 = (ArrayList)sqlSession.selectList("Store.searchSam", searchKey , rowBounds);
		
		list.addAll(list2);
		
		for (Object sam2 : list) {
			System.out.println("dao result : " + sam2);
		}
		
		/*for (Sam sam2 : sam) {
			System.out.println("dao sam : " + sam2);
		}*/
		
		return list;
	}
	
	@Override
	public int getListCount(String searchKey , SqlSessionTemplate sqlSession) {
		
		System.out.println("dao searchKey : " + searchKey);
		
		int result = sqlSession.selectOne("Store.getSamListCount",searchKey);
		
		System.out.println("dao result : " + result);
		
		int result2 = sqlSession.selectOne("Store.getStoreListCount",searchKey);
		
		System.out.println("dao result2 : " + result2);
		
		result = result + result2;
		
		System.out.println("dao 최종 result : " + result);
		
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
	public ArrayList<StoreSam> selectThemeList(SqlSessionTemplate sqlSession, String query) {
					
		switch(query) {
			case "kor" : query="한식"; break;
			case "japanese" :query="일식"; break;			
			case "chinese" :query="중식";break;
			case "western" :query="양식";  break;
 		}		
		
		ArrayList<StoreSam> selectThemeList = (ArrayList) sqlSession.selectList("Store.selectRestType", query);
		
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
	public ArrayList<StoreSam> selectThemeListSamCat(SqlSessionTemplate sqlSession, String query) {
	

		switch(query) {
			case "kor" : query="한식"; break;
			case "japanese" :query="일식"; break;			
			case "chinese" :query="중식";break;
			case "western" :query="양식";  break;
 		}
		
		ArrayList<StoreSam> selectThemeListSamCat =(ArrayList) sqlSession.selectList("Store.selectSamThemeListCat" , query);
		
		return selectThemeListSamCat;
	}

	@Override
	public int getBestCouponCount(SqlSessionTemplate sqlSession) {
		int result = sqlSession.selectOne("Store.getBestCouponCount");
		return result;
	}

	//추천 쿠폰 추천
	@Override
	public ArrayList<Coupon> selectBestCoupon(SqlSessionTemplate sqlSession) {
		ArrayList<Coupon> couponList = (ArrayList)sqlSession.selectList("Store.selectBestCoupon");
		
		System.out.println("추천 쿠폰 리스트(DAOImpl) >>> " + couponList);
		return couponList;
	}


	
	// 테마별 식당 - 메뉴별
	@Override
	public ArrayList<StoreSam> selectThemeListMenu(SqlSessionTemplate sqlSession, String query) {
		
		String statement = "Store.selectMenu";			
		ArrayList<StoreSam> selectThemeListMenu = new ArrayList<StoreSam>();
		switch(query) {
			case "izakaya" : query="이자카야";  break;
			case "pizza" :query="피자"; break;			
			case "meat" : statement = "Store.selectMenuMeat"; break;
 		}
		
		if(! query.equals("meat")) {			
			selectThemeListMenu =  (ArrayList) sqlSession.selectList(statement, query);
		} else {
			selectThemeListMenu = (ArrayList) sqlSession.selectList(statement);			
		}
		
		
		
		return selectThemeListMenu;
	}

	@Override
	public Store selectOneStore(int sid, SqlSessionTemplate sqlSession) {
		
		Store store = sqlSession.selectOne("Store.selectOneStore",sid);
		
		return store;
	}




}
