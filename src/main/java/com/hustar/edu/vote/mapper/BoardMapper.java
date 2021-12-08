package com.hustar.edu.vote.mapper;

import com.hustar.edu.vote.dao.BoardDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
    void insertBoard(BoardDTO boardDTO) ;
}
