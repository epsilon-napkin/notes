
---
title: 分片与片偏移大小的计算
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

$\textbf{Example.}$ 一个数据报长度为 4000 字节, *固定首部长度 20*. 现在经过一个网络传送, 但 *此网络能够传送的最大数据长度为 1500 字节*. 试问应当划分为几个短些的数据报片? 各数据报片的数据字段长度、片偏移字段和 MF 标志应为何数值?

|  | 总长度 | MF | DF | 片偏移 |
| - | - | - | - | - |
| 原始 | 4000 | 0 | 0 | 0 | 
| 数据报片 1 | 1500 | 1 | 0 | 0 |
| 数据报片 2 | 1500 | 1 | 0 | 185 |
| 数据报片 3 | 1040 | 0 | 0 | 370 |

其中数据报片 3 的 $1040$ 来自 $((4000 - 20) \mod (1500 - 20)) + 20$. 片偏移 $185$ 来自 $\frac{1500-20}{8}$. 

$\textbf{Example.}$ 数据报长度为 4800 字节. 网络能够传送的最大数据长度为 1420 字节. 

|  | 总长度 | MF | DF | 片偏移 |
| - | - | - | - | - |
| 原始 | 4800 | 0 | 0 | 0 | 
| 数据报片 1 | 1420 | 1 | 0 | 0 |
| 数据报片 2 | 1420 | 1 | 0 | 175 |
| 数据报片 3 | 1420 | 1 | 0 | 350 |
| 数据报片 4 | 600 | 0 | 0 | 525 |

$(4800 - 20) \mod (1420 - 20) + 20 = 600$. $\frac{1420 - 20}{8} = 175$.
