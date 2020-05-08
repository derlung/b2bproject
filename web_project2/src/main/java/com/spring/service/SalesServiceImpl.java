package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.domain.SalesVO;
import com.spring.mapper.SalesMapper;


@Service
public class SalesServiceImpl implements SalesService {
	
	@Autowired
	private SalesMapper mapper;

	@Override
	public List<SalesVO> salesList() throws Exception {		
		return mapper.salesList();
	}

}
