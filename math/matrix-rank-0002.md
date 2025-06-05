
---
title: 矩阵秩的计算
---

$\gdef\spaces#1{~ #1 ~}$

用初等行变换将矩阵化为 [行阶梯形](/math/row-echelon-form.md). 此时秩等于 [主元](/math/row-echelon-form.md) 的数量, 也是非零行的数量. 

$\textbf{Example.}$ 讨论矩阵 $A$ 的秩. 

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

此时可对于 $r(A) \le 4$ 讨论之.

- $r(A) = 4 \implies a \ne 1, b \ne 2$.
- $r(A) = 3 \implies a \ne 1, b = 2$ 或 $a = 1, b \ne 2$.
- $r(A) = 2 \implies a = 1, b = 2$.
