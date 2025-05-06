
---
title: 线性代数 Lesson 3
tag: [](/index.md)
---

$\gdef\Q{\mathbf{Q}}$
$\gdef\spaces#1{~ #1 ~}$
$\gdef\rank{\operatorname{rank}}$
$\gdef\Mat{\operatorname{Mat}}$

$\textbf{Example.}$ 已知 $D = \det M$, $M \in \Mat_{4 \times 4}(\R)$, $M_4 = (-1,1,2,1)$, 相应的代数余子式 $(A_i)_{1 \le i \le 4} = (1,3,-3,3)$, 求 $D$

$\textbf{Solution.}$ 即 $D = \sum_{1 \le i \le 4} a_iA_i = -1$. 

$\textbf{Example.}$ 判断线性方程组解的情况. $c_3(-k) \to c_1$, Gauss 消元得

$$
\begin{pmatrix} 
k & 0 & 1 \\ 
2 & k & 1 \\
k & -2 & 1 \\
\end{pmatrix}
\spaces\to
(-1)
\begin{pmatrix} 
0 & 0 & 1 \\ 
0 & -2 & 1 \\
2-k & k & 1 \\
\end{pmatrix}
$$

故 $\det(-) = 0 \iff k=2$ 时 $\rank(-) = 2$; 为了使 $\det(-) \ne 0 \iff \rank(-)=3 \iff$ 只有零解, 需要 $k \ne 2$. 

$\textbf{Remark.}$ $\Q$ 系数 Gauss 消元一例. 首先 $r_2 - 2r_1$, $r_3+r_1$

$$
\begin{pmatrix}
1 & 1 & 0 \\
2 & x+1 & 1 \\
-1 & 1 & x+1
\end{pmatrix}
\spaces\to 
\begin{pmatrix}
1 & 1 & 0 \\
0 & x-1 & 1 \\
-1 & 1 & x+1
\end{pmatrix}
\spaces\to 
\begin{pmatrix}
1 & 1 & 0 \\
0 & x-1 & 1 \\
0 & 2 & x+1
\end{pmatrix}
$$

随后 $r_3 - \frac{2}{x-1} \cdot r_2$ 使第二列的下方元素为零. 
$$
\begin{pmatrix}
1 & 1 & 0 \\
0 & x-1 & 1 \\
0 & 0 & x+1 - \frac2{x-1}
\end{pmatrix}
$$

即可得到 $\det(-) = (x-1)(x+1-\frac2{x-1}) = x^2-3$. 
