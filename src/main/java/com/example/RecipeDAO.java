package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecipeDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertRecipe(RecipeVO vo) { return sqlSession.insert("Recipe.insertRecipe", vo); }

	// 글 삭제
	public int deleteRecipe(int seq) { return sqlSession.delete("Recipe.deleteRecipe", seq); }

	// 글 수정
	public int updateRecipe(RecipeVO vo) { return sqlSession.update("Recipe.updateRecipe", vo); }

	public RecipeVO getRecipe(int seq) { return sqlSession.selectOne("Recipe.getRecipe", seq); }

	public List<RecipeVO> getRecipeList(){ return sqlSession.selectList("Recipe.getRecipeList"); }
}
