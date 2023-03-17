package co.prod.vo;

import lombok.Data;

@Data
public class CouponsVO {
//	COUPON_NAME    NOT NULL VARCHAR2(60) 
//	COUPON_PERCENT NOT NULL NUMBER(3)
	
	String couponName;
	int couponPercent;
}
