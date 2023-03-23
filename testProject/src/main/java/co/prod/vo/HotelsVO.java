package co.prod.vo;

import lombok.Data;

@Data
public class HotelsVO {
//	HOTEL_ID       NOT NULL VARCHAR2(10)   
//	HOTEL_LOCATION NOT NULL VARCHAR2(100)  
//	HOTEL_NAME     NOT NULL VARCHAR2(60)   
//	HOTEL_TEL      NOT NULL VARCHAR2(15)   
//	HOTEL_SERVICE           VARCHAR2(1000) 
//	HOTEL_VIEW              VARCHAR2(100)  
//	HOTEL_RATE              NUMBER(2,1)    
//	HOTEL_ADDRESS  NOT NULL VARCHAR2(300)  
//	HOTEL_PHOTO             VARCHAR2(100)  
//	HOTEL_CHECKIN  NOT NULL VARCHAR2(10)   
//	HOTEL_CHECKOUT NOT NULL VARCHAR2(10)   
//	HOTEL_LIKE              NUMBER   
	
	String hotelId;
	String hotelLocation;
	String hotelName;
	String hotelTel;
	String hotelService;
	String hotelView;
	int hotelRate;
	String hotelAddress;
	String hotelPhoto;
	String hotelCheckIn;
	String hotelCheckOut;
	int hotelLike;
	String hostName;
	int hotelPrice;
	String hotelMemo;
	
	
}
