---
layout: post
title: "使用octopress和github撰寫草稿"
date: 2012-09-23 08:31
comments: true
categories: [git, blog]
---

##第一次撰寫草稿##
新增一個branch，名稱是drafts

	git branch drafts

##write drafts##

	git checkout drafts
	write article....
	git add [article name]
	git commit -m 'message'
	git push

##post##

	git checkout master
	git merge drafts
	rake generate
	rake deploy
