package com.spring.service;

import java.util.List;

import com.spring.domain.CustomerVO;
import com.spring.domain.SalesVO;

public interface SalesService {
	public List<SalesVO> salesList() throws Exception;
	public List<CustomerVO> customerList() throws Exception;
}
