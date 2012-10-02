---
layout: post
title: "git : error: Untracked working tree file ‘XXXX’ would be overwritten by merge"
date: 2012-10-02 10:58
comments: true
categories: git
---

# Warning message

	error: Untracked working tree file ‘XXXX’ would be overwritten by merge.

原因來自於 git rm file 之後，切換branch 的緣故

# solution

	git fetch --all
	git reset --hard origin/master


#reference  
<http://blog.wu-boy.com/2011/05/%E7%89%88%E6%9C%AC%E6%8E%A7%E5%88%B6-version-control-git-clean-%E4%BD%BF%E7%94%A8%E6%99%82%E6%A9%9F/>
<http://stackoverflow.com/questions/1125968/force-git-to-overwrite-local-files-on-pull>
