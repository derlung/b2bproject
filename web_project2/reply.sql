create table spring_reply(
	rno number(10) constraint pk_reply primary key, -- 댓글 글번호
	bno number(10) not null,  -- 원본 글 번호
	reply varchar2(1000) not null, -- 댓글 내용
	replyer varchar2(50) not null, -- 댓글 작성자
	replydate date default sysdate, -- 댓글 작성일
	updatedate date default sysdate, -- 댓글 수정일
	constraint fk_reply_board foreign key(bno) -- 외래키 제약조건
	references spring_board(bno));
	
create sequence seq_reply;

select * from SPRING_REPLY where rno=2;

-- index 생성
create index idx_reply on spring_reply(bno desc,rno asc);

-- spring_board 테이블에 댓글 수를 저장할 컬럼 추가
alter table spring_board add(replycnt number default 0);

-- 이미 들어간 댓글 수 삽입해주기
update SPRING_BOARD 
set replycnt=(select count(rno) from SPRING_REPLY where spring_board.bno=spring_reply.bno);




select * from SPRING_BOARD order by bno desc;













