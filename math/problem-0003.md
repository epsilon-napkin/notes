
---
title: 几个极限问题
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$

$$
\begin{aligned}
\lim_{x \to \infty} \bigg(\frac{x^2}{(x-a)(x+b)}\bigg)^x
\spaces&= \lim_{x \to \infty} \Big(\frac{x}{x-a}\Big)^x \cdot \Big(\frac{x}{x+b}\Big)^x \\
\spaces&= \lim_{x \to \infty} \Big(1-\frac{a}{x}\Big)^{-x} \cdot \Big(1+\frac{b}{x}\Big)^{-x} \\
\spaces&= e^{a-b}
\end{aligned}
$$

