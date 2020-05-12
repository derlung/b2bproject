package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.PwVO;
import com.spring.mapper.PwMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PwServiceImpl implements PwService {

	@Autowired
	private PwMapper mapper;
	
	@Override
	public boolean add_pw(PwVO vo) throws Exception {
		log.info(""+vo);
		return mapper.add_pw(vo)>0?true:false;
	}
	
	@Override
	public String get_time(String key) throws Exception {
		return mapper.get_time(key);
	}

	@Override
	public boolean reset_pw(PwVO vo) throws Exception {
		
		return mapper.reset_pw(vo)>0?true:false;
	}

	@Override
	public String check_id(PwVO vo) throws Exception {
		
		return mapper.check_id(vo);
	}

	@Override
	public boolean delete_row(String key) throws Exception {
		
		return mapper.delete_row(key)>0?true:false;
	}
}
