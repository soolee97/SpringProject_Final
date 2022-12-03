package com.crud.myapp.board;

import com.crud.myapp.board.BoardVO;

import java.util.List;

public interface BoardService {
    public int insertBoard(BoardVO vo) ;
    public int deleteBoard(int seq) ;
    public int updateBoard(BoardVO vo) ;
    public BoardVO getBoard(int seq) ;
    public List<BoardVO> getBoardList() ;
}
