
---
title: 计算机网络 Lesson 2
tag: [](/index.md)
---

<style>
img {
  border-radius: 0.2em; 
  width: 400px;
}
hint {
  color: gray;  
}
em {
  color: rgb(201, 152, 244);
  font-style: normal;
}
</style>

$\gdef\spaces#1{~ #1 ~}$
$\gdef\str#1{\footnotesize{#1}}$
$\gdef\hint#1{{\color{gray}{\str{#1}}}}$
$\gdef\type#1{~:~\texttt{#1}}$

电路交换的三个阶段: 建立连接, 通信, 释放连接. 

计算机网络的性能指标主要包括: 
- 速率
- 带宽
- 吞吐率
- 时延
- 时延带宽积
- 往返时间 RTT
- 利用率

区分 `MiB → GiB (/1000)` 和 `MB → GB (/1024)` 换算的区别. `1kb/s = 10³b/s`. 

吞吐量 [throughput] 表示在单位时间内通过某个网络(或信道、接口) 的数据量. 吞吐量更经常地用于对现实世界中的网络的一种测量, 以便知道实际上到底有多少数据量能够通过网络. 吞吐量受网络的带宽或网络的额定速率的限制. 

[时延](/408/network/delay.md#:embed)

### 利用率分为信道利用率和网络利用率

信道利用率指出某信道有百分之几的时间是被利用的 (有数据通过). 

- 完全空闲的信道的利用率是零. 
- 网络利用率则是全网络的信道利用率的加权平均值.
- 信道利用率并非越高越好. 当某信道的利用率增大时, 该信道引起的时延也就迅速增加.

$$
D ~ \hint{当前时延} \spaces= \frac{D_0 ~ \hint{空闲时延}}{1-U ~ \hint{网络利用率}}
$$

这里网络利用率 $U \in [0, 1]$.
