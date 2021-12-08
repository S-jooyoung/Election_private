package com.hustar.edu.vote.mapper;

import com.hustar.edu.vote.dao.Calendar;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;

@Mapper
public interface CalenDao {
    public ArrayList<Calendar> calenList();
}
