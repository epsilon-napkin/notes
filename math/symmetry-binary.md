
---
title: 一类特殊的对称矩阵
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$

$$
\begin{aligned}
\begin{pmatrix}
a & b & b \\
b & a & b \\
b & b & a \\
\end{pmatrix}
&\spaces\to
\begin{pmatrix}
a+2b & a+2b & a+2b \\
b & a & b \\
b & b & a \\
\end{pmatrix}
\\
&\spaces\to
(a+2b)
\begin{pmatrix}
1 & 1 & 1 \\
b & a & b \\
b & b & a \\
\end{pmatrix}
\\
&\spaces\to
(a+2b)
\begin{pmatrix}
1 & 1 & 1 \\
0 & a-b & 0 \\
0 & 0 & a-b \\
\end{pmatrix}
\end{aligned}
$$

$r_1+r_2+r_3$, 立得 $\det M_3 = (a+2b)(a-b)^2$. 对于 $4$ 阶情形的处理也是完全相同. 

$$
\begin{aligned}
\begin{pmatrix}
a & b & b & b \\
b & a & b & b \\
b & b & a & b \\
b & b & b & a \\
\end{pmatrix}
&\spaces\to
(a+3b)
\begin{pmatrix}
1 & 1 & 1 & 1 \\
b & a & b & b \\
b & b & a & b \\
b & b & b & a \\
\end{pmatrix}
\\
&\spaces\to
(a+3b)
\begin{pmatrix}
1 & 1 & 1 & 1 \\
0 & a-b & 0 & 0 \\
0 & 0 & a-b & 0 \\
0 & 0 & 0 & a-b \\
\end{pmatrix}
\end{aligned}
$$

一般地, 可以用此方法计算 $n$ 阶的情形
$$ \det M_n \spaces= (a+(n-1)b)(a-b)^{n-1} $$
