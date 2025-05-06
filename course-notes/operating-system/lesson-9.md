
---
title: 操作系统 Lesson 9
tag: [](/index.md)
---

<style>
hint {
  color: gray;  
}
em {
  color: rgb(249, 117, 131);
  font-style: normal;
}

.border-table th, 
.border-table td {
  padding: 0.4em;
  border: 1px solid #ccc;
}
</style>

### 安全序列

安全序列就是指如果系统按照这种序列分配资源, 则每个进程都能顺利完成. 只要能找到一个安全序列, 系统就是安全状态. 安全序列可能有多个. 如果系统处于安全状态，就一定不会发生死锁. 如果系统进入不安全状态, 就可能发生死锁. 

### 银行家算法

|  |  |
| - | - |
| `Max` | 每个客户最大贷款额度. |
| `Allocation` | 每个客户已经贷款的额度. |
| `Need` | 每个客户尚需贷款的额度. |
| `Available` | 银行家还可用于贷款的额度. |
| `Work` | 同 `Available` |
| `Finish` | 是否结束 |

#### 核心思想

在进程提出资源申请时, 先预判此次分配是否会导致系统进入不安全状态. 如果会进入不安全状态, 就暂时不答应这次请求, 让该进程先阻塞等待.

算法步骤:
  1. 检查次此次申请是否超过了之前声明的最大需求数.
  1. 检查此时系统剩余的可用资源是否还能满足这次请求.
  1. 试探着分配, 更改各数据结构.
  1. 用安全性算法检查此次分配是否会导致系统进入不安全状态.

安全性算法步骤:
  - 检查当前的剩余可用资源是否能满足某个进程的最大需求, 如果可以, 就把该进程加入安全序列, 并把该进程持有的资源全部回收.
  - 不断重复上述过程, 看最终是否能让所有进程都加入安全序列.

$\textbf{Example.}$ 

<div class="border-table">

|  | Max | Allocation | Need | Available |
| :-: | :-: | :-: | :-: | :-: |
| | A &emsp; B &emsp; C | A &emsp; B &emsp; C | A &emsp; B &emsp; C | A &emsp; B &emsp; C | 
| P0 | 7 &emsp; 5 &emsp; 3 | 0 &emsp; 1 &emsp; 0 | 7 &emsp; 4 &emsp; 3 | 3 &emsp; 3 &emsp; 2 |
| P1 | 3 &emsp; 2 &emsp; 2 | 2 &emsp; 0 &emsp; 0 | 1 &emsp; 2 &emsp; 2 |  |
| P2 | 9 &emsp; 0 &emsp; 2 | 3 &emsp; 0 &emsp; 2 | 6 &emsp; 0 &emsp; 0 |  |
| P3 | 2 &emsp; 2 &emsp; 2 | 2 &emsp; 1 &emsp; 1 | 0 &emsp; 1 &emsp; 1 | |
| P4 | 4 &emsp; 3 &emsp; 3 | 0 &emsp; 0 &emsp; 2 | 4 &emsp; 3 &emsp; 1 | |

</div>

1. T0 时刻的安全性: 利用安全性算法对 T0 时刻的资源分配情况进行分析可知, 在 T0 时刻存在着一个安全序列 P1, P3, P4, P2, P0, 故系统是安全的.

<div class="border-table">

|  | Max | Need | Allocation  | Work + Available | Finish |
| :-: | :-: | :-: | :-: | :-: | :-: |
| | A &emsp; B &emsp; C | A &emsp; B &emsp; C | A &emsp; B &emsp; C | A &emsp; B &emsp; C | |
| P1 | 3 &emsp; 2 &emsp; 2 | 1 &emsp; 2 &emsp; 2 | 2 &emsp; 0 &emsp; 0 | 5 &emsp; 3 &emsp; 2 | true |
| P3 | 2 &emsp; 2 &emsp; 2 | 0 &emsp; 1 &emsp; 1 | 2 &emsp; 1 &emsp; 1 | 7 &emsp; 4 &emsp; 3 | true |
| P4 | 4 &emsp; 3 &emsp; 3 | 4 &emsp; 3 &emsp; 1 | 0 &emsp; 0 &emsp; 2 | 7 &emsp; 4 &emsp; 5 | true |
| P2 | 9 &emsp; 0 &emsp; 2 | 6 &emsp; 0 &emsp; 0  | 3 &emsp; 0 &emsp; 2 | 10 &emsp; 4 &emsp; 7 | true |
| P0 | 7 &emsp; 5 &emsp; 3 | 7 &emsp; 4 &emsp; 3 | 0 &emsp; 1 &emsp; 0 | 10 &emsp; 5 &emsp; 7 | true |
</div>

2. P1 请求资源: P1 发出请求向量 `Request(1,0,2)`, 系统按银行家算法进行检查: 
    1. `Request(1, 0, 2)` ≤ `Need(1,2,2)`
    2. `Request(1, 0, 2)` ≤ `Available(3,3,2)`
    3. 系统先假定可为 P，分配资源，并修改 Available,Allocation 和 Need 向量. 
    4. 再利用安全性算法检查此时系统是否安全. 


由所进行的安全性检查得知, 可以找到一个安全序列 P1, P3, P4, P2, P0. 因此, 系统是安全的, 可以立即将 P1 所申请的资源分配给它. 

3. P4请求资源: P4发出请求向量 Request（3，3,0），系统按银行家算法进行检查: 
    1. Request4(3, 3, 0) ≤ Need4(4, 3, 1);
    2. Request4(3, 3,0) > Available(2, 3,0), 让P4等待。

4. P0 请求资源: P0 发出请求向量 Requesto（O,2,0）, 系统按银行家算法进行检查:
    1. Request0(O, 2, 0) ≤ Need0(7,4,3)
    2. Request0(O, 2, 0) ≤ Available(2,3,0)
    3. 系统暂时先假定可为 P0 分配资源, 并修改有关数据. 

5. 进行安全性检查: 可用资源 Available(2, 1, 0) 已不能满足任何进程的需要, 故系统进入不安全状态, 此时系统不分配资源. 

