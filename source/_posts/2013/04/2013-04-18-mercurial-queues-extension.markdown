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
    hg qrefresh -e  // multi-line message

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

列出所有在queue的patch

    hg qapplied 

列出所有applied的patch

    hg qpop

移除the top patch

    hg qpush

加入patch


