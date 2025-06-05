
---
title: 运输层
---

<style>
hint {
  color: gray;  
}
em {
  color: rgb(201, 152, 244);
  font-style: normal;
}
</style>

从通信和信息处理的⾓度看, *运输层向它上⾯的 [应⽤层](/408/network/application-layer.md) 提供通信服务*, 它属于⾯向通信部分的最⾼层, 同时也是⽤户功能中的最低层. 当⽹络边缘部分的两台主机使⽤⽹络核⼼部分的功能进⾏端到端的通信时, 都要使⽤协议栈中的运输层,⽽⽹络核⼼部分中的路由器在 *转发分组时只⽤到下三层的功能*. 

运输层的重要功能: 

- 复⽤ [multiplexing], 是指在发送⽅不同的应⽤进程都可以使 ⽤同⼀个运输层协议传送数据 (当然需要加上适当的⾸部). 
- 分⽤ [demultiplexing]. 是指接收⽅的运输层在剥去报⽂的⾸部后能够把这些数据正确交付⽬的应⽤进程. 

从这⾥可以看出 [⽹络层](/408/network/network-layer.md) 和运输层有明显的区别. *[⽹络层](/408/network/network-layer.md) 为主机之间的通信提供服务, ⽽运输层则在⽹络层的基础上, 为应⽤进程之间的通信提供服务.* 然⽽正如后⾯还要讨论的, 运输层还具有 [⽹络层](/408/network/network-layer.md) ⽆法代替的许多其他重要功能.

运输层还要对收到的报⽂进⾏差错检测. 在 [⽹络层](/408/network/network-layer.md), IP 数据报⾸部中的检验和字段只检验⾸部是否出现差错⽽不检查数据部分. 

根据应⽤程序的不同需求, 运输层需要有两种不同的运输协议, 即⾯向连接的 [TCP](/408/network/tcp.md) 和⽆连接的 [UDP](/408/network/udp.md). 

- [⽤户数据报协议 UDP](/408/network/udp.md#:embed)
- [传输控制协议 TCP](/408/network/tcp.md#:embed)

<!-- 
### 信道利⽤率 $U$

$$
U = \frac{T_D}{T_D + \text{RTT} + T_A}
$$ 
-->
