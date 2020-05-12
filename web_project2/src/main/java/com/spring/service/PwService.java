package com.spring.service;

import com.spring.domain.PwVO;

public interface PwService {
	public boolean add_pw(PwVO vo)throws Exception;
	public String get_time(String key)throws Exception;
	public boolean reset_pw(PwVO vo)throws Exception;
	public String check_id(PwVO vo)throws Exception;
	public boolean delete_row(String key)throws Exception;
}
