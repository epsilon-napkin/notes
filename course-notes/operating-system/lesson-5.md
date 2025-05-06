
---
title: 操作系统 Lesson 5
tag: [](/index.md)
---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/github-dark.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/languages/c.min.js"></script>

<script>hljs.highlightAll();</script>

<style>
hint {
  color: gray;  
}
em {
  color: rgb(249, 117, 131);
  font-style: normal;
}
</style>

<!-- https://www.cnblogs.com/Ligo-Z/p/14139991.html -->

### 信号量机制 [Semaphore]

是一个特殊变量, 一般使用 $S$ 表示. 最初信号量 $S$ 是表示可用资源数目的整型变量. 除初始化外, 只能对 $S$ 做两个原子操作

- $P(S)$ 操作 --- $P(S)$ [`wait`].
- $V(S)$ 操作 --- $V(S)$ [`signal`]. 

$\textbf{Remark.}$ $P,V$ 操作是操作系统内核的一部分, 是原语. 

```cpp
...
wait(S);    // 进入区, 申请打印机
访问共享资源; // 临界区, 访问打印机
signal (S); // 退出区, 释放打印机
...
```

整型信号量: 
- $S>0$ 表示有 $S$ 个资源可用. $S=0$ 表示无资源可用. 
- 违反 *让权等待*, 会发生忙等. 

```c
// 整型信号量, 表示可用资源数
int S = 1;
// wait 原语, 相当于进入区
void wait(int S) {
    // 资源不够, 循环等待
    while (S <= 0);
    S = S - 1;
}

// signal 原语, 相当于退出区
void signal(int S) {
    S = S + 1;
}
```

记录型信号量: 进程进入阻塞状态, 不会忙等. 

```c
// 记录型信号量定义
typedef struct {
    int value; // 剩余资源数量
    struct process *L; // PCB List, 进程等待队列
} semaphore;

void wait(semaphore S) {
    // 申请资源
    S.value--;
    if (S.value < 0) {
        // bLock 原语阻塞进程 
        block(S.L);
    }
}

void signal(semaphore S) {
    // 释放资源
    S.value++;
    if (S.value <= 0) {
        // wakeup 原语喚醒进程
        wakeup(S.L);
    }
}
```
<!-- 
```cpp
P1() { S1; V(a); V(b); V(c); }
P1() { P(a); S2; V(d); }
...
void main () {
    semaphore a, b, c, d, e, f, g, h;
    a.value = b.value = c.value = d.value = e.value = f.value = g.value = h.value;
    cobegin
        P1(); P2(); P3(); P4(); P5(); ... 
    coend
}
```
-->

$\textbf{Remark.}$ 一般情况下, 互斥信号量的初值为 1

$\textbf{Remark.}$ 互斥信号量的取值范围 `(-1, 0, 1)`. 

- `1`: 两个进程都没有进入临界区. 
- `0`: 一个进程进入临界区运行. 
- `-1`: 一个进程正在临界区运行, 另一个因等待而阻塞在等待队列中. 

### 进程互斥

$\textbf{Remark.}$ 互斥信号量 `mutex`, 初值为 `1`. 

### 进程同步

$\textbf{Remark.}$ 同步信号量 `S`, 初始为 `0`. 

总结: 
- 同步信号量出现在不同的同步进程中. 
- 信号量的 $P$、$V$ 操作必须 *成对出现*. 

### 前驱关系

$\textbf{Example.}$ 

[](/course-notes/operating-system/lesson-5-000A.typ#:block)

```cpp
p1() { s1; V(a); V(b); }
p2() { p(a); s2; V(c); V(d); }
p3() { p(b); s3; V(e); }
p4() { p(c); s4; V(f); }
p5() { p(d); s5; V(g); }
p6() { p(e); p(f); p(g); s6; }

void main() {
    semaphore a, b, c, d, e, f, g;
    a.value = b.value = c.value = d.value = e.value = f.value = g.value = 0;
    cobegin 
        p1(); p2(); p3(); p4(); p5(); p6(); 
    coend
}
```

$\textbf{Example.}$ 公共汽车上有 1 名司机和 1 名售票员, 司机和售票员活动如下, 车辆运行规则是只有到站停车后售票员才能开门, 只有关门后司机才能启动车辆.初始状态是车辆停在起始站. 使用 P、V 原语描述车辆运行过程. 

```c
semaphore S1 = 1; // 车已停
semaphore S2 = 0; // 门已关

driver() {
    while (1) {
        P(S2);
        启动车辆;
        正常行驶;
        到站停车;
        V(S1);
    }
}

seller() {
    while (1) {
        售票;
        P(S1);
        开车门;
        关车门;
        V(S2);
    }
}
```

<!-- 
```c
// (1) 互斥: 爸爸和妈妈. 同步: 爸爸和女儿, 妈妈和儿子.

semaphore mutex S = 1; // 盘子可用. 
semaphore apple = 0, banana = 0; // 苹果, 香蕉可用. 

father() {
    while (1) {
        P(S);
        放苹果;
        V(apple);
    }
}

daughter() {
    while (1) {
        P(apple);
        吃苹果;
        V(S);
    }
}

son() {
    while (1) {
        P(banana);
        吃香蕉;
        V(S);
    }
}

mother() {
    while (1) {
        P(S);
        放香蕉;
        V(banana);
    }
}
```

### 硬件同步机制

#### 关中断

关中断是实现互斥的最简单的⽅法之⼀. 在进⼊锁测试之前关闭中断, 直到完成锁测试并上锁之后才能打开中断. 这样, 进程在临界区执⾏期间, 计算机系统不响应中断, 从⽽不会引发调度, 也就不会发⽣进程或线程切换. 由此, 保证了对锁的测试和关锁操作的连续性和完整性, 有效地保证了互斥. 

#### 关中断的缺点

1. 滥⽤关中断权⼒可能导致严重后果. 
1. 关中断时间过长, 会影响系统效率, 限制了处理器交叉执⾏程序的能⼒. 
1. 关中断⽅法也不适⽤于多 CPU 系统, 因为在⼀个处理器上关中断并不能防⽌进程在其它处理器上执⾏相同的临界段代码.  -->
