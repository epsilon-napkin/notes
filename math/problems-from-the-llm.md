
---
title: Problems from THE LLM
tag: [](/math/index.md)
---

> 出一道考研数学难度的极限问题, 接近真题, 提供答案

1. $\lim\limits_{x \to 0} \frac{\sqrt{1+\sin x}-\sqrt{1-\sin x}}{x^2}$

$\sin x \sim x - \frac{x^3}6$, $(1+x)^{\frac12} \sim 1+\frac{x}2 - \frac{x^3}{12}$, $(1-x)^{\frac12} \sim 1-\frac{x}2+\frac{x^3}{12}$. 分子 $\sim x - \frac{x^3}{6}$. $\lim \square \sim \lim_{x \to 0} \frac1x$, 故极限不存在. 将 $x^2$ 换为 $x$ 则 $\lim \square = 1$. 

2. $\lim\limits_{x \to 0} \big(\frac{e^x + e^{-x}}{2}\big)^{\frac1{x^2}}$. 

取对数, $\lim\limits_{x \to 0} \exp(\frac1{x^2}\ln(\frac{e^x + e^{-x}}{2})) \sim \lim\limits_{x \to 0} \exp(\frac1{x^2}\ln(1+\frac{x^2}2)) \sim \lim\limits_{x \to 0} \exp(\frac1{x^2} \cdot \frac{x^2}2) = e^{\frac12}$. 

$\textbf{Remark.}$ $\cosh x = \frac{e^x + e^{-x}}{2} = \sum_{k \geqslant 0}\frac{x^{2k}}{(2k)!} = 1 + \frac{x^2}{2!} + \frac{x^4}{4!} + \frac{x^6}{6!} + \cdots$

3. $\lim\limits_{x \to 0} \frac{\ln(1+x) - x\cos x}{x^3}$

$\cos x \sim 1 - \frac{x^2}2 + \frac{x^4}{24} + \Re\sum_{n \geqslant 5} i^n\frac{x^n}{n!}$. $\square \sim \frac{x - \frac{x^2}2 + \frac{x^3}3 - x + \frac{x^3}2}{x^3} = \frac{-\frac{x^2}2+\frac{5x^3}{6}}{x^3} = \frac{5}{6} - \frac{1}{2x}$. 故极限发散, 将 $x^3$ 换为 $x^2$ 则 $\lim \square = -\frac{1}{2}$. 

$\textbf{Remark.}$ $\ln(1+x) = \sum_{k \geqslant 0} (-1)^{k+1}\frac{x^k}{k} = x - \frac{x^2}2 + \frac{x^3}3 - \cdots$. 

4. $\lim\limits_{x \to 0} \frac{e^x\sin x - x(1+x)}{x^3}$

$\square \sim \frac{(1+x+\frac{x^2}{2}+\frac{x^3}{6})(x - \frac{x^3}6) - x - x^2}{x^3} \sim \frac{\frac{x^3}2 - \frac{x^3}6}{x^3} = \frac{1}2-\frac{1}6 = \frac{1}3$

---

