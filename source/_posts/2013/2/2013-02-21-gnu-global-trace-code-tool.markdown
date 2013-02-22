---
layout: post
title: "GNU global trace code tool"
date: 2013-02-21 23:56
comments: true
categories: tool
---

Before using this tool, I use vim and grep for tracing code.

I found this tool is so wonderful and easy to use. 

official website [GNU Global][1] for downloading source code.

##Installation 

   ./configure
   make
   make install

##usage

   cd <root src code>
   htags -G -F -f 

Then, open HTML/index.html 

[1]: http://www.gnu.org/software/global/
