package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CateVO;
import com.spring.domain.OriginVO;
import com.spring.domain.PriceVO;
import com.spring.domain.ProductVO;
import com.spring.mapper.ProductMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper mapper;	
	
	@Override
	public List<ProductVO> getList(ProductVO vo) throws Exception {
		return mapper.getList(vo) ;
	}

	@Override
	public List<CateVO> getCate() throws Exception {
		return mapper.getCate();
	}

	@Override
	public boolean update_pt(ProductVO vo) throws Exception {
		return mapper.update_pt(vo)>0?true:false;
	}

	@Override
	public boolean insert_pt(ProductVO vo) throws Exception {		
		return mapper.insert_pt(vo)>0?true:false;
	}


	@Override
	public List<OriginVO> getOrigin() throws Exception {
		return mapper.getOrigin();
	}
	
	
}
