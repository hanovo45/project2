package co.prod.vo;

import lombok.Data;

@Data
public class RoomsVO {
//	ROOM_ID        NOT NULL NUMBER         
//	ROOM_NAME               VARCHAR2(50)   
//	ROOM_TYPE      NOT NULL VARCHAR2(20)   
//	ROOM_PRICE     NOT NULL NUMBER(8)      
//	ROOM_MEMO               VARCHAR2(3000) 
//	ROOM_SERVICE            VARCHAR2(1000) 
//	ROOM_PHOTO              VARCHAR2(100)  
//	ROOM_SHORTTIME NOT NULL NUMBER(2)      
//	ROOM_LONGTIME  NOT NULL NUMBER(3)      
//	HOTEL_ID       NOT NULL VARCHAR2(10)
	
	int roomId;
	String roomName;
	String roomType;
	int roomPrice;
	String roomMemo;
	String roomService;
	String roomPhoto;
	int roomShortTime;
	int roomLongTime;
	String hotelId;
	
}
