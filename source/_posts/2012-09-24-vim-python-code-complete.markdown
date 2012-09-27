---
layout: post
title: "vim python-code-complete"
date: 2012-09-24 16:45
comments: true
categories: [vim,python]
---

## Download pydiction##

        git clone https://github.com/vim-scripts/Pydiction.git

## Install ##

        mkdir $HOME/.vim/after/ftplugin/

資料夾名稱一定要使用上述名稱。系統預設，可以下指令

        :set runtimepath

查看系統預設路徑


## Vim Setting   

        vim $HOME/.vimrc

                filetype plugin on 
                let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'

##reference  
<https://sites.google.com/site/fajoydelinuxbiji/pkg_all/pydiction-an-zhuang-zaivim-depython-wai-gua-ke-yi-antab-xian-shipython-han-shu>  
<http://blog.copyninja.info/2010/02/python-auto-complete-for-vim.html>
