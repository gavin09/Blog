---
layout: post
title: "writting dratfs octopress with github page"
date: 2012-09-23 08:31
comments: true
categories: [git,blog]
---

## first use##
create a branch called drafts

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
