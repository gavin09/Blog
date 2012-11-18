---
layout: post
title: "tc rate limit"
date: 2012-11-18 15:10
comments: true
categories: [linux, tc, network]
---

tc 可以限制網路卡的速度

tc qdisk add dev eth0 root tbf 400kbit latency 50ms burst 4096

限制速度400 kbit, latency 50ms, burst 4096

若不要使用則是

tc qdisk del dev eth0 root tbf 400kbit latency 50ms burst 4096


