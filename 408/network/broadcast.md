
---
title: 广播
---

$\gdef\str#1{{\footnotesize #1}}$

这种信道使用一对多的广播通信方式, 因此过程比较复杂. 广播信道上连接的主机很多, 因此必须使用专用的共享信道协议来协调这些主机的数据发送.

[载波监听多点接⼊ / 碰撞检测](/408/network/csma-cd.md#:embed)

以太⽹使⽤截断⼆进制指数退避 [truncated binary exponential backoff] 算法来确定碰撞后重传的时机. 截断⼆进制指数退避算法并不复杂. 这种算法让发⽣碰撞的站在停⽌发送数据后, 不是等待信道变为空闲后就⽴即再发送数据, ⽽是退避⼀个随机的时间 $r 2^\tau$. 其中

- $r \in \operatorname{random}([0, 1, \cdots, 2^k-1])$. 
- $k = \min(\str{重传次数}, 10)$. 

$\textbf{Remark.}$ 以太⽹规定了⼀个最短帧长 64 字节, 即 512 ⽐特.
