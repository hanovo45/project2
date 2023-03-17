package co.prod.vo;

import lombok.Data;

@Data
public class UsersVO {

//	USER_EMAIL    NOT NULL VARCHAR2(30)  
//	USER_PASSWORD NOT NULL VARCHAR2(30)  
//	USER_AUTH              CHAR(1)       
//	USER_NICKNAME NOT NULL VARCHAR2(30)  
//	USER_COUPON            VARCHAR2(300) 
//	USER_LIKELIST          VARCHAR2(300) 
	
	String userEmail;
	String userPassword;
	String userAuth;
	String userNickname;
	String userCoupon;
	String userLikelist;
	
}
