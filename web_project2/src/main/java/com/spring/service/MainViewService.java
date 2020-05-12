
package com.spring.service;


import java.util.List;

import com.spring.domain.MainVO;



public interface MainViewService {
	public List<MainVO> chart1() throws Exception;	
	public int getMonthSum() throws Exception; 
	public int getDaySum() throws Exception;
	public List<MainVO> chart2() throws Exception;
	
	public int getMonthTeam() throws Exception; 
	public int getDayTeam() throws Exception;
	
}