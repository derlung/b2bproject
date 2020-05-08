package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.ProductVO;
import com.spring.domain.SearchVO;
import com.spring.mapper.PurchaseMapper;

@Service
public class PurchaseServiceImpl implements PurchaseService {

	@Autowired
	private PurchaseMapper mapper;	
	
	@Override
	public List<ProductVO> search_pt(SearchVO vo) {
		return mapper.search_pt(vo);
	}

}
