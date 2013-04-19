---
layout: post
title: "Mercurial Queues Extension"
date: 2013-04-18 15:27
comments: true
categories: [hg]
---

##Introduction

mq 在管理多個檔案的patch時相當方便

##Enable mq extentions

在 .hg/hgrc 當中新增

    [extensions]
    mq =

##Command

    hg qnew <patch name>

開啟patch

    hg qrefresh
    hg qrefresh -m 'one line message'
    hg qrefresh -e # multi-line message
    hg qrefresh -I <filename1> -I <filename2> #只把filename1 filename2 的改變加入patch

所有的的改變都會加入patch

    hg qqueue [option] [queue]

    -l --list   list all available queues
       --active print name of active queue
    -c --create create new queue
       --rename rename active queue
       --delete delete reference to queue
       --purge  delete queue, and remove patch dir

對queue的管理

    hg qdiff

列出所有改變的地方

    hg qseries  
    hg qseries -v -s 

列出所有在queue的patch, 參數 -v -s 會列出詳細的資訊

    hg qapplied 

列出所有applied的patch

    hg qpop

移除the top patch

    hg qpush

加入patch

    hg export qtip > /Export/FILE/Location/<filename.patch>  

匯出patch 

Reference  
1. <http://stevelosh.com/blog/2010/08/a-git-users-guide-to-mercurial-queues/#versioned-patch-queues>  
2. <https://developer.mozilla.org/en-US/docs/Mercurial_Queues>  
