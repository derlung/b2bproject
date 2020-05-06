package com.spring.service;

import java.util.List;
import com.spring.domain.PriceVO;

public interface PriceService {
	public List<PriceVO> priceList() throws Exception;
}
