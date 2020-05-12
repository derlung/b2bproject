package com.spring.mapper;

import java.util.List;

import com.spring.domain.MainVO;



public interface MainViewMapper {
	
	public List<MainVO> chart1();
	public int getMonthSum();
	public int getDaySum();
	public List<MainVO> chart2();
	public int getMonthTeam();
	public int getDayTeam();
}

	