
---
title: 计算机网络 Problem Set
---

### 选择 10, 20.

1. [内外核模型](/408/network/overview.md) 
1. [TCP 建立的过程](/408/network/tcp.md), 工作在 [运输层](/408/network/layered-network-model.md) / 传输层. 
1. TCP 流量控制. 
1. `ping`, `tracert`. 
1. [协议水平, 服务垂直](/408/network/protocol.md) 
1. 传输速率. 
1. 解决传输层的拥塞控制问题 (4 种算法: 慢启动, 拥塞避免, 快速重传, 快速恢复). 
1. 广播地址. 
1. 应用层, 实现端到端的服务. 

### 填空 15, 15 & 判断 12, 12.

1. [三种体系结构](/408/network/layered-network-model.md)
1. 电路交换的过程. 
1. 数据单元传输的名称. 
1. [网络层](/408/network/network-layer.md) 地址 [IP](/408/network/ip.md) & [数据链路层](/408/network/data-link-layer.md) 地址 MAC, . 
1. [子网掩码求网络地址](/408/network/subnet-mask.md)
1. 传输层的协议. 
1. 常见的复用技术. 
1. 三种交换技术: 电路交换, 报文交换, 分组交换.
    - 若要连续传送大量的数据, 且其传送时间远大于连接建立时间, 则电路交换的传输速率较快. 
    - 报文交换和分组交换不需要预先分配传输带宽, 在传送突发数据时可提高整个网络的信道利用率. 
    - 由于一个分组的长度往往远小于整个报文的长度, 因此分组交换比报文交换的时延小, 同时也具有更好的灵活性. 
1. 网络的分类 (专用网, 局域网, 广域网).
1. [主机数量计算](/408/network/address-count.md)
1. [地址类别](/408/network/ip-category.md)
1. 不同设备用于哪一层. 
    - 物理层中继系统: 转发器 (repeater).
    - 数据链路层中继系统: 网桥 或 桥接器 (bridge).
    - 网络层中继系统: 路由器 (router).
    - 网桥和路由器的混合物: 桥路器 (brouter).
    - 网络层以上的中继系统: 网关 (gateway). 
1. 通讯遵循协议. 
1. [TCP 和 UDP 的对比](/408/network/tcp-vs-udp.md). 
1. 最短帧长: 以太网最小传送帧长度为 64 字节. 
1. 通信方式 (单工, 半双工, 全双通). 
1. [基带调制, 带通调制](/408/network/modulation.md). 
1. [计算子网掩码](/408/network/subnet-mask.md) 
1. [IP 地址的表示](/408/network/dotted-decimal-notation.md) 
1. DNS 的作用: 将域名解析为 IP 地址. 
1. 模拟信号, 数字信号. 

### 简述题 7, 28. 

1. 网络的理解. 
1. 交换机. 
1. 路由器: 在⽹络核⼼部分起特殊作⽤的是路由器 [router], 它是⼀种专⽤计算机 (但不叫作主机). 路由器是实现分组交换 [packet switching] 的关键构件, 其任务是 **转发收到的分组**. 
1. [地址解析协议 ARP](/408/network/arp.md) 作用: $\text{IP} \to \text{Mac}$, 从 [网络层](/408/network/network-layer.md) 使用的 [IP 地址](/408/network/ip.md) 解析出在 [数据链路层](/408/network/data-link-layer.md) 使用的 [硬件地址](/408/network/ip-convert-mac.md). 
1. [虚电路和数据报服务的关联](/408/network/virtual-circuit-vs-datagram.md). 
1. [CSMA / CD - 载波监听多点接⼊ / 碰撞检测](/408/network/csma-cd.md)
1. TCP 拥塞控制. 
1. VLAN. 
1. 串行并行概念. 

### 计算 3, 15. 

1. [循环冗余检验](/408/network/cyclic-redundancy-check.md) 
1. [分片与片偏移大小的计算](/408/network/sharding-offset.md) 
1. [子网划分](/408/network/subnet-division.md)

### 画图 1, 10. 

1. [数字信号编码方法](/408/network/encoding-method.md)


