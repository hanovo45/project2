package co.prod.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReserveVO {

//	RESERVE_KEY       NOT NULL VARCHAR2(15)   
//	RESERVE_TEL       NOT NULL VARCHAR2(15)   
//	RESERVE_IN        NOT NULL DATE           
//	RESERVE_OUT       NOT NULL DATE           
//	RESERVE_MEMO               VARCHAR2(1000) 
//	RESERVE_TIMETYPE  NOT NULL CHAR(1)        
//	RESERVE_PEOPLENUM NOT NULL NUMBER(2)      
//	RESERVE_NAME      NOT NULL VARCHAR2(15)   
//	ROOM_ID           NOT NULL NUMBER         
//	USER_EMAIL        NOT NULL VARCHAR2(30) 
	
	String reserveKey;
	String reserveTel;
	Date reserveIn;
	Date reserveOut;
	String reserveMemo;
	String reserveTimeType;
	int reservePeopleNum;
	String reserveName;
	int roomId;
	String UserEmail;
	
}
