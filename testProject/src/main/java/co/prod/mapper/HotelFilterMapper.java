package co.prod.mapper;

import java.util.List;

import co.prod.vo.HotelsVO;

public interface HotelFilterMapper {
	public List<HotelsVO> getHotelList();

	public HotelsVO getHotelInfo(String id); 

}
