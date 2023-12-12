package com.example;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class RecipeRowMapper implements RowMapper<RecipeVO> {
    @Override
    public RecipeVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        RecipeVO vo = new RecipeVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setRecipe_name(rs.getString("recipe_name"));
        vo.setWriter(rs.getString("writer"));
        vo.setCategory(rs.getString("category"));
        vo.setRecipe_level(rs.getInt("recipe_level"));
        vo.setIngredient(rs.getString("ingredient"));
        vo.setRecipe_content(rs.getString("recipe_content"));
        vo.setImage(rs.getString("image"));
        vo.setRegdate((rs.getDate("regdate")));
        return vo;
    }
}
