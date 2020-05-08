package com.spring.mapper;

import java.util.List;

import com.spring.domain.CateVO;
import com.spring.domain.OriginVO;
import com.spring.domain.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getList();
	public List<CateVO> getCate();
	public List<OriginVO> getOrigin();
	public int update_pt(ProductVO vo);
	public int insert_pt(ProductVO vo);
	public ProductVO productSearch(int pt_cd, String pt_NM) throws Exception;

}
