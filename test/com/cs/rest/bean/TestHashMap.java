package com.cs.rest.bean;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.junit.Test;

public class TestHashMap {

		public static ArrayList<String> listA=new ArrayList<String>();
		public static ArrayList<String> listB=new ArrayList<String>();
		public static HashMap<Integer,ArrayList<String>> hashmapA=new HashMap<Integer,ArrayList<String>>();
		public static HashMap<Integer,ArrayList<String>> hashmapB=new HashMap<Integer,ArrayList<String>>();
		public static void main(String args[]) {
		listA.add("AAA");
		listA.add("aaa");
		listA.add("AAAAA");
		listA.add("bbbb");
		listA.add("kkkkk");
		listB.add("OOOO");
		listB.add("llll");
		listB.add("pppp");
		listB.add("ppppp");
		listB.add("nnnn");
		hashmapA.put(1, listA);
		hashmapA.put(2, listB);
		//listA.clear();
		System.out.println(hashmapA);
		for(Iterator i = hashmapA.keySet().iterator();i.hasNext();)
		{            
		  Integer interger = (Integer)i.next();            
		  List<String> list = hashmapA.get(interger);           
		  for(String s: list)
		  {                
		   System.out.println(s);            
		  }        
		} 
		}
		

}
