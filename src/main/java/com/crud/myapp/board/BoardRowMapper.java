package com.crud.myapp.board;

import com.crud.myapp.board.BoardVO;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setMenu_name(rs.getString("menu_name"));
        vo.setMenu_name_eng(rs.getString("menu_name_eng"));
        vo.setIce_hot(rs.getString("ice_hot"));
        vo.setContent(rs.getString("content"));
        vo.setPrice(rs.getString("price"));
        vo.setCategory(rs.getString("category"));
        vo.setTakeout(rs.getString("takeout"));
        vo.setSoldout(rs.getString("soldout"));
        vo.setRegdate(rs.getDate("regdate"));

        return vo;
    }
}
