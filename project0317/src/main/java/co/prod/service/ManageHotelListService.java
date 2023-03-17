package co.prod.service;

import java.util.List;

import co.prod.vo.HotelsVO;

public interface ManageHotelListService {
	public List<HotelsVO> getHotelList();
	
	public boolean addHotel(HotelsVO vo);


}
