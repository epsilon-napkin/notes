
---
title: 一个经典的极限问题
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$

$$
\lim_{x \to \infty} ~ x^2 \ln(1+\tfrac1x) - x
\spaces\iff 
\lim_{x \to 0} ~ \frac1{x^2} \ln(1+x) - \frac1{x}
$$

我们直接使用 $\ln(1+x) \sim x-\frac{x^2}2$, 从而得到 $\lim\square = -\frac12$. 也就是说

$$
\lim_{x \to \infty} \frac{(1+\frac1x)^{x^2}}{e^x} 
\spaces= \lim_{x \to \infty} \frac{e^{x^2\ln(1+\frac1x)}}{e^x}
\spaces= \lim_{x \to \infty} e^{x^2\ln(1+\frac1x) - x}
\spaces= e^{-\frac12}
$$
