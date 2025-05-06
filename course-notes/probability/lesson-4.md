
---
title: 概率论 Lesson 4
tag: [](/index.md)
---

### 事件相互独立的充要条件

1. $P(AB) = P(A)P(B)$
1. $P(A|B) = P(A)$ \
  $\lrArr P(A|\overline B) = P(A)$ \
  $\lrArr P(A|B) = P(A|\overline B)$, $0 < P(B) < 1$
1. $A$ 与 $\overline B$ 或 $B$ 与 $\overline A$ 或 $\overline A$ 或 $\overline B$ 相互独立
1. $P(A|B) + P(\overline A | \overline B) = 1$, $0 < P(B) < 1$

$\textbf{Remark.}$ 由于 $P(A|B)P(B) = P(AB) = P(B|A)P(A)$, 如果 $P(A|B) = P(A)$, 则立刻得到 `1.`, $P(AB) = P(B|A)P(A|B)$.
