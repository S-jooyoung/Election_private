package com.hustar.edu.vote.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class VoteController {
	@GetMapping("/")
	public String voteMainController() {
		log.info("VoteMainPage");
		return "/vote/main";
	}
	@GetMapping("/vote/boardCreate")
	public void voteBoardController() {
		log.info("VoteBoardPage");
	}
	@GetMapping("/vote/boardList")
	public void voteBoardListController() {
		log.info("VoteBoardListPage");
	}
	@GetMapping("/vote/boardDetail")
	public void voteBoardDetailController() {
		log.info("VoteBoardDetailPage");
	}

	@GetMapping("/vote/promiseDetail")
	public void votePromiseDetailController() {
		log.info("VotePromiseDetailPage");
	}
	@GetMapping("/vote/promiseList")
	public void votePromiseListController() {
		log.info("VotePromiseListPage");
	}

	@GetMapping("/vote/myProfileWrite")
	public void voteMyProfileWriteController() {
		log.info("VoteMyProfileWritePage");
	}
	@GetMapping("/vote/myProfileUpdate")
	public void voteMyProfileUpdateController() {
		log.info("VoteMyProfileUpdatePage");
	}
	@GetMapping("/vote/myProfileInfo")
	public void voteMyProfileInfoController() {
		log.info("VoteMyProfileInfoPage");
	}

	@GetMapping("/vote/behindList")
	public void voteBehindListController() {
		log.info("VoteBehindListPage");
	}
}
