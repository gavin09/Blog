---
layout: post
title: "Python Recommended Package"
date: 2013-06-01 21:35
comments: true
categories: python
---

# yolk  
yolk 可以列出所有已安裝的python package。

    sudo easy_install yolk

常用指令

    yolk -l  

列出package，並且列出其狀態

    yolk -a  

列出active的package

    yolk -U  

列出可以升級的package

# virtualenv

## Install

    sudo pip install virtualenv  

## usage
    
    virtualenv <dirname>  

開啟資料夾，並將執行環境記錄在資料夾內

    . <dirname>/bin/activate

開啟執行環境
