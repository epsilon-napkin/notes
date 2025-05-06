
---
title: 矩阵的秩
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$
$\gdef\Mat{\operatorname{Mat}}$
$\gdef\rank{\operatorname{rank}}$

以下条件等价: 
1. $n$ 阶矩阵 $A$ 可逆. 
1. $\det A \ne 0$. 
1. $\rank(A) = n$, 即满秩. 
1. $A$ 的列 (或行) 向量组线性无关. 
1. 齐次线性方程组 $Ax = 0$ 只有零解.
1. 非齐次线性方程组 $Ax = b$ 有唯一解.
1. $A$ 的特征值均不为零. 

$\textbf{Remark.}$ 设 $A \in \Mat_{n \times n}(F)$, $Ax = 0$ 有非零解 $\iff \rank(A) < n$. 

$\textbf{Example.}$ 讨论矩阵 $A$ 的秩

$$
A \spaces= 
\begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & -1 & 1 & b \\
2 & a & 3 & 4 \\
3 & 1 & 5 & 7
\end{pmatrix}
$$

注意 $(r_1)_i = 1$, $(r_2)_1 = 0$, 故借其消去 $r_4$. 再用 $r_1, r_2$ 消去 $r_3$, 得到

$$
\begin{aligned}
\begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & -1 & 1 & b \\
2 & a & 3 & 4 \\
0 & -2 & 2 & 4
\end{pmatrix}
&\spaces\to 
\begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & -1 & 1 & b \\
2 & a & 3 & 4 \\
0 & 0 & 0 & 4-2b
\end{pmatrix}
\\
&\spaces\to 
\begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & -1 & 1 & b \\
0 & a-2 & 1 & 2 \\
0 & 0 & 0 & 4-2b
\end{pmatrix}
\spaces\to 
\begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & -1 & 1 & b \\
0 & 0 & a-1 & 2+b(a-2) \\
0 & 0 & 0 & 4-2b
\end{pmatrix}
\end{aligned}
$$

立刻得到: 
- $\rank A = 4 \implies a \ne 1, b \ne 2$.
- $\rank A = 3 \implies a \ne 1, b = 2$ 或 $a = 1, b \ne 2$.
- $\rank A = 2 \implies a = 1, b = 2$.
