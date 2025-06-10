
---
title: Gauss--Jordan 消元法
asref: true
tag: [](/math/index.md)
---

> 本节完全来自 [代数学讲义](/bib/lectures-on-algebra.md), 笔者只做了顺序调整或微不足道的补充. 

大而化之地说, Gauss--Jordan 消元法的思路是在同解的方程组之间过渡, 直至方程组化为一类可直接求解的形式为止. Gauss--Jordan 消元法的思路是用以下三种操作来简化方程组, 或者换句话说, 简化相应的矩阵.

[初等行变换](/math/gauss-jordan-0001.md#:embed)

如果
$\left( x_{1},\cdots,x_{n} \right)$ 是原矩阵对应的方程组的解,
则相对于初等行变换之后的矩阵, 它仍是对应的方程组的解.
注意到上述每一种操作都可以被相应的逆操作撤销, 以回到原来的矩阵. 综上, 矩阵的 [初等行变换](/math/gauss-jordan-0001.md) 给出同解的方程组.

消元法的目标称为 [行梯矩阵](/math/row-echelon-form.md), 它们所对应的线性方程组易于求解. 回到增广矩阵, 求解下面形式的方程组只需将 $a_{ij}$ 不断向前一行代入.

$$\begin{pmatrix}
a_{11} & \cdots & a_{1n} & b_{1~} \\
       & \ddots & \vdots & b_{2~} \\
       &        & a_{mn} & b_{m}
\end{pmatrix}$$

其中左下空白部分的矩阵元皆为零, $a_\square$ 部分逐行向内严格缩进, 而且要求 $a_{ij}$ 部分每一行的左端都是非零元, 它们称为此 [行梯矩阵](/math/row-echelon-form.md) 的 **主元**. 主元们对应的列为 **主列**. 注意到方程组对非主列所对应的变元 $X_{j}$ 没有约束 --- 它们是 "自由变元".

更加严格却不尽直观的定义如下:

- 存在整数 $0 \leq r \leq m$ 使得第 $i$ 行全为 $0$ 当且仅当 $i > r$ (因此行梯矩阵中不全为 $0$ 的行恰好是前 $r$ 行);

- 对于每个 $1 \leq k \leq r$ (非零行的编号), 取 $$j_{k} ≔ \min\left\{ j:a_{kj} \neq 0 \right\}$$ 则 $j_{1} < j_{2} < \cdots < j_{r}$. 先前提及的主元正是 $a_{1,j_{1}},\cdots,a_{r,j_{r}}$.

在关于 [行梯矩阵](/math/row-echelon-form.md) 的定义中, 倘若进一步对所有主元全为 $1$ 且落在主元以上的项全为 $0$, 则称此矩阵为 [简化行梯矩阵](/math/reduced-row-echelon-form.md). 虽然矩阵可能具有多个 [行梯形式](/math/row-echelon-form.md), 但其 [简化行梯形式](/math/reduced-row-echelon-form.md) 是唯一的. 
