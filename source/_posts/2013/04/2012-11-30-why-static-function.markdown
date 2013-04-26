---
layout: post
title: "Why Static Function ? "
date: 2012-11-30 22:56
comments: true
categories: [C]
---

最近在trace code 的時候會發現有的人會用static function.

冒出了一個疑問，為何要加上一個static ? 有什麼好處? 用在什麼時候適合?

所以做了一系列的 google ，在這邊做了一些整理

1.	unvisible [StackOverflow][1]
	做出一個對外使用的function，內部做translate unit 
	事實上，static function 的scope 是local 的。
2.	save memory in class method [StackOverflow][2]
	在這個討論串特別強調的是有無必要使用object
	若是沒有的話就用static，可以節省memory


	 
	


Reference  
[1]: http://stackoverflow.com/questions/5319361/static-function-in-c
[2]: http://stackoverflow.com/questions/4779950/is-static-method-faster-than-non-static
