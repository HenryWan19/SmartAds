package com.smart.cloudantDB;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class testDbLoginOperation {

//	@Test
//	public void testIndex() {
//		DatabaseLoginOperation dbOperation = new DatabaseLoginOperation();
//		String indexField0 = "username";
//		String indexField1 = "email";
//		
//		dbOperation.createIndex(indexField0);
//		dbOperation.createIndex(indexField1);
//	}
	
	@Test
	public void testOperation() {
		DatabaseLoginOperation dbOperation = new DatabaseLoginOperation();
		ArrayList<String> list = new ArrayList<String>();
		list.add("Henry Liu");
		list.add("djsk@sjsu.edu");
		list.add("Baidu");
		list.add("1234");
		dbOperation.insert(list);
		list.clear();
		
		list.add("Jerry Yu");
		list.add("yuj@sjsu.edu");
		list.add("Google");
		list.add("4321");
		dbOperation.insert(list);
		list.clear();
		
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		assertTrue(dbOperation.containUserName("Baidu"));
		assertTrue(dbOperation.containUserName("Google"));
		assertFalse(dbOperation.containUserName("Yahoo"));
		
//		assertTrue(dbOperation.containEmail("emma@gmail.com"));
//		assertFalse(dbOperation.containEmail("emmaemma@gmail.com"));
		
		assertTrue(dbOperation.matchUserPassword("Baidu", "1234"));
		assertFalse(dbOperation.matchUserPassword("Google", "43210"));
		
		ArrayList<LoginInfo> resultInfo = new ArrayList<LoginInfo>();
		resultInfo = dbOperation.select("username", "eq", "Baidu");
		for (LoginInfo l : resultInfo) {
			System.out.println(l.toString());
		}
	}
}
