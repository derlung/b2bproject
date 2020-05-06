package com.spring.mapper;

import java.util.List;

import com.spring.domain.CateVO;
import com.spring.domain.ProductVO;

public interface ProductMapper {
public List<ProductVO> getList();
public List<CateVO> getCate();
public int update_pt(ProductVO vo);
}
