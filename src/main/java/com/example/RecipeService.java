package com.example;

import java.util.List;

public interface RecipeService {
    public int insertRecipe(RecipeVO vo);
    public int deleteRecipe(int seq);
    public int updateRecipe(RecipeVO vo);
    public RecipeVO getRecipe(int seq);
    public List<RecipeVO> getRecipeList();
}
