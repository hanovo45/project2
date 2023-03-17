package co.prod.vo;

import lombok.Data;

@Data
public class PageDTO {
	private int startPage; // 첫 페이지
	private int endPage; // 마지막 페이지
	private boolean prev, next; // 이전, 다음 페이지
	private int page; // 현재 페이지
	
	public PageDTO(int page, int total) {
		this.page = page;
		this.endPage = (int) Math.ceil(page/10.0) * 10; // 1~10 -> 10
		this.startPage = this.endPage - 9;
		int realEnd = (int) Math.ceil(total * 1.0/10);
		if (this.endPage > realEnd) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
