package com.hong.running.mapper;

import java.util.List;

import com.hong.running.vo.RunningBoardReplyVO;



public interface RunningBoardReplyMapper {

	// 댓글 조회
	public List<RunningBoardReplyVO> replyList(long no) throws Exception;
	
	// 댓글 작성
	public void replyWrite(RunningBoardReplyVO rbvo) throws Exception;
	
	// 댓글 수정
	public int replyUpdate(RunningBoardReplyVO rbvo) throws Exception;
	
	// 댓글 삭제
	public void replyDelete(int rno) throws Exception;
}
