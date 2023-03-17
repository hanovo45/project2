package co.prod.service;

import java.util.List;
import java.util.Map;

import co.prod.vo.PostsVO;

public interface PostsService {
	// 리스트 가져오는 기능
	public List<PostsVO> getPostsQuestion();
	public List<PostsVO> getPostsNotice();
	public List<PostsVO> getPostsFAQ();
	
	//단건조회
	public PostsVO getPost(int pid);
	
	//글 쓰기
	public boolean writePost(PostsVO vo);
	
	//다음 작성할 글의 번호를 가져옴
	public int getPostId();
	
	public int getTotalCount(String type);
	
	public List<PostsVO> postListPaging(Map<String, Object> map);
}
