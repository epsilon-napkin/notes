

---
title: 操作系统 Lesson 4
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
</style>

### 内核的支撑功能

#### 内中断的三种情况

1. 陷阱 / 陷入 (Trap): 由应用程序主动引发
1. 故障 (fault): 由错误条件引发
1. 终止 (abort): 由致命错误引发

$\textbf{Remark.}$ 内中断也叫异常 / 陷入 / 例外.

### 内核的支撑功能

1. 时钟管理
1. 中断机制
1. 原语
    - 由若干条指令组成
    - 用来完成某个特定功能
    - 执行过程不会被中断

$\textbf{Remark.}$ 进程控制的目的是实现进程的状态转换. 

### 原语

原语用于实现 *进程控制*. 原语即 *不可被中断的原子操作*. 

#### 原语的特点

- 原子操作, 要么全做, 要么全不做, 执行过程不会被中断.
- 在管态 / 系统态 / 内核态下执行, 常驻内存. 
- 是内核三大支撑功能 (中断处理 / 时钟管理 / 原语操作) 之一. 

<span>

#### 1. 创建原语 &nbsp; 创建 $\to$ 就绪.
- 申请空白 PCB、为新进程分配所需要资源、初始化 PCB、将 PCB 插入就绪队列. 
- 引起进程创建的事件: 
  - 用户登陆: 分时系统, 用户登陆成功, 系统会建立为其建立一个新的进程. 
  - 作品调度: 多道批处理系统中, 有新的作业放入内存时, 会为其建立新的进程. 
  - 提供服务: 用户向操作系统提出其某些请求时, 会新建一个进程处理该请求. 
  - 应用请求: 由用户进程主动请求创建一个子进程. 

#### 2. 撤销原语 &nbsp; 就绪 / 阻塞 / 运行 $\to$ 终止
- 从 PCB 集合中找到终止的 PCB; 若进程正在运行, 立即剥夺 CPU, 将 CPU 分配给其他进程; 终止其所有子进程; 将该进程拥有的所有资源归还给父进程或操作系统; 删除 PCB. 
- 引起进程终止的事件: 正常结束、异常结束、外界干预. 

#### 3. 阻塞原语 &nbsp; 运行 $\to$ 阻塞
- 找到要阻塞的进程对应的 PCB; 保护进程运行现场,将 PCB 状态信息设置为 "阻塞态", 暂停停止进程运行; 将 PCB 插入相应事件的等待队列. 
- 引起进程阻塞的事件: 
  - 需要等待系统分配某种资源. 
  - 需要等待相互合作的其他进程完成工作. 

#### 4. 唤醒原语 &nbsp; 阻塞 $\to$ 就绪
- 在事件等待队列中找到 PCB; 将 PCB 从等待队列移除, 设置进程为就绪态; 将 PCB 插入就绪队列, 等待被调度. 
- 引起进程唤醒的事件: 等待的事件发生. 

#### 5. 挂起原语 &nbsp; 活动 $\to$ 静止
- 找到需要挂起的进程的 PCB, 检查 PCB 状态并在操作系统内部更新进程状态为挂起 (运行态、活动就绪态 $\to$ 静止就绪态, 活动阻塞态 $\to$ 静止阻塞态), 之后将该 PCB 复制到指定的内存区域. 
- 引起进程挂起的事件:
  - 资源限制: 如内存不足时，操作系统可能会挂起一些进程. 
  - 父进程 / 用户请求: 父进程 / 用户可以直接请求挂起某个进程. 
  - 系统维护: 系统更新或硬件维护时可能会挂起进程. 

#### 6. 激活原语 &nbsp; 静止 $\to$ 活动
- 将进程从外存对换回内存, 检查该进程的现行状态并将进程状态从挂起更改为运行或就绪. 
- 引起进程激活的事件:
  - 父进程 / 用户请求: 父进程 / 用户进程请求激活指定进程. 
  - 资源可用: 如 `I/O` 设备变得可用; 某个进程驻留在外存而内存中已有足够的空间. 

</span>

#### 7. 切换原语 &nbsp; 运行 $\to$ 阻塞 / 就绪; 就绪 $\to$ 运行
- 将运行环境信息存入 PCB; 将 PCB 移入相应队列; 选择另一个进程执行, 并更新其 PCB; 将 PCB 恢复新进程所需的运行环境. 
- 引起进程切换的事件: 
  - 当前进程时间片用完. 
  - 有更高优先级的进程到达. 
  - 当前进程阻塞. 
  - 当前进程终止. 

<p style="text-align: center;"><img src="../../assets/full-seven-state.svg" style="border-radius: 0.2em; width: 800px;"><br>七态模型及原语</p>

### 进程间的相互关系

#### 竞争关系 [Competition]
- 间接制约关系
- 解决方法 --- 进程的 *互斥* [Mutual Exclusion, Mutex], 多个进程互斥地使用系统中共享的独占资源. 

#### 协作关系 [Collaboration]
- 直接制约关系
- 进程协作 --- 某些进程为完成同一任务需要分工协作, 由于合作的每一个进程都是独立地以不可预知的速度推进, 这就需要相互协作的进程在某些协调点上协调各自的工作. 
- 进程的 *同步* [Synchronization] 是解决进程间协作关系的手段. 

### 进程同步机制

在执行次序上进行协调 <hint>[同步]</hint>, 使并发执行的诸进程之间能按照一定的规则或时序共享系统资源 <hint>[互斥]</hint>, 并能很好地相互合作. 

$\textbf{Remark.}$ 临界资源 [Critical Resource] 指任一个时间只允许一个进程使用的资源.

$\textbf{Remark.}$ 临界区 [Critical Section] 指每个进程中访问临界资源的那段代码. 

### 互斥的访问临界资源

#### 访问过程

- 进入区: 尝试进入临界区, 成功则加锁 [lock]. 
- 临界区: 访问共享资源. 
- 退出区: 解锁 [unlock] 唤醒其它阻塞进程. 
- 剩余区: 其它代码. 

#### 访问临界资源的循环进程 

- 进⼊区
- 临界区
- 退出区
- 剩余区

#### 临界区准则

1. 空闲让进. 当无进程处于临界区时, 表明临界资源处于空闲状态, 应允许一个请求进入临界区的进程立即进入自己的临界区, 以有效地利用临界资源.

2. 忙则等待. 当已有进程进入临界区时, 表明临界资源正在被访问, 因而其它试图进入临界区的进程必须等待, 以保证对临界资源的互斥访问.

3. 有限等待. 对要求访问临界资源的进程, 应保证在有限时间内能进入自己的临界区, 以免陷入“死等”状态.

4. 让权等待. 当进程不能进入自己的临界区时, 应立即释放处理机, 以免进程陷入“忙等”状态.

<!--
### 用户级线程

#### 概念

1. 在用户空间实现, 用户级线程是与内核无关. 线程任务控制块设置在用户空间, 操作无须内核帮助.
1. 程序员自己写一个程序库实现逻辑上的线程, 操作系统的视角只看得到进程 (操作系统意识不到用户级线程的存在). 
1. 线程的管理工作由应用程序完成 (通过线程库). 

#### 优点

1. 线程切换不需要操作系统参与, 不需要转换到内核空间, 节省了模式切换开销.
1. 不同进程可以选择不同的调度算法.
1. 用户级线程实现与操作系统平台无关 
-->

