package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.CateVO;
import com.spring.domain.Criteria;
import com.spring.domain.OriginVO;
import com.spring.domain.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getList(Criteria cri);
	public List<CateVO> getCate();
	public List<OriginVO> getOrigin();
	public int update_pt(ProductVO vo);
	public int insert_pt(ProductVO vo);
	public int getTotalCount(Criteria cri);
	public List<ProductVO>getList_category(Criteria cri);
	
}
