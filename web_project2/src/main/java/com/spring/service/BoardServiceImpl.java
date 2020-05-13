package com.spring.service;			
			
import java.util.List;			
			
import javax.inject.Inject;			
			
import org.springframework.beans.factory.annotation.Autowired;			
import org.springframework.stereotype.Service;			
			
import com.spring.domain.BoardVO;			
import com.spring.mapper.BoardMapper;			
			
			
@Service			
public class BoardServiceImpl implements BoardService {			
			
	@Autowired		
	BoardMapper mapper;		
			
			
			
	@Override		
	public List<BoardVO> getBoard_Market() {		
		return mapper.getBoard_Market();	
	}		
			
	@Override		
	public List<BoardVO> board_Market_List() {		
		// TODO Auto-generated method stub	
		return mapper.board_Market_List();	
	}		
			
	@Override		
	public BoardVO board_market_read(int bno) {		
		// TODO Auto-generated method stub	
		return mapper.board_market_read(bno);	
	}		
			
	@Override		
	public List<BoardVO> getBoard_Notice() {		
		// TODO Auto-generated method stub	
		return mapper.getBoard_Notice();	
	}		
			
	@Override		
	public List<BoardVO> board_Notice_List() {		
		// TODO Auto-generated method stub	
		return mapper.board_Notice_List();	
	}		
			
	@Override		
	public BoardVO board_Notice_read(int bno) {		
		// TODO Auto-generated method stub	
		return mapper.board_Notice_read(bno);	
	}		
			
			
			
}			
