---
layout: post
title: "dropbox-auto-run"
date: 2012-10-22 00:16
comments: true
categories: [dropbox]
---

	mkdir $HOME/.config/autostart
	
vi Dropbox.desktop

	[Desktop Entry]
	Encoding=UTF-8
	Name=Dropbox
	Comment=RunDropbox
	Icon=/usr/share/icons/elementary/panel/22/dropboxstatus-logo.svg
	Exec=bash /home/*user*/.dropbox-dist/dropboxd
	Terminal=false
	Type=Application

Note: 
	Icon need to be checked  

### Reference
[1] <http://ubuntuforums.org/showpost.php?p=11108807&postcount=8>
