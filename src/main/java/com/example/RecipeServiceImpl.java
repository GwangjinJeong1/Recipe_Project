package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipeServiceImpl implements RecipeService {

    @Autowired
    RecipeDAO recipeDAO;

    @Override
    public int insertRecipe(RecipeVO vo) {
        return recipeDAO.insertRecipe(vo);
    }

    @Override
    public int deleteRecipe(int seq) {
        return recipeDAO.deleteRecipe(seq);
    }

    @Override
    public int updateRecipe(RecipeVO vo) {
        return recipeDAO.updateRecipe(vo);
    }

    @Override
    public RecipeVO getRecipe(int seq) { return recipeDAO.getRecipe(seq); }

    @Override
    public List<RecipeVO> getRecipeList() {
        return recipeDAO.getRecipeList();
    }

}
