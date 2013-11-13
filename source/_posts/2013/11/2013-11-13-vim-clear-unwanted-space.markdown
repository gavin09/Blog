---
layout: post
title: 'vim clear unwanted'
date: 2013-11-13 21:53
comments: true
categories: vim
---
Highlighting with a search Edit
For occasional use, you can simply search using a suitable pattern to highlight what you want. 
The following examples assume you use search highlighting (:set hlsearch).

Show all tabs:
`/\t`

Show trailing whitespace:
`/\s\+$`

Show trailing whitespace only after some text (ignores empty lines):
`/\(\S\+\)\@<=\s\+$`

Show spaces before a tab:
`/ \+\ze\t`


# Reference:
[http://vim.wikia.com/wiki/Highlight_unwanted_spaces](http://vim.wikia.com/wiki/Highlight_unwanted_spaces)
