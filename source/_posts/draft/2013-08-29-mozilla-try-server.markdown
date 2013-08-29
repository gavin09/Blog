---
layout: post
title: "Mozilla try server"
date: 2013-08-29 14:01
comments: true
categories: [Mozilla, FFOS]
---

Prepare a qqueue that only contains the testing patches.  

Go [try chooser website][1] to select testing options.  

hg qnew test.patch  
hg qrefresh -m 'testing options'  
example:  
hg qrefresh -m "try: -b do -p emulator,panda,unagi,linux\_gecko,linux64\_gecko,macosx64\_gecko -u all -t none"  

hg push -f try  


Reference:  
[1]: http://trychooser.pub.build.mozilla.org/
<https://wiki.mozilla.org/ReleaseEngineering/TryServer>

