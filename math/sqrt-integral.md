
---
title: 一类常见的二重积分
tag: [](/math/index.md)
---

$\gdef\d{\operatorname{d}}$
$\gdef\spaces#1{~ #1 ~}$

$$
\iint_\Omega \sqrt{a^2-x^2-y^2} \d x \d y
$$

这里 $\Omega$ 是第一象限的扇形 $x^2+y^2 \le a^2$. 很明显, 令 $\rho^2 = x^2+y^2$, $0 \le \theta \le \frac{\pi}2$, 则积分改写为 

$$
\begin{aligned}
\iint_\Omega \sqrt{a^2-\rho^2} \rho \d \rho \d \theta
\spaces= \int_0^{\frac{\pi}2} -\frac13(a^2-\rho^2)^\frac32\Big|_{0}^{a^2} \d \theta 
\spaces= \frac{\pi a^3}6
\end{aligned}
$$

这里的 $-\frac13 (a-\rho)^{\frac32}$ 来自单变量微积分中此类根式的常见处理 

$$
\begin{aligned}
\frac12 \int \sqrt{a^2-\rho^2} \d \rho^2 
&\spaces= -\frac12 \int \sqrt{a^2-\rho^2} \d (a^2-\rho^2) \\
&\spaces= -\frac12 \cdot \frac23 (a^2-\rho^2)^{\frac32}
\end{aligned}
$$

$\textbf{Remark.}$ 另请注意到此积分为半径 $a$ 的球体体积的 $\frac18$, 立得 $\frac18 \cdot \frac{4\pi a^3}3 = \frac{\pi a^3}6$. 
