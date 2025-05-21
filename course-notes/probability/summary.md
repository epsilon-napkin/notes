
---
title: 概率论总复习
tag: [](/index.md)
---

$\gdef\spaces#1{~ #1 ~}$
$\gdef\d{\operatorname{d}}$


- 互不相容 $A \cap B = \varnothing$. 
  - 此时 $P(\overline A \cup \overline B) = P(\overline{AB}) = P(\Omega) = 1$.
- 对立事件 $A \cap B = \varnothing, A \cup B = \Omega$. 
  - 此时 $P(B) = P(\overline A) = 1-P(A)$. 
- 相互独立 $P(AB) = P(A)P(B)$. 
- 完备事件组 $\cap_i A_i = \varnothing$, $\cup_i A_i = \Omega$. 
  - 此时可用全概率公式和贝叶斯公式.

$\textbf{Remark.}$ $P(A|\overline{B}) + P(\overline{A}|B) = 1$, 则 $A, B$ 相互独立. 因为 

$$
\begin{aligned}
P(A|\overline{B}) + P(\overline{A}|B) 
&= \frac{P(A\overline{B})}{P(\overline B)} +  \frac{P(\overline{A}B)}{P(B)} \\
&= \frac{P(A) - P(AB)}{1-P(B)} + \frac{P(B) - P(AB)}{P(B)} \\
&= 1
\end{aligned}
$$

全展开得 $P(A)P(B) {\color{8a58ed} - P(AB)P(B) } + {\color{32a852} P(B) - P(B)^2} - P(AB) {\color{8a58ed} + P(AB)P(B)} = {\color{32a852} P(B) - P(B)^2}$. 即 $P(A)P(B) = P(AB)$.  

$\textbf{Remark.}$ 因为 $AB \subset A$, $AB \subset B$, 故 $$ P(AB) \spaces\leqslant \frac{P(A) + P(B)}{2}$$

---

典型随机试验满足的分布: 

#### 1. 射击 (如命中目标) 
- **分布类型**: **伯努利分布** (单次试验) 或 **二项分布** (多次独立试验). 
  - 若单次射击只有 “命中” (成功, 概率 $p$) 或“未命中” (失败, 概率 $1-p$) , 则服从 **伯努利分布**. 
  - 若进行 $n$ 次独立射击, 命中次数 $k$ 服从 **二项分布** $B(n, p)$, 其概率为: $$ P(X = k) = \binom{n}{k} p^k (1-p)^{n-k} $$

#### 2. 摸球 (放回 vs. 不放回) 
- **有放回摸球**: 
  - 每次摸球独立, 概率不变. 
  - 若关注某颜色球的出现次数 (如摸 $n$ 次) , 则服从 **二项分布** $B(n, p)$, 其中 $p$ 为单次摸到该球的概率. 

- **不放回摸球**: 
  - 每次摸球后总体改变, 试验不独立. 
  - 若总体有 $N$ 球, 其中 $K$ 个为目标球, 摸 $n$ 次中目标球数量 $k$ 服从 **超几何分布** $H(N, K, n)$, 其概率为: $$ P(X = k) = \frac{\binom{K}{k} \binom{N-K}{n-k}}{\binom{N}{n}} $$

#### 3. 抛硬币
- **分布类型**: **伯努利分布** (单次) 或 **二项分布** (多次) . 
  - 单次抛硬币 (如正面概率 $p = 0.5$) 是 **伯努利试验**. 
  - 抛 $n$ 次硬币, 正面次数 $k$ 服从 **二项分布** $B(n, p)$. 当 $p = 0.5$ 时, 称为对称二项分布. 

### 特殊情况扩展
- **几何分布**: 首次命中需要的射击次数, 或首次出现正面的抛硬币次数. 
- **泊松分布**: 二项分布的极限形式 ($n$ 大, $p$ 小, $\lambda = np$) . 

### 总结表
| 试验类型 | 条件 | 分布 |
|-|-|-|
| 单次射击/抛硬币 | 二分类结果         | 伯努利分布   |
| 多次独立试验   | 固定概率           | 二项分布     |
| 不放回摸球     | 有限总体           | 超几何分布   |
| 首次成功       | 等待第一次成功     | 几何分布     |

根据具体问题条件 (如试验次数、是否独立、总体是否有限) , 选择对应的分布. 

--- 

### 分布函数和概率的处理

- $F(x) := \int_{-\infty}^x f(x) \d x = P(X \leqslant x) $. 
- $P(a \leqslant X \leqslant b) = F(b) - F(a)$. 
- $P(X \gt x) = 1 - P(X \leqslant x)$. 
- 标准化 $x \mapsto \frac{x - \mu}{\sigma}$. 

---

正态分布 $x \sim N(\mu, \sigma^2)$, 分布函数为 

$$
F(x) \spaces= \frac{1}{\sqrt{2\pi} \sigma} \int_{-\infty}^x e^{-\frac{(t-\mu)^2}{2\sigma^2}} \d t, \quad x \in (-\infty, +\infty)
$$

注意 $u = \frac{t-\mu}{\sqrt{2}\sigma}$, $e^\square \to e^{-u^2}$, 由于 $\d u = \frac{1}{\sqrt{2}\sigma} \d t$. $\int_{-\infty}^{\infty} e^{-x^2} \d x = \sqrt{\pi}$. 于是

$$
\lim\limits_{x \to \infty} F(x) \spaces= \frac{1}{\sqrt{2\pi} \sigma} \cdot \sqrt{2}\sigma \cdot \sqrt{\pi} \spaces= 1
$$

当 $\mu = 0, \sigma^2 = 1$ 时, 称为标准正态分布 $x \sim N(0, 1)$. 

$$
\Phi(x) \spaces= \frac{1}{\sqrt{2\pi} \sigma} \int_{-\infty}^x e^{-\frac{t^2}{2}} \d t
$$

| 分布 | 记号 | 期望 | 方差 |
| - | - | - | - |
| $0\text{-}1$ 分布 | $B(1,p)$ | $p$ | $p(1-p)$ |
| 二项 分布 | $B(n,p)$ | $np$ | $np(1-p)$ |
| Poisson 分布 | $P(\lambda)$ | $\lambda$ | $\lambda$ |
| 几何分布 | $G(p)$ | $\dfrac{1}p$ | $\dfrac{1-p}{p^2}$ |
| 超几何分布 | $H(N,M,n)$ | $\dfrac{nM}{N}$ | $\dfrac{nM}{N}\Big(1-\dfrac{M}{N}\Big)\Big(\dfrac{N-n}{N-1}\Big)$ |
| 均匀分布 | $U(a,b)$ | $\dfrac{a+b}2$ | $\dfrac{(b-a)^2}{12}$ |
| 指数分布 | $E(\lambda)$ | $\dfrac{1}{\lambda}$ | $\dfrac{1}{\lambda^2}$ |
| 正态分布 | $N(\mu,\sigma^2)$ | $\mu$ | $\sigma^2$ |
