package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipeServiceImpl implements RecipeService {

    @Autowired
    RecipeDAO recipeDAO;

    @Override
    public int insertBoard(RecipeVO vo) {
        return recipeDAO.insertBoard(vo);
    }

    @Override
    public int deleteBoard(int seq) {
        return recipeDAO.deleteBoard(seq);
    }

    @Override
    public int updateBoard(RecipeVO vo) {
        return recipeDAO.updateBoard(vo);
    }

    @Override
    public RecipeVO getBoard(int seq) { return recipeDAO.getBoard(seq); }

    @Override
    public List<RecipeVO> getBoardList() {
        return recipeDAO.getBoardList();
    }

}
