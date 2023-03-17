package co.prod.vo;

import java.util.Date;

import lombok.Data;
@Data
public class CommentsVO {

//	COMMENT_ID      NOT NULL NUMBER        
//	COMMENT_TITLE   NOT NULL VARCHAR2(100) 
//	COMMENT_CONTENT NOT NULL VARCHAR2(600) 
//	COMMENT_RATE    NOT NULL NUMBER(2,1)   
//	COMMENT_DATE             DATE          
//	COMMENT_PHOTO            VARCHAR2(30)  
//	COMMENT_ANSWER           VARCHAR2(600) 
//	ROOM_ID         NOT NULL NUMBER        
//	USER_EMAIL      NOT NULL VARCHAR2(30) 
	
	int commentId;
	String commentTitle;
	String commentContent;
	int commentRate;
	Date commentDate;
	String commentPhoto;
	String commentAnswer;
	int roomId;
	String userEmail;
}
