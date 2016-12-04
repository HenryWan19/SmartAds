package com.smart.cloudantDB;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class testDbSparkOperation {

//	@Test
//	public void testDbInit() {
//		DatabaseSparkOperation dbOperation = new DatabaseSparkOperation();
//		dbOperation.createIndex("zipcode");
//	}
	
//	@Test
//	public void testInsert() {
//		DatabaseSparkOperation dbOperation = new DatabaseSparkOperation();
//		ArrayList<String> list = new ArrayList<String>();
//		list.add("95123");
//		list.add("100000");
//		list.add("30");
//		list.add("male");
//		list.add("Online");
//		list.add("milk powder");
//		dbOperation.insert(list);
//	}
	
	@Test
	public void testQueryEq() {
		DatabaseSparkOperation dbOperation = new DatabaseSparkOperation();
		ArrayList<String> resultQuary = dbOperation.select("zipcode", "eq", "95123");
		for (String str: resultQuary) {
			System.out.println(str);
		}
	}
}
