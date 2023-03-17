package co.prod.vo;

import java.util.Date;

import lombok.Data;

@Data
public class PostsVO {
	private int postId;
	private String postType;
	private String postResponse;
	private String postTitle;
	private String postContent;
	private int postRequestId;
	private Date postWriteDate;
	private String userEmail;
	
}
