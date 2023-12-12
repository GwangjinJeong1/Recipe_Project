package com.example;

import java.util.List;

public interface RecipeService {
    public int insertBoard(RecipeVO vo);
    public int deleteBoard(int seq);
    public int updateBoard(RecipeVO vo);
    public RecipeVO getBoard(int seq);
    public List<RecipeVO> getBoardList();
}
