
---
title: 时延
---

$\gdef\str#1{{\footnotesize #1}}$
$\gdef\type#1{~:~\texttt{#1}}$

时延 [delay / latency] 是指数据 (一个报文或分组, 甚至比特) 从网络或链路的一端传送到另一端所需的时间. 有时也称为延迟或迟延. 网络中的时延由以下几个不同的部分组成: 

1. 发送时延 $~ = ~ \dfrac{\str{数据帧长度; 数据块长度} ~ l \type{bit}}{\str{发送速率; 信道带宽} ~ v \type{bit/s}}$

1. 传播时延 $~ = ~ \dfrac{\str{信道长度} ~ l \type{m}}{\str{信号在信道上的传播速率} ~ v \type{m/s}}$

1. 处理时延 

1. 排队时延
