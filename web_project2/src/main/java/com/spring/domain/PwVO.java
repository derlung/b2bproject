package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PwVO {
	private String id;
	private String email;
	private String key;
	private String group_GB;
	private Date time;
	private String pw;
	private String pw_confirm;
}
