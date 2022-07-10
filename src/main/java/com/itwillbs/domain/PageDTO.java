package com.itwillbs.domain;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageDTO {
	private String pageNum;
	private int pageSize, currentPage, startRow, endRow, pageBlock, startPage, endPage, count, pageCount,services_id;

	
}
