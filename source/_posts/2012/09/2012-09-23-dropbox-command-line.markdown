---
layout: post
title: "在linux command line 環境下安裝dropbox"
date: 2012-09-23 22:32
comments: true
categories: [Linux, dropbox]
---

##下載dropbox##

	wget http://www.getdropbox.com/download?plat=lnx.x86_64
	mv download?plat=lnx.x86_64 dropbox.tar.gz
	tar zxvf dropgox.tar.gz
	cd .dropbox-dist

##執行dropbox##

	./dropboxd

此時將會出現底下的message

*Please visit https://www.dropbox.com/cli_link?host_id= to link this machine.
This client is not linked to any account…*


將此連結複製到有gui環境的電腦作授權，若授權成功將會出現successful的訊息  
此時按Ctrl + c 結束

##執行dropbox##

	./dropboxd &

&  的目的是為了讓dropbox在背景執行，此時dropbox 便開始同步


##reference  
<http://matrix.csie.org/blogs/dongogo/2010/05/22/dropbox-ubuntu-%E5%95%9F%E5%8B%95-dropbox-%E8%A8%AD%E5%AE%9A%E9%96%8B%E6%A9%9F%E8%87%AA%E5%8B%95%E5%95%9F%E5%8B%95/>
