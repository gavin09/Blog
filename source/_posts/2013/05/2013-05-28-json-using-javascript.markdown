---
layout: post
title: "JSON using JavaScript"
date: 2013-05-28 23:49
comments: true
categories: [JacaScript]
---

最近正在使用JSON, 記錄一些用法

{% gist 5664057 %}

checkExist(phonebook, "alice")                                                  
-> exist                                                                        
checkExist(phonebook, "Hello")                                                  
-> not exist                                                                    
                                                                                
phonebook.alice                                                                 
-> ({number:-333, id:1})
