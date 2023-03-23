package co.prod.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.prod.common.DataSource;
import co.prod.mapper.HotelFilterMapper;
import co.prod.vo.HotelsVO;

public class HotelFilterServiceImpl implements HotelFilterService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	HotelFilterMapper mapper = sqlSession.getMapper(HotelFilterMapper.class);
	
	@Override
	public List<HotelsVO> getHotelList() {
		List<HotelsVO> list = mapper.getHotelList();
		for(HotelsVO i : list) {
			System.out.println(i);
		}
		// TODO Auto-generated method stub
		return list;
	}

	@Override
	public HotelsVO getHotelInfo(String id) {
		HotelsVO list = mapper.getHotelInfo(id);
		return list;
	}

}
