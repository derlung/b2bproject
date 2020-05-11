package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.MainVO;
import com.spring.mapper.MainViewMapper;


@Service
public class MainViewServiceImpl implements MainViewService {
	
	@Autowired
	private MainViewMapper mapper;

	@Override
	public List<MainVO> chart1() throws Exception {
		return mapper.chart1();
	}

	@Override
	public int getMonthSum() throws Exception {
		return mapper.getMonthSum();
	}

	@Override
	public int getDaySum() throws Exception {
		return mapper.getDaySum();
	}

	@Override
	public List<MainVO> chart2() throws Exception {
		return mapper.chart2();
	}

}
