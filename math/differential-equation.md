
---
title: 微分方程
tag: [](/math/index.md)
---

$\gdef\str#1{\footnotesize{#1}}$
$\gdef\d{\operatorname{d}}$
$\gdef\spaces#1{~ #1 ~}$
$\gdef\hint#1{{\color{grey}#1}}$

### 可分离变量的方程

$$ g(y)\d y \spaces= f(x) \d x $$

$\textbf{Example (2006, I, II).}$ $y' = \frac{y(1-x)}{x}$. 

$\textbf{Solution.}$ $\frac{y'}{y} = \frac1x - 1$ $\rArr$ $(\ln y)' = \frac1x - 1$ $\rArr$ $\ln |y| = \ln|x| - x + C$, $y = Cxe^{-x}$. 

### 齐次微分方程 

$$ \frac{\d y}{\d x} \spaces= \varphi\Big(\frac{y}{x}\Big) $$

令 $u = \frac{y}{x}$, 则 $y' = u + xu'$, $xu' = \varphi(u)-u$. 

### 一阶线性微分方程

$\textbf{Theorem.}$ 微分方程 $y' + p(x)y = q(x)$ 通解为 $y = u^{-1}(\int uq(x) \d x + C)$, 其中 $u(x) = e^{\int p(x) \d x}$. 

$\textit{proof.}$ 令 $u(x) = e^{\int p(x) \d x}$, 注意到 $u' = up(x)$ 以及 $(uy)' = u'y + uy'$, 我们将利用这一点消去左侧的 $p(x)y$. 两边同乘 $u$ 得到 $uy' + up(x)y = (uy)' = uq(x)$, 积分立得 $uy = \int uq(x) \d x + C$.

### Bernoulli 方程

$$ y' + p(x)y \spaces= Q(x)y^n $$

### 全微分方程

$$ \hint{(\d u(x, y) ~ = )} \quad P(x,y)\d x + Q(x,y) \d y \spaces= 0 $$

$$
\frac{\partial P}{\partial y} \spaces= \frac{\partial Q}{\partial x}, \quad (x,y) \in G
$$

