
---
title: 概率论总复习
tag: [](/index.md)
---

$\gdef\spaces#1{~ #1 ~}$
$\gdef\d{\operatorname{d}}$

正态分布 $x \sim N(\mu, \sigma^2)$, 分布函数为 

$$
F(x) \spaces= \frac{1}{\sqrt{2\pi} \sigma} \int_{-\infty}^x e^{-\frac{(t-\mu)^2}{2\sigma^2}} \d t, \quad x \in (-\infty, +\infty)
$$

注意 $u = \frac{t-\mu}{\sqrt{2}\sigma}$, $e^\square \to e^{-u^2}$, 由于 $\d u = \frac{1}{\sqrt{2}\sigma} \d t$. $\int_{-\infty}^{\infty} e^{-x^2} \d x = \sqrt{\pi}$. 于是

$$
\lim\limits_{x \to \infty} F(x) \spaces= \frac{1}{\sqrt{2\pi} \sigma} \cdot \sqrt{2}\sigma \cdot \sqrt{\pi} \spaces= 1
$$

当 $\mu = 0, \sigma^2 = 1$ 时, 称为标准正态分布 $x \sim N(0, 1)$. 

$$
\Phi(x) \spaces= \frac{1}{\sqrt{2\pi} \sigma} \int_{-\infty}^x e^{-\frac{t^2}{2}} \d t
$$

| 分布 | 记号 | 期望 | 方差 |
| - | - | - | - |
| $0\text{-}1$ 分布 | $B(1,p)$ | $p$ | $p(1-p)$ |
| 二项 分布 | $B(n,p)$ | $np$ | $np(1-p)$ |
| Poisson 分布 | $P(\lambda)$ | $\lambda$ | $\lambda$ |
| 几何分布 | $G(p)$ | $\dfrac{1}p$ | $\dfrac{1-p}{p^2}$ |
| 超几何分布 | $H(N,M,n)$ | $\dfrac{nM}{N}$ | $\dfrac{nM}{N}\Big(1-\dfrac{M}{N}\Big)\Big(\dfrac{N-n}{N-1}\Big)$ |
| 均匀分布 | $U(a,b)$ | $\dfrac{a+b}2$ | $\dfrac{(b-a)^2}{12}$ |
| 指数分布 | $E(\lambda)$ | $\dfrac{1}{\lambda}$ | $\dfrac{1}{\lambda^2}$ |
| 正态分布 | $N(\mu,\sigma^2)$ | $\mu$ | $\sigma^2$ |
