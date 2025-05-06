
---
title: $\Gamma$ 函数
page-title: Γ 函数
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$
$\gdef\quads#1{\quad #1 \quad}$
$\gdef\eqq{\quads=}$
$\gdef\d{\operatorname{d}}$
$\gdef\hint#1{\color{grey}#1}$

$$
\begin{aligned}
\Gamma(s) 
&\spaces{:=} \int_0^{+\infty} x^{s-1}e^{-x} \d x \\
&\hint{\spaces{=} \int_0^{+\infty} x^se^{-x} \frac{\d x}{x} } \\
&\spaces{=} \mathcal{M}(e^{-x})|_s
\end{aligned}
$$

$\textbf{Proposition.}$ $\Gamma$ 函数有以下常用性质. 
  - $\Gamma(s+1) = s\Gamma(s)$. 
  - $\Gamma(\frac12) = \sqrt{\pi}$. 
  - $\Gamma(n+1) = n!$. 
  - $\Gamma(s)\Gamma(1-s) = \frac{\pi}{\sin \pi s}$. 
