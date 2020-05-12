package com.spring.mapper;

import com.spring.domain.PwVO;

public interface PwMapper {
	public int add_pw(PwVO vo);
	public String get_time(String key);
	public int reset_pw(PwVO vo);
	public String check_id(PwVO vo);
	public int delete_row(String key);
}
