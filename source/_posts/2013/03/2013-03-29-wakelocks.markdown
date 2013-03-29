---
layout: post
title: "Wake Locks"
date: 2013-03-29 14:11
comments: true
categories: [Android,Linux]
---

Android 會要求 application 和 services 需要CPU時要用"wake locks"的方式，透過Android frameworks 還有 native Linux Libraries來完成。

Android 有分類一些wake locks

Flag                   |  CPU | Screen | Keyboard
Partial  wake lock     |  ON  | OFF    | OFF
Screen Dim wake lock   |  ON  | OFF    | OFF
Screen Brigh wake lock |  ON  | OFF    | OFF
Full Wake lock         |  ON  | Bright | Bright



Reference:  
1. http://loda.hala01.com/2011/01/android%E7%AD%86%E8%A8%98/

