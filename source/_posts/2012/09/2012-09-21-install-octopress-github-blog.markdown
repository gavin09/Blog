---
layout: post
title: "install-octopress-github-blog"
date: 2012-09-21 19:58
comments: true
categories: [octopress, git, blog]
---

##requirement##

	sudo apt-get install curl zlib1g-dev

##create a github repository##

##install RVM##
	
	curl -L https://get.rvm.io | bash -s stable --ruby

##install Ruby##

	source ~/.rvm/scripts/rvm
	rvm pkg install openssl
	rvm install 1.9.2
	rvm use 1.9.2
	rvm rubygems latest

##install octopress##

	git clone git://github.com/imathis/octopress.git octopress
	cd octopress    # If you use RVM, You'll be asked if you trust the .rvmrc file (say yes).
	ruby --version  # Should report Ruby 1.9.2
	gem install bundler
	bundle install
	rake install

##setup repository link##
take my repository as an example

	git@github.com:gavin09/Blog.git

##generate web page##

	rake generate
	rake deploy

##reference##

- <http://octopress.org/docs/setup/rvm/>
- <http://lyhdev.com/note:octopress>
- <http://zerodie.github.com/blog/2012/01/19/octopress-github-pages/>
- <http://zerodie.github.com/blog/2012/01/19/octopress-github-pages/>
- <http://swind.github.com/blog/2011/10/19/ban-jia-hou-di-1pian/>
- <http://octopress.org/docs/deploying/github/>
