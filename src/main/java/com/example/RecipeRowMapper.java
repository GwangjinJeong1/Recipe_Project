package com.example;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class RecipeRowMapper implements RowMapper<RecipeVO> {
    @Override
    public RecipeVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        RecipeVO vo = new RecipeVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString("title"));
        vo.setContent(rs.getString("content"));
        vo.setWriter(rs.getString("writer"));
        vo.setCategory(rs.getString("category"));
        vo.setRegdate((rs.getDate("regdate")));
        return vo;
    }
}