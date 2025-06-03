
---
title: IP 数据报的格式
---

<style>
hint {
  color: gray;  
}
em {
  color: rgb(201, 152, 244);
  font-style: normal;
}
img {
  border-radius: 0.2em; 
  width: 400px;
}
</style>

一个 IP 数据报由首部和数据两部分组成: 
- 首部的前一部分是固定长度, 共 20 字节, 是所有 IP 数据报必须具有的. 
- 在首部的固定部分的后面是一些可选字段, 其长度是可变的. 

<div style="text-align: center;">

![](/assets/ipv4-header.png)

</div>

- 总长度. 占 16bit. 指首部和数据之和的长度, 单位为字节, 因此数据报的最大长度为 $2^{16}-1$ 65535 字节 (B).总 长度必须不超过 [最大传送单元 MTU](/408/network/maximum-transmission-unit.md). 
- 片偏移. 占 13bit. 指出较长的分组在分片后, 某片在原分组中的相对位置. 片偏移以 8 个字节 (8B) 为偏移单位. 
- 标识. 占 16bit. 计数器, 每产生一个数据报就加 1, 当一个数据报的长度超过网络的 [MTU](/408/network/maximum-transmission-unit.md) 时, 必须分片, 每个数据报片都复制一次标识号, 以便重装成原来数据报. 属于同一个数据报各分片有相同的标识. 
- 区分服务, 占 8bit. 用来获得更好的服务.在旧标准中叫做服务类型, 但实际上一直未被使用过.1998 年这个字段改名为区分服务. 只有在使用区分服务 [DiffServ] 时, 这个字段才起作用. 在一般的情况下都不使用这个字段. 
- 标志. 占 3bit. 标志字段的最低位为 `MF` [More Fragment], `MF=1` 表示后面还有分片, `MF=0` 表示最后一个分片. 标志字段中间一位是 DF [Don't Fragment], 只有当 `DF=0` 时才允许分片. 
- 生存时间 TTL. 占 8bit. 路由器在转发分组前, 先把 TTL 减 1. *若 TTL 被减为 0, 则该分组必须丢弃*. 
- 首部校验和. 占 16bit. 只校验分组的首部, 而不校验数据部分. 每经过一个路由器, 都重新计算. 

[分片与片偏移大小的计算](/408/network/sharding-offset.md#:embed)

[-](/408/network/ip-forward-group.md#:embed)
[-](/408/network/ip-convert-mac.md#:embed)
