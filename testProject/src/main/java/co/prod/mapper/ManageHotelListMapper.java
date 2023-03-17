package co.prod.mapper;

import java.util.List;

import co.prod.vo.HotelsVO;

public interface ManageHotelListMapper {
	public List<HotelsVO> getHotelList();
	
	public int insertHotel(HotelsVO vo);
}
