
---
title: 矩阵求逆
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$

使用 [初等行变换](/math/gauss-jordan.md) 计算 $(A, E) \to (E, A^{-1})$, 即可求得 $A^{-1}$. 固定步骤为, 先化为对角阵, 再化为单位阵.

$\textbf{Example.}$ 考虑 $A = (\begin{smallmatrix} a & b \\ c & d \end{smallmatrix})$, 此时我们有

$$
\begin{aligned}
\left(\begin{array}{cc:}
   a & b & 1 & 0 \\
   c & d & 0 & 1 \\
\end{array}\right)
&\spaces\to
\left(\begin{array}{cc:}
   1 & ba^{-1} & a^{-1} & 0 \\
   c & d & 0 & 1 \\
\end{array}\right)
\quad \color{gray}{r_1 a^{-1}}
\\
&\spaces\to
\left(\begin{array}{cc:}
   1 & ba^{-1} & a^{-1} & 0 \\
   0 & d-cba^{-1} & -ca^{-1} & 1 \\
\end{array}\right)
\quad \color{gray}{r_2 - cr_1}
\\
&\spaces\to
\left(\begin{array}{cc:}
   1 & ba^{-1} & a^{-1} & 0 \\
   0 & 1 & -ca^{-1}(d-cba^{-1})^{-1} & (d-cba^{-1})^{-1} \\
\end{array}\right)
\quad \color{gray}{r_2 (d-cba^{-1})^{-1}}
\\
&\spaces\to
\left(\begin{array}{cc:}
   1 & 0 & d(ad-bc)^{-1} & -b(ad-bc)^{-1} \\
   0 & 1 & -c(ad-bc)^{-1} & a(ad-bc)^{-1} \\
\end{array}\right)
\quad \color{gray}{r_1 - ba^{-1} r_2}
\end{aligned}
$$

这里最后的 $M_{11} = \frac1a + \frac b a \cdot \frac c {a (d - \frac{cb}a)} = \frac1a (1 + \frac{bc}{ad - bc}) = \frac{d}{ad-bc}$, 其他项可类似地验证. 

