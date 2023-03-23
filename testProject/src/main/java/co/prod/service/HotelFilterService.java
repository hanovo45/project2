package co.prod.service;

import java.util.List;

import co.prod.vo.HotelsVO;

public interface HotelFilterService {
	public List<HotelsVO> getHotelList();
	
	public HotelsVO getHotelInfo(String id);

}
