package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CateVO;
import com.spring.domain.ProductVO;
import com.spring.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper mapper;
	
	@Override
	public List<ProductVO> getList() throws Exception {
		return mapper.getList() ;
	}

	@Override
	public List<CateVO> getCate() throws Exception {
		return mapper.getCate();
	}

	@Override
	public boolean update_pt(ProductVO vo) throws Exception {
		return mapper.update_pt(vo)>0?true:false;
	}

}
