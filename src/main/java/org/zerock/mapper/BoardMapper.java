package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.zerock.domain.Board;
import org.zerock.domain.PageParam;

import lombok.Delegate;


public interface BoardMapper {
	//마이바티즈는 sql 매핑 프래임워크로써 이렇게 사용이 가능해짐.
	
	@Update("update tbl_board set title = #{title} , content = #{content} where bno= #{bno}")
	public int update(Board board);
	
	@Select("select * from tbl_board order by bno desc limit #{skip},10") //세미콜론,따옴표,대문자 주의
	public List<Board> getList(PageParam param);
	
	@Select("select * from tbl_board where bno=#{bno}")
	public Board get(PageParam param);
	
	@Insert(" insert into tbl_board (title, content, writer) values (#{title} , #{content}, #{writer})")
	public int insert(Board board);
	
	@Select("select count(*) from tbl_board")
	public int count();
	
	@Delete("delete from tbl_board where bno = #{bno}")
	public int delete(PageParam param);
	
	

}
