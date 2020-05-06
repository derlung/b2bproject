package com.spring.mapper;

import java.util.List;

import com.spring.domain.ProductVO;

public interface ProductMapper {
public List<ProductVO> getList();
public List<String> getCate();
public int update_pt(ProductVO vo);
}
