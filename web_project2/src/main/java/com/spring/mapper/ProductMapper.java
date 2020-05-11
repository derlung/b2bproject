package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.CateVO;
import com.spring.domain.OriginVO;
import com.spring.domain.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getList(ProductVO vo);
	public List<CateVO> getCate();
	public List<OriginVO> getOrigin();
	public int update_pt(ProductVO vo);
	public int insert_pt(ProductVO vo);	
	
}
