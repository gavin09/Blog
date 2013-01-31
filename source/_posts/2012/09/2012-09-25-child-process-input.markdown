---
layout: post
title: "child-process-input"
date: 2012-09-25 14:51
comments: true
categories: [C]
---

今天在測試child process 在使用鍵盤輸入是否會正常的時候，發現child process 跳過了scanf 的階段直接print 出結果。

	#include<stdio.h>
	
	#define num_child 2
	int main(){
	
	        int i;
	        int cpid[num_child];
	        int input;
	        for(i=0; i < num_child;i++){
	                cpid[i] = fork();
	                if(cpid[i] == 0){
	                        //i=10;
	                        scanf("%d",&input);
	                        printf("im child:%d : %d\n",getpid(),input);
	
	                        break;
	                }
	        }
	
	
	        return 0;
	}


覺得這個結果很奇怪，如果stdin跑掉的話，應該也看不到stdout 的結果，後來發現，因為parent process 因為已經先離開了，所以child process 不知道該把stdin 導至何方，而因為程式執行的很快，所以一開始的stdout 才可以導出來，底下才是正確的版本。

	#include<stdio.h>
	
	#define num_child 2
	int main(){
	
	        int i;
	        int cpid[num_child];
	        int input;
	        for(i=0; i < num_child;i++){
	                cpid[i] = fork();
	                if(cpid[i] == 0){
	                        //i=10;
	                        scanf("%d",&input);
	                        printf("im child:%d : %d\n",getpid(),input);
	
	                        break;
	                }
	                else{
	                        wait(NULL);
	
	                }
	        }
	
	
	        return 0;
	}


2012-9-8 update
thread 也有同樣的情形，要用pthread_join 等 thread return value (等thread結束)
pthread_join(t1, NULL);


reference  
[1] <http://stackoverflow.com/questions/1510922/waiting-for-all-child-processes-before-parent-resumes-execution-unix>
