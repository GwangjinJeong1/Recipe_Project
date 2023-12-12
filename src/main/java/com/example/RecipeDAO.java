package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecipeDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertBoard(RecipeVO vo) { return sqlSession.insert("Board.insertBoard", vo); }

	// 글 삭제
	public int deleteBoard(int seq) { return sqlSession.delete("Board.deleteBoard", seq); }

	// 글 수정
	public int updateBoard(RecipeVO vo) { return sqlSession.update("Board.updateBoard", vo); }

	public RecipeVO getBoard(int seq) { return sqlSession.selectOne("Board.getBoard", seq); }

	public List<RecipeVO> getBoardList(){ return sqlSession.selectList("Board.getBoardList"); }
}
