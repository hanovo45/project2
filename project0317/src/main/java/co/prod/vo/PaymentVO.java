package co.prod.vo;

import java.util.Date;

import lombok.Data;

@Data
public class PaymentVO {
//	RESERVE_KEY    NOT NULL VARCHAR2(15) 
//	PAYMENT_TOTAL  NOT NULL NUMBER(8)    
//	PAYMENT_SALE            NUMBER(8)    
//	PAYMENT_METHOD NOT NULL VARCHAR2(30) 
//	PAYMENT_DATE            DATE    
	
	String reserveKey;
	int paymentTotal;
	int paymentSale;
	String paymentMethod;
	Date paymentDate;
}
