---
layout: post
title: "Mercurial 常用指令"
date: 2013-04-30 16:09
comments: true
categories: [hg]
---

## hg用途


## 指令

    hg clone <repo>

將repo上的專案複製到local端

    hg status

查看有repo裡面的檔案更動情形

    hg add <filename>
    hg commit -m 'single line message'

將更動的檔案加入，並用一行訊息記錄成一個commit

    hg pull  
    hg update  

hg pull 從remote repository下載到本地端的repo，但是此時尚未update 本地端的檔案  
hg update 才會實際更新到本地端檔案  

    hg update -C   

放棄local端尚未commit的更動  

    hg push

push則是將自己做的更新上傳到網路上的repo

    hg diff -r rev1 -r rev2
    hg diff -c rev

-c 可以看這一次rev所做的改變  
-r 則是看兩個rev之間，所做的改變

    hg log

查看所有更動記錄
