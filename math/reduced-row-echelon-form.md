
---
title: 行最简形
---

又译作简化行梯形式, 是 [行梯矩阵](/math/row-echelon-form.md) 的进一步简化, 要求所有主元全为 $1$ 且落在主元以上的项全为 $0$. 即

$$
\begin{pmatrix}
I_r & X \\
0 & 0
\end{pmatrix}
$$

注意 [行梯矩阵](/math/row-echelon-form.md) 的 $U$ 这部分简化后未必是单位矩阵, 如

$$
\begin{pmatrix}
1 & 0 & a_{1} & 0 & b_{1} \\
0 & 1 & a_{2} & 0 & b_{2} \\
0 & 0 & 0 & 1 & b_{3}
\end{pmatrix}
$$

但我们仍以 $I_r$ 记之. 如果矩阵满秩, 则 $X, 0$ 部分不存在. 矩阵可能具有多个 [行梯形式](/math/row-echelon-form.md), 但其 [行最简形](/math/reduced-row-echelon-form.md) 却唯一. 

