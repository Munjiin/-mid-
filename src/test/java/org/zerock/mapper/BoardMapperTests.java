package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Board;
import org.zerock.domain.PageParam;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Setter(onMethod_=@Autowired) //골뱅이 주의 , 따옴표 아님
	private BoardMapper mapper;
	
	@Test
	public void testAll() {
		
		PageParam param = new PageParam();
		param.setPage(3);
		
		log.info(mapper.getList(param));
		mapper.getList(param).forEach(board->log.info(board));
	}
	
	@Test
	public void testInsert() {
		
		Board board = new Board();
		board.setTitle("테서터용..");
		board.setWriter("집에언제가쥐");
		board.setContent("웨 다들 먼저갔서");
		
		log.info(mapper.insert(board));
	}
	

}
