
---
title: 线性方程组解的情况
---

$\gdef\Mat{\operatorname{Mat}}$

设 $A \in \Mat_{m \times n}(F)$, 向量 $b \in F^m$. $x \in F^n$. 线性方程组解的情况完全由 $r(A)$ 和 $r(A,b)$ 决定. 

1. 齐次方程组 $Ax = 0$ 有非零解 $\iff r(A) < n$. 
1. $Ax = b$ 有解 $\iff$ $r(A) = r(A,b)$. 
1. $Ax = b$ 无解 $\iff$ $r(A) < r(A,b)$. 
1. $Ax = b$ 有唯一解 $\iff$ $r(A) = r(A,b) = n$. 
1. $Ax = b$ 有无穷多解 $\iff$ $r(A) = r(A,b) < n$. 此时存在 $n-r(A)$ 个自由变量. 
