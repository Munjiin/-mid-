package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Board {
	
	private Integer bno;
	private String title,writer,content;
	private Date regdate,updatedate;

}
