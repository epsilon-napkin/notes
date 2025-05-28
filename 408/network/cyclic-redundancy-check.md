
---
title: 循环冗余检验
---

$\gdef\len{\operatorname{length}}$

$\gdef\spaces#1{~ #1 ~}$
$\gdef\str#1{{\footnotesize #1}}$
$\gdef\hint#1{{\color{gray}{\str{#1}}}}$

新帧 $M \cdot 2^n + R$ 的计算可通过 $\mathbf{F}_2[X]$ 上的带余除法 $(M, P) \to (Q, R)$ 完成. 这里 $n$ 是 $\deg P$, 即 $P$ 的位长度减一. 

$$
\hint{源数据} ~ M \cdot 2^n \spaces= \hint{生成多项式} ~ P \cdot \hint{} ~ Q + \hint{校验码} ~ R
$$

$\textbf{Example.}$ $M = 10110011$, $P = 10011$, 按以下步骤求得 $R = 0100$. 

$$
\begin{array}{ll}
& \hspace{0.9em} x^7 + x^5 + x^3 + x^2 \\
x^4 + x + 1 
& \sqrt{x^{11} + x^9 + x^8 + x^5 + x^4} \\
& \hspace{0.9em} x^{11} + x^8 + x^7 \\
& \hspace{0.6em} \text{------------------------------} \\
& \hspace{3em} x^9 + x^7 + x^5 + x^4 \\
& \hspace{3em} x^9 + x^6 + x^5 \\
& \hspace{3em} \text{-----------------------} \\
& \hspace{5.2em} x^7 + x^6 + x^4 \\
& \hspace{5.2em} x^7 + x^4 + x^3 \\
& \hspace{5.2em} \text{-----------------} \\
& \hspace{7.4em} x^6 + x^3 \\
& \hspace{7.4em} x^6 + x^3 + x^2 \\
& \hspace{7.4em} \text{-----------------} \\
& \hspace{9.6em} x^2
\end{array}
$$
