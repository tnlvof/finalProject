package com.kh.fooding.store.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.fooding.common.PageInfo;
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
	public ArrayList searchResult(String searchKey,PageInfo pi, SqlSessionTemplate sqlSession) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		ArrayList sam = (ArrayList)sqlSession.selectList("Store.searchResult", searchKey , rowBounds);
		ArrayList result = (ArrayList) sqlSession.selectList("Store.searchStore",searchKey,rowBounds);
		
		result.addAll(sam);
		
		/*sam.addAll(sqlSession.selectList("store.searchStore",searchKey,rowBounds));*/
		
		for (Object sam2 : result) {
			System.out.println("dao result : " + sam2);
		}
		
		/*for (Sam sam2 : sam) {
			System.out.println("dao sam : " + sam2);
		}*/
		
		return result;

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


	@Override
	public int getCouponListCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 업체 조회
	@Override
	public ArrayList<Store> selectAllStores(SqlSessionTemplate sqlSession) {
		
		ArrayList<Store> storeList =(ArrayList) sqlSession.selectList("Store.selectAllStores");
		return storeList;
	}

	@Override
	public ArrayList<Store> selectThemeList(SqlSessionTemplate sqlSession, String query) {
				
		String statement = "";
	
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



}
