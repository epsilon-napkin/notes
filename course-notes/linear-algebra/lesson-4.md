
---
title: 线性代数 Lesson 4
tag: [](/index.md)
---

$\gdef\Q{\mathbf{Q}}$
$\gdef\bmid{~\Bigg|~}$
$\gdef\spaces#1{~ #1 ~}$
$\gdef\rank{\operatorname{rank}}$
$\gdef\Mat{\operatorname{Mat}}$

求 $A = \Big(\begin{smallmatrix} 2 & 1 & -1 \\ 2 & 1 & 0 \\ 1 & -1 & 1 \end{smallmatrix}\Big)$ 的逆. 

$\textbf{Solution.}$ 

$$
\begin{aligned}
(A|I) 
&\to_{r_1+r_3} \left(\begin{matrix} 3 & 0 & 0 \\ 2 & 1 & 0 \\ 1 & -1 & 1 \end{matrix} \bmid \begin{matrix} 1 & 0 & 1 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{matrix} \right)
\to_{\frac13 r_1} \Bigg(\begin{matrix} 1 & 0 & 0 \\ 2 & 1 & 0 \\ 1 & -1 & 1 \end{matrix} \bmid \begin{matrix} \frac13 & 0 & \frac13 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{matrix} \Bigg) \\
&\to_{r_3-r_1} \Bigg(\begin{matrix} 1 & 0 & 0 \\ 2 & 1 & 0 \\ 0 & -1 & 1 \end{matrix} \bmid \begin{matrix} \frac13 & 0 & \frac13 \\ 0 & 1 & 0 \\ -\frac13 & 0 & \frac23 \end{matrix} \Bigg)
\to_{r_2-2r_1} \Bigg(\begin{matrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & -1 & 1 \end{matrix} \bmid \begin{matrix} \frac13 & 0 & \frac13 \\ -\frac23 & 1 & -\frac23 \\ -\frac13 & 0 & \frac23 \end{matrix} \Bigg) \\
&\to_{r_3+r_2} \Bigg(\begin{matrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{matrix} \bmid \begin{matrix} \frac13 & 0 & \frac13 \\ -\frac23 & 1 & -\frac23 \\ -1 & 1 & 0 \end{matrix} \Bigg) \\
\end{aligned}
$$
