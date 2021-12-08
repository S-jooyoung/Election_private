package com.hustar.edu.vote.controller;

import com.hustar.edu.vote.auth.PrincipalDetail;
import com.hustar.edu.vote.dao.BoardDTO;
import com.hustar.edu.vote.service.BoardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
public class BoardController {
    @Autowired
    BoardService boardService;

    @PostMapping("/vote/boardCreate")
    public void PostBoardCreateController (@RequestParam("title") String title, @RequestParam("content") String content) {
        log.info("PostBoardCreatePage");

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        PrincipalDetail userDetails = (PrincipalDetail)principal;

        BoardDTO boardDTO = BoardDTO.builder()
                .writer_idx(((PrincipalDetail) principal).getIdx())
                .title(title)
                .content(content)
                .build();

        boardService.insertBoard(boardDTO);
    }
}
