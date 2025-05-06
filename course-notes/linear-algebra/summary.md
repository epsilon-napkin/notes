
---
title: 线性代数总复习
tag: [](/index.md)
---

$\gdef\spaces#1{~ #1 ~}$

Gauss 消元法的计算策略. 

1. 主元优先选 1 或小的整数, 方便作为因子.  
1. 按列消元生成 0. 

$\textbf{Example.}$ 求 $\det$. 

$$
\begin{pmatrix}
1 & 5 & 2 & 2 \\
2 & 7 & -3 & 4 \\
2 & -9 & 5 & 7 \\
1 & -6 & 4 & 2
\end{pmatrix}
$$

为了方便 $c_1$ 出现 $0$ 以及结果的绝对值尽量小, 我们尝试 

$$ r_2-2r_1, \space r_3-2r_1, \space r_4-r_1 $$

于是得到

$$
\begin{vmatrix}
1 & 5 & 2 & 2 \\
0 & -3 & -7 & 0 \\
0 & -19 & 1 & 3 \\
0 & -11 & 2 & 0
\end{vmatrix}
$$

最后调整位置 $c_2 \lrarr c_4, r_3 \lrarr r_4$

$$
(-1)^{2} \begin{vmatrix}
1 & 2 & 2 & 5 \\
0 & 3 & 1 & -19 \\
0 & 0 & -7 & -3 \\
0 & 0 & 2 & -11
\end{vmatrix}
$$

现在我们只差一个 $0$, $r_4+\frac{2}{7}r_3$. $t = -(11+\frac{6}{7})$. 

$$
\begin{vmatrix}
1 & 2 & 2 & 5 \\
0 & 3 & 1 & -19 \\
0 & 0 & -7 & -3 \\
0 & 0 & 0 & t
\end{vmatrix}
$$

立刻得到 $\det = 3 \times 7 \times (11+\frac67) = 3 \times (77 + 6) = 249$. 或者分块, 即

$$
\begin{array}{cc|cc}
1 & 2 & 2 & 5 \\
0 & 3 & 1 & -19 \\
\hline
0 & 0 & -7 & -3 \\
0 & 0 & 2 & -11
\end{array}
$$

可得 $\det = 3 \times (77+6) = 249$. 
