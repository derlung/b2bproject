package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.PriceVO;
import com.spring.mapper.PriceMapper;


@Service
public class PriceServiceImpl implements PriceService {
	
	@Autowired
	private PriceMapper mapper;	
	

	@Override
	public List<PriceVO> priceList() throws Exception {		
		return mapper.priceList();
	}

}
