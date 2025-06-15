
---
title: 信道复用技术
---

$\gdef\spaces#1{~ #1 ~}$

信道复用技术可分为: 
+ 频分复用、时分复用和统计时分复用
+ 波分复用
+ 码分复用

#### 频分复用

- 将整个带宽分为多份, 用户在分配到一定的频带后, 在通信过程中自始至终都占用这个频带.
- 频分复用的所有用户在同样的时间占用不同的带宽资源 (注意这里的 "带宽" 是频率带宽而不是数据的发送速率).

#### 时分复用

- 时分复用则是将时间划分为一段段等长的时分复用帧 (TDM 帧). 
- 每一个时分复用的用户在每一个 TDM 帧中占用固定序号的时隙.每一个用户所占用的时隙是周期性地出现 (其周期就是 TDM 帧的长度).
- TDM 信号也称为等时 (isochronous) 信号.
- 时分复用的所有用户是在不同的时间占用同样的频带宽度. 
- 时分复用可能会造成线路资源的浪费. 

#### 统计时分复用 

- STDM 帧不是固定分配时隙, 而是按需动态地分配时隙. 因此统计时分复用可以提高线路的利用率.

#### 波分复用



#### 码分复用

- 常用的名词是码分多址 CDMA (Code Division Multiple Access).
- 各用户使用经过特挑选的不同码型, 因此彼此不会造成干扰. 
- 这种系统发送的信号有很强的抗干扰能力, 其频谱类似于白噪声, 不易被敌人发现.

$$
\begin{gathered}
S \cdot T = 0, \quad S \cdot S = 1, \quad S \cdot \bar{S} = -1 \\
\Darr \\
S \cdot (S+T) = 1, \quad S \cdot (\bar{S}+T) = -1 \\
\Darr \quad\quad \qquad \quad\quad \Darr \\
S=1 \quad \qquad \quad S=0
\end{gathered}
$$

$\therefore$ 码片 $\cdot$ 收到的信号 $=\begin{cases} ~~~0 \spaces\Rarr \text{none} \\ ~~~1 \spaces\Rarr 1 \\ -1 \spaces\Rarr 0 \end{cases}$
