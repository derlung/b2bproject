package com.spring.domain;	
	
import java.sql.Date;	
	
import lombok.Data;	
	
@Data	
public class BoardVO {	
	
	public int bno;
	public String title;
	public String content;
	public String writer;
	public Date regdate;
	
}	
	
