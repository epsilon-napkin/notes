
---
title: 概率论 Lesson 3
tag: [](/index.md)
---

$\gdef\defeq{\operatorname{\overset{\text{def}}{=}}}$
$\gdef\spaces#1{~ #1 ~}$
$\gdef\str#1{\footnotesize{#1}}$
$\gdef\hint#1{{\color{gray}{\str{#1}}}}$

### 条件概率 

$P(B) > 0$, $P(B|A) \defeq \frac{P(AB)}{P(A)}$. 

$\textbf{Corollary.}$ 注意容斥原理 $P(AB) = P(A) + P(B) - P(A \cup B)$, 故此 

$$
\frac1{P(A)} + \frac1{P(B)} - \frac{P(A \cup B)}{P(A)P(B)}
= P(A|B)P(B|A)
$$

或者等价地 

$$
P(A) + P(B) - P(A \cup B) = P(A)P(B) P(A|B)P(B|A)
$$

$\textbf{Example.}$ 已知 $P(A), P(A|B), P(B|A)$, 求 $P(A \cup B)$. 

$\textbf{Solution.}$ 

$$
\begin{aligned}
P(A \cup B) 
\spaces&= P(A) + P(B) - P(AB) \\
\spaces&= P(A) + \frac{P(AB)}{P(A|B)} - P(AB) \\
\spaces&= P(A) + P(AB) \Big(\frac{1}{P(A|B)} - 1\Big) \\
\spaces&= P(A) + P(B|A)P(A) \Big(\frac{1}{P(A|B)} - 1\Big) \\
\end{aligned}
$$

### 全概率公式

设 $B,B_2, \cdots, B_n$ 为完备事件组, 即 $B_iB_j = \varnothing$, 且 $\bigcup\limits_{i=1}^{n} B_i = \Omega$, 则事件 $A$ 的概率 $P(A)$ 为 

$$
P(A) \spaces= \sum_{i=1}^n P(AB_i) \spaces= \sum_{i=1}^n P(A|B_i)P(B_i)
$$

### 贝叶斯公式

设 $P(A) > 0$, 则 

$$
P(B_j|A) 
\spaces= \frac{P(A|B_j)P(B_j)}{\sum\limits_{i=1}^n P(A|B_i)P(B_i)}
\hint{\spaces= \frac{P(AB_j)}{P(A)}}
$$
