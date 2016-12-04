package com.smart.cloudantDB;

import java.util.ArrayList;

public interface DatabaseOperation {
	public void insert(ArrayList<String> list);
	public ArrayList<String> select(String property1, String operation, String property2);
	public void delete(String _id);
}
