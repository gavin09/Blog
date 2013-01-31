---
layout: post
title: "Clear Linux buffer cache"
date: 2012-11-18 14:24
comments: true
categories: [linux,tcpreplay]
---

在測試網卡throughput的時候使用了tcpreplay 

發現在Xen DomU 做測試時

第二次以後的結果都快的驚人

仔細思考之後認為是buffer裡面已經有傳送的封包

（網路線拔掉，使用udp 傳輸）

後來在 [1] 的地方找到了如何清理buffer

在此做紀錄

ps. 使用了方法1之後，確實throughput 就恢復正常了


1. Empty the linux buffer cache

	sync && echo 3 > /proc/sys/vm/drop_caches

2. Release memory used by the Linux kernel on caches

	free && sync && echo 3 > /proc/sys/vm/drop_caches && free

3. clean up memory of unnecessary things (Kernerl 2.6.16 or newer)

run sync first to flush useful things out to disk!!!  
To free pagecache:  
echo 1 > /proc/sys/vm/drop\_caches  
To free dentries and inodes:  
echo 2 > /proc/sys/vm/drop\_caches  
To free pagecache, dentries and inodes:  
echo 3 > /proc/sys/vm/drop\_caches  

	sync && echo 1 > /proc/sys/vm/drop_caches

4. sync; echo 3 | sudo tee /proc/sys/vm/drop\_caches

	clean up memory on linux

Reference  
[1] <http://www.commandlinefu.com/commands/view/1026/empty-the-linux-buffer-cache>
