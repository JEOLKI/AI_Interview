package com.aiinterview.interview.dao;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;

import com.aiinterview.ModelTestConfig;
import com.aiinterview.analysis.vo.TalentAnalysisVO;
import com.aiinterview.interview.vo.TalentVO;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

public class TalentMapperTest extends ModelTestConfig {

	@Resource(name="talentMapper")
	private TalentMapper talentMapper;

	@Test
	public void createTest() throws Exception{
		/***Given***/
		TalentVO talentVO = new TalentVO();
		talentVO.setTalentNm("실행력");
		talentVO.setTalentSt("Y");

		/***When***/
		talentMapper.create(talentVO);

		/***Then***/
		assertTrue(talentVO.getTalentSq() != "0");
	}
	
	@Test
	public void retrieveListTest() throws Exception{
		/***Given***/

		/***When***/
		List<TalentVO> talentList = talentMapper.retrieveList();

		/***Then***/
		assertEquals(3, talentList.size());
	}
	
	@Test
	public void updateTest() throws Exception{
		/***Given***/
		TalentVO talentVO = new TalentVO();
		talentVO.setTalentSq("1");
		talentVO.setTalentNm("유능함");
		talentVO.setTalentSt("Y");

		/***When***/
		int updateCnt = talentMapper.update(talentVO);

		/***Then***/
		assertEquals(1, updateCnt);
		assertEquals("유능함", talentVO.getTalentNm());
	}
	
	@Test
	public void retrievePagingListTest() throws Exception{
		/***Given***/
		TalentVO talentVO = new TalentVO();
		talentVO.setPageUnit(3);
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(talentVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(talentVO.getPageUnit());
		paginationInfo.setPageSize(talentVO.getPageSize());
		talentVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		talentVO.setLastIndex(paginationInfo.getLastRecordIndex());
		talentVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		/***When***/
		List<TalentVO> talentPagingList = talentMapper.retrievePagingList(talentVO);

		/***Then***/
		assertEquals(3, talentPagingList.size());
	}

	
	@Test
	public void retrievePagingListCntTest() throws Exception{
		/***Given***/
		TalentVO talentVO = new TalentVO();

		/***When***/
		int totCnt = talentMapper.retrievePagingListCnt(talentVO);

		/***Then***/
		assertEquals(3, totCnt);
	}
	
	@Test
	public void retrieveUsingListTest() throws Exception{
		/***Given***/

		/***When***/
		List<TalentVO> talentUsingList = talentMapper.retrieveUsingList();

		/***Then***/
		assertEquals(3, talentUsingList.size());
		
	}
	
	@Test
	public void retrieveTest() throws Exception{
		/***Given***/
		String talentSq = "1";

		/***When***/
		TalentVO talentVO = talentMapper.retrieve(talentSq);

		/***Then***/
		assertEquals("유능한 인재", talentVO.getTalentNm());
	}
	
	@Test
	public void retrieveStatisticsListTest() throws Exception{
		/***Given***/
		Map<String, String> statisticMap = new HashMap<>();
		statisticMap.put("startDate", "2000-01-01");
		statisticMap.put("endDate", "sysdate");
		statisticMap.put("searchKeyword", "");

		/***When***/
		List<TalentAnalysisVO> talentCountList = talentMapper.retrieveStatisticsList(statisticMap);

		/***Then***/
		assertEquals(10, talentCountList.get(0).getTalentCount());
	}
}
