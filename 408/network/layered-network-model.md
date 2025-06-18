
---
title: 三种体系结构
---

$\gdef\str#1{\footnotesize{#1}}$
$\gdef\hint#1{{\color{gray}{\str{#1}}}}$

> [应用层](/408/network/application-layer.md) $\to$ [运输层](/408/network/transport-layer.md) $\to$ [网络层](/408/network/network-layer.md) $\to$ [数据链路层](/408/network/data-link-layer.md) $\to$ [物理层](/408/network/physical-layer.md)

| OSI 的体系结构 | (四层) TCP/IP 的体系结构 | 五层协议的体系结构 |
| - | - | - |
| 7	应用层 | 应用层 (应用层协议如	DNS, HTTP, SMTP, RTP 等) | 5 应用层 |
| 6 表示层 |  
| 5 会话层 |
| 4 运输层 | 运输层 (TCP 或UDP) | 4 运输层 |
| 3 网络层 | 网际层 IP | 3 网络层 |
| 2 数据链路层 | 网络接口层 (这一层并没有具体内容) | 2 数据链路层
| 1 物理层 | $\hint{网络接口层}$ | 1 物理层 |
