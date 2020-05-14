package com.spring.service;

import java.util.List;

import com.spring.domain.Center_ptVO;
import com.spring.domain.CustomerVO;
import com.spring.domain.SalesVO;
import com.spring.domain.SearchVO;

public interface SalesService {
	public List<SalesVO> salesList() throws Exception;
	public List<CustomerVO> customerList() throws Exception;
	public List<CustomerVO> customerSearch(SearchVO vo) throws Exception;
	public List<Center_ptVO> center_ptList(String customer_cd)throws Exception;
}
