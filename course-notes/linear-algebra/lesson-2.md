
---
title: 线性代数 Lesson 2
tag: [](/index.md)
---

$\gdef\spaces#1{~ #1 ~}$
$\gdef\sgn{\operatorname{sgn}}$

交换矩阵 $M$ 两行或两列得到 $N$, 则 $\det M = -\det N$. 这可由逆序数的性质直接得到. 或者使用置换的语言 

$$
\begin{aligned}
\det M 
&\spaces= \sum_{\sigma \in \mathfrak{S}_n} \sgn(\sigma) a_{\sigma(1), 1} \cdots a_{\sigma(n), n} \\ 
&\spaces= \sum_{\sigma \in \mathfrak{S}_n} \sgn(\sigma) a_{1, \sigma(1)} \cdots a_{n, \sigma(n)}
\end{aligned}
$$

自然地, 可以根以下三点判断 $\det \square = 0$. 

1. 交换矩阵两行或两列后矩阵各分量不变. 
1. 列向量成比例, 即 $M = \alpha M'$, 而 $M'$ 满足 1.
1. 存在全为零的行或列, 也即存在零向量. 

### 行列式的性质汇总

1. 行列式与它的转置行列式相等, $\det M = \det M^T$.
1. 互换行列式的两行, 行列式变号 $\iff$ 逆序数间相差一个对换. 
1. 行列式的某一行中所有的元素都乘以同一个倍数 $k$, 等于用数 $k$ 乘以此行列式. 等价地, 行列式的某一行中所有元素的公因子可以提到行列式符号的外面．这可推出, 行列式中若有两行元素成比例, 则此行列式为零．
1. 若行列式的某一行的元素都是两数之和, 则它是两个按此分量加法展开的行列式之和, 其他分量不变.  
1. 把行列式的某一行 $r_i$ 乘以同一个倍数 $\alpha$ 然后加到另一行 $r_j$ 上去, 即 $r_j \to \alpha r_i + r_j$, 行列式值不变．

对于矩阵 $M$ 和一个选定的分量 $a_{ij}$, $a_{ij}$ 的代数余子式定义为 $A_{ij} = (-1)^{i+j}M_{ij}$, 余子式 $M_{ij}$ 是划去 $M$ 的元素 $a_{ij}$ 所在的第$i$ 行和第 $j$ 列所得的 $n-1$ 阶行列式. 
