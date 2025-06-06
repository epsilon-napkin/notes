
---
title: 计算机网络 Lesson 10
tag: [](/index.md)
---

运输层的重要功能

- 复⽤ [multiplexing], 是指在发送⽅不同的应⽤进程都可以使 ⽤同⼀个运输层协议传送数据 (当然需要加上适当的⾸部). 
- 分⽤ [demultiplexing]. 是指接收⽅的运输层在剥去报⽂的⾸部后能够把这些数据正确交付⽬的应⽤进程. 



### 运输层协议

#### UDP

1. UDP 是无连接的, 发送数据之前不需要建立连接, 因此减少了开销和发送数据之前的时延. 
1. UDP 使用尽最大努力交付, 即不保证可靠交付, 因此主机不需要维持复杂的连接状态表. 
1. UDP 是面向报文的. UDP 对应用层交下来的报文, 既不合并, 也不拆分, 而是保留这些报文的边界. UDP 一次交付一个完整的报文.  
1. UDP 没有拥塞控制, 因此网络出现的拥塞不会使源主机的发送速率降低. 这对某些实时应用是很重要的. 很适合多媒体通信的要求. 
1. UDP 支持一对一、 一对多、 多对一和多对多的交互通信. 
1. UDP 的首部开销小, 只有 8 个字节, 比 TCP 的 20 个字节的首部要短. 

#### TCP

套接字 `socket = (IP 地址: 端口号)`. 每一条 TCP 连接唯⼀地被通信两端的两个端点, 即套接字对 socket pair 所确定. 

```
TCP 连接 := { socket1, socket2 } 
         = { (IP1, port1), (IP2, port2) } 
```

### 信道利⽤率 $U$

$$
U = \frac{T_D}{T_D + \text{RTT} + T_A}
$$
