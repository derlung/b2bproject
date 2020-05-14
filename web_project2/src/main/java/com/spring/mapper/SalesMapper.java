package com.spring.mapper;

import java.util.List;

import com.spring.domain.Center_ptVO;
import com.spring.domain.CustomerVO;
import com.spring.domain.SalesVO;
import com.spring.domain.SearchVO;

public interface SalesMapper {
	public List<SalesVO> salesList();
	public List<CustomerVO> customerList();
	public List<CustomerVO> customerSearch(SearchVO vo);
	public List<Center_ptVO> center_ptList(String customer_cd);
	
}
