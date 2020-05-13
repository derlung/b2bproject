package com.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class Criteria {
	private int pageNum; //페이지 번호
	private int amount;  //한 페이지당 보여줄 게시물의 수
	

	private String keyword;
	private String category;	
	private String type;

	public String[] getTypeArr() {		
		return type==null?new String[] {}:type.split(""); //비어있는 배열로 만들어 ("")을 기준으로 하나씩 잘라줘 //기준을 넣는다면, ("안에는 정규식 표현이 들어가야 함")
	}

	
	public Criteria() {
		this(1,15);     // 위의 검색 정보추가로  @AllArgsConstructor에 변화생겨 이 라인에 엑박이 뜬다. 아래와 같이 처리해주면 엑박이 없어진다.
	}
	
	public Criteria(int pageNum,int amount) {
		this.pageNum=pageNum;
		this.amount=amount;
	}
	
}
