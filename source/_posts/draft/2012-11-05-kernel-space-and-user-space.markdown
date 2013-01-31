---
layout: post
title: "kernel space and user space"
date: 2012-11-05 15:23
comments: true
categories: OS
---

最近在面試的時候被問到這個如何用程式作轉換的流程。
感覺當下不是非常的清楚。所以又回來看了一下。


User   space 位於 0  ~ 3G 
Kernel space 位於 3G ~ 4G

通常切換到kernel space 都是呼叫system call, ex : fork, open, read, write
切換時會作80號中斷。






Reference  
[1] <http://www.study-area.org/cyril/opentools/opentools/x952.html>
