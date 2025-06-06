
---
title: 数字信号编码方法
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

<div style="text-align: center;">

![](/assets/数字信号编码方法.jpg)

</div>

- 不归零制: 正电平代表 1, 负电平代表 0. 
- 归零制: 正脉冲代表 1, 负脉冲代表 0. 
- 曼彻斯特编码: 位周期中心的向上跳变代表 0, 位周期中心的向下跳变代表 1. *但也可反过来定义*. 
- 差分曼彻斯特编码: 在每一位的中心处始终都有跳变, 位开始边界有跳变代表 0, 而位开始边界没有跳变代表 1. 

从信号波形中可以看出, 曼彻斯特 [Manchester] 编码产生的信号频率比不归零制高. 从自同步能力来看, 不归零制不能从信号波形本身中提取信号时钟频率, 这叫作没有自同步能力, 而曼彻斯特编码具有自同步能力. 
