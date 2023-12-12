package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertBoard(BoardVO vo) { return sqlSession.insert("Board.insertBoard", vo); }

	// 글 삭제
	public int deleteBoard(int seq) { return sqlSession.delete("Board.deleteBoard", seq); }

	// 글 수정
	public int updateBoard(BoardVO vo) { return sqlSession.update("Board.updateBoard", vo); }

	public BoardVO getBoard(int seq) { return sqlSession.selectOne("Board.getBoard", seq); }

	public List<BoardVO> getBoardList(){ return sqlSession.selectList("Board.getBoardList"); }
}
