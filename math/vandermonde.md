
---
title: Vandermonde 矩阵
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$

$n \times n$ 的 Vandermonde 矩阵 $V$ 定义为：

$$
V \spaces= \begin{pmatrix}
1 & x_1 & x_1^2 & \cdots & x_1^{n-1} \\
1 & x_2 & x_2^2 & \cdots & x_2^{n-1} \\
\vdots & \vdots & \vdots & \ddots & \vdots \\
1 & x_n & x_n^2 & \cdots & x_n^{n-1}
\end{pmatrix}
$$

其行列式有简洁且重要的形式

$$ \det(V) \spaces= \prod_{1 \leq i < j \leq n} (x_j - x_i) $$

我们下面给出一个在已知命题叙述时的自然证明. 

$proof.$ 注意到 $x_i = x_j$ 时 $\det(V) = 0$, 这就意味着 $x_i - x_j$ 除尽 $\det(V)$. 因此 $\prod_{1 \leq i < j \leq n} (x_j - x_i)$ 除尽 $\det(A)$, 比较 $x_n^{n-1}x_{n-1}^{n-2} \cdots x_2 \cdot 1$ 的系数即可. 
