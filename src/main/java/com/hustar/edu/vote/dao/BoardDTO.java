package com.hustar.edu.vote.dao;

import lombok.Builder;
import lombok.Data;

import java.sql.Date;

@Data
public class BoardDTO {
    private int idx;
    private int writer_idx;
    private String title;
    private String content;
    private int view_cnt;
    private int file_id;
    private String top_fix;
    private String use_yn;
    private Date sysregdate;
    private Date sysmoddate;
    private String total_cd;
    private String dashboard_cd;

    @Builder
    public BoardDTO(int writer_idx, String title, String content) {
        this.writer_idx = writer_idx;
        this.title = title;
        this.content = content;
    }
}
