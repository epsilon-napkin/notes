
---
title: Wallis 积分公式
taxon: formula
asref: true
wikipedia: [Wikipedia](https://en.wikipedia.org/wiki/Wallis%27_integrals)
tag: [](/math/index.md)
---

$\gdef\d{\operatorname{d}}$
$\gdef\spaces#1{~ #1 ~}$

记 Wallis 序列为
$$
W_n 
\spaces= \int_0^{\frac\pi2} \sin^n x \d x 
\spaces= \int_0^{\frac\pi2} \cos^n x \d x
$$

则由分部积分可以得到 Wallis 积分公式

$$
W_n \spaces= \frac{(2n-1)!!}{n!!} \cdot W_{n \operatorname{mod} 2}
$$

这里 $W_{n \operatorname{mod} 2}$ 的值只有 $W_0 = \frac\pi2$ 和 $W_1 = 1$. 可以验证 $W_n$ 递减, 且满足 $W_n = \frac{n-1}n W_{n-2}$. 
