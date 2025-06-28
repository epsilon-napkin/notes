
---
title: 余弦积分估计
tag: [](/math/index.md)
---

$\gdef\spaces#1{~ #1 ~}$
$\gdef\d{\operatorname{d}}$

设平面曲线 $\ell: y = \sin x$, $0 \leqslant x \leqslant \pi$. 证明 

$$ \frac{3\sqrt2}{8}\pi^2 \spaces\leqslant \int_\ell x \d s \spaces\leqslant \frac{\sqrt2}{2}\pi^2 $$

简单剥蒜后我们知道 $\int_\ell x \d s = \int_0^\pi x \sqrt{1+\cos^2x} \d x $, 这个积分当然不初等, 用 $\cos x \leqslant 1$ 得到上界后. 需要观察到 $f(x) = x \sqrt{1+\cos^2x}$ 关于 $x = \frac{\pi}{2}$ 对称, 即 $f(x) = f(\pi-x)$, 有

$$ \int_0^\pi x \sqrt{1+\cos^2x} \d x \spaces= \int_0^\pi (\pi-x) \sqrt{1+\cos^2(\pi-x)} \d x $$

现在记 $F = \int_0^\pi f(x) \d x$, 由上面的对称得到 

$$ 2F(x) \spaces= F(\pi-x) + F(x) \spaces= \pi \int_0^\pi \sqrt{1+\cos^2x} \d x $$

我们能合并 $F(\pi-x) + F(x)$ 是因为 $\cos^2(\pi-x) = \cos^2(x)$. 现在

$$
\begin{aligned}
F(x) 
&\spaces= \frac{\pi}{2} \int_0^\pi \sqrt{1+\cos^2x} \d x \\
&\spaces= \frac{\pi}{2} \int_0^\pi \frac{1+\cos^2x}{\sqrt{1+\cos^2x}} \d x \\
&\spaces\geqslant \frac{\pi}{2\sqrt{2}} \int_0^\pi 1+\cos^2x \d x \\
&\spaces= \frac{\pi}{2\sqrt{2}} \bigg(x + \frac{\sin 2x}{4} + \frac{x}{2}\bigg)\bigg|_0^\pi \\
&\spaces= \frac{3\sqrt2}{8}\pi^2
\end{aligned}
$$

---

$\textbf{Remark.}$ $\int \cos^2x \d x = \int \cos x \d \sin x = \cos x \sin x - \int \sin x \d \cos x$, 于是 $2\int \cos^2x \d x = \int \cos x \d \sin x - \int \sin x \d \cos x + \cos x \sin x = x + \cos x \sin x$. 解得 $\int \cos^2x \d x = \frac{x}{2} + \frac{\sin 2x}{4}$. 这里我们使用 $\int \cos x \d \sin x - \int \sin x \d \cos x = \int \cos^2 x \d x + \int \sin^2 x \d x =  x$. 
