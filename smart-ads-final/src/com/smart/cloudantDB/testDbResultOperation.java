package com.smart.cloudantDB;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class testDbResultOperation {

//	@Test
//	public void testIndex() {
//		DatabaseResultOperation dbOperation = new DatabaseResultOperation();
//		String indexField0 = "shopping_content";
//		String indexField1 = "zipcode";
//		
//		dbOperation.createIndex(indexField0);
//		dbOperation.createIndex(indexField1);
//	}

	@Test
	public void testOperation() {
		DatabaseResultOperation dbOperation = new DatabaseResultOperation();
		
		// set index
//		String indexField0 = "shopping_content";
//		String indexField1 = "zipcode";	
//		dbOperation.createIndex(indexField0);
//		dbOperation.createIndex(indexField1);
		
		double evaluation = 3.78;
		ArrayList<String> list = new ArrayList<String>();
		list.add("Music & Games Electronics");
		list.add("95123");
		list.add("Default");
		
		dbOperation.insert(list, evaluation);
		list.clear();
		
		double evaluation2 = 3.29;
		list.add("Garden & Tools Beauty");
		list.add("95112");
		list.add("Default");
		
		dbOperation.insert(list, evaluation);
		list.clear();
		
		ArrayList<AnalysisResultInfo> resultList = new ArrayList<AnalysisResultInfo>();
		resultList = dbOperation.select("shopping_content", "eq", "Music & Games Electronics");
		assertTrue(resultList.size() == 1);
		for (AnalysisResultInfo r : resultList) {
			System.out.println(r.toString());
		}
		resultList.clear();
		
		double evaluation3 = 3.01;
		list.add("Garden & Tools Beauty");
		list.add("95112");
		list.add("Popular");
		
		dbOperation.insert(list, evaluation);
		list.clear();
		
		resultList = dbOperation.select("shopping_content", "eq", "Garden & Tools Beauty");
		assertTrue(resultList.size() == 2);
		for (AnalysisResultInfo r : resultList) {
			System.out.println(r.toString());
		}
		dbOperation.delete("Garden & Tools Beauty");
		resultList.clear();
		
		resultList = dbOperation.select("shopping_content", "eq", "Garden & Tools Beauty");
		assertTrue(resultList == null);
		dbOperation.delete("Music & Games Electronics");
		resultList = dbOperation.select("shopping_content", "eq", "Music & Games Electronics");
		assertTrue(resultList == null);
	}
}
