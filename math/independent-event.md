
---
title: 独立事件
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$

以下命题均为事件相互独立的充要条件

1. $P(AB) = P(A)P(B)$
1. $P(A|B) = P(A)$ \
  $\qquad \lrArr P(A|\overline B) = P(A)$ \
  $\qquad \lrArr P(A|B) = P(A|\overline B)$, $0 < P(B) < 1$
1. $A$ 与 $\overline B$ 或 $B$ 与 $\overline A$ 或 $\overline A$ 或 $\overline B$ 相互独立
1. $P(A|B) + P(\overline A | \overline B) = 1$, $0 < P(B) < 1$

$\textbf{Remark.}$ 由于 $P(A|B)P(B) = P(AB) = P(B|A)P(A)$, 如果 $P(A|B) = P(A)$, 则立刻得到命题 $1$. 

$\textbf{Remark.}$ $P(A|\overline{B}) + P(\overline{A}|B) = 1$, 则 $A, B$ 相互独立. 因为 

$$
\begin{aligned}
P(A|\overline{B}) + P(\overline{A}|B) 
&= \frac{P(A\overline{B})}{P(\overline B)} +  \frac{P(\overline{A}B)}{P(B)} \\
&= \frac{P(A) - P(AB)}{1-P(B)} + \frac{P(B) - P(AB)}{P(B)} \\
&= 1
\end{aligned}
$$

全展开得 $P(A)P(B) {\color{8a58ed} - P(AB)P(B) } + {\color{32a852} P(B) - P(B)^2} - P(AB) {\color{8a58ed} + P(AB)P(B)} = {\color{32a852} P(B) - P(B)^2}$. 即 $P(A)P(B) = P(AB)$.  
