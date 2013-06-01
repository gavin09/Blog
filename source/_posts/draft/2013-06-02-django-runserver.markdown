---
layout: post
title: "django runserver"
date: 2013-06-02 00:56
comments: true
categories: [python, django]
---

# 前言

在django的框架裡面，如果我們要測試我們寫的web就執行

    python manage.py runserver

通程預設的port會是8000，那麼就只要打開自己的瀏覽器輸入http://localhost:8000
就可以看到自己的網站。

但是如果是租用VPS (virtual private server)的主機的話，因為是remote server。
所以localhost:8000是沒有東西的。若又只能使用界面，就不能遠端桌面
（遠端相對吃掉很多頻寬阿....

# Solution

ssh -L 8888:127.0.0.1:8000 <user>@<remoteip>

這樣就可以在自己的瀏覽器裡面打http://localhost:8888 看到畫面了！

