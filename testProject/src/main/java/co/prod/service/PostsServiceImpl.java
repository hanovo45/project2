package co.prod.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.prod.common.DataSource;
import co.prod.mapper.PostsMapper;
import co.prod.vo.PostsVO;

public class PostsServiceImpl implements PostsService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PostsMapper mapper = sqlSession.getMapper(PostsMapper.class);

	@Override
	public List<PostsVO> getPostsQuestion() {

		return mapper.getPostsQuestion();
	}

	@Override
	public List<PostsVO> getPostsNotice() {

		return mapper.getPostsNotice();
	}

	@Override
	public List<PostsVO> getPostsFAQ() {

		return mapper.getPostsFAQ();
	}

	@Override
	public PostsVO getPost(int pid) {

		return mapper.getPost(pid);
	}

	@Override
	public boolean writePost(PostsVO vo) {

		return mapper.writePost(vo) == 1;
	}

	@Override
	public int getPostId() {

		return mapper.getPostId();
	}

	@Override
	public int getTotalCount(String type) {

		return mapper.getTotalCount(type);
	}

	@Override
	public List<PostsVO> postListPaging(Map<String, Object> map) {

		return mapper.postListPaging(map);
	}

	@Override
	public PostsVO getPostResponse(int pid) {

		return mapper.getPostResponse(pid);
	}

	@Override
	public boolean postResponseUpdate(Map<String, Object> map) {

		return mapper.postResponseUpdate(map) == 1;
	}

	@Override
	public boolean postModify(PostsVO vo) {

		return mapper.postModify(vo) == 1;
	}

	@Override
	public boolean postRemove(int pid) {

		return mapper.postRemove(pid) == 1;
	}
}
