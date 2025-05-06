
---
title: 数据库原理及应用 Lesson 2
tag: [](/index.md)
---

$\gdef\defeq{\operatorname{\overset{\text{def}}{=}}}$
$\gdef\spaces#1{~ #1 ~}$
$\gdef\join{\operatornamewithlimits{\Join}}$

### 记号

- $R((A_i)_{1 \le i \le n})$, $R \ni t = (a_i)$, $t[A_i] \defeq a_i$. 

- $R(X,Z)$, 当 $t[X]=x$ 时, $x$ 在 $R$ 中的象集 $Z_x \defeq \{ t[Z] : t \in R, t[X] = x \}$. 

- 选择 [selection] 或曰限制 [restriction] $\sigma_P(R) \defeq \{ x : x \in R \land P(x) \}$, $P$ 当然是谓词. 

- 投影 [projection] $\pi_A(R) \defeq \{ t[A] : t \in R \}$. 

- 连接 [join] $R \join\limits_{A \sim B} S \defeq \{ t_rt_s :  t_r \in R \land t_s \in S, t_r[A] \sim t_s[B] \}$. 也即 $R \join_\theta S \defeq \sigma_\theta(R \times S)$. 自然连接 $R \join S = \{ r \cup s : r \in R \land s \in S \land P(R \cup S) \}$. 在范畴论中, 连接正是纤维积. 一般地, 仅使用自然连接. 

- 除法 [division] $R \div S = \{ t[a_1, \cdots, a_n]: t \in R \spaces\land \forall s \in S, ~ ((t[a_1, \cdots, a_n] \cup S) \in R) \}$.

#### 码和主属性

- 候选码 [Candidate Key], 一组属性用于唯一的标识一个元组. 
- 全码, 整个元组.
- 主码 [Primary Key], 候选码选其一. 
- 主属性 [Prime attribute], 候选码的各个属性.

#### 三类关系

- 基本表
- 查询表
- 视图表

---

$\textbf{Example.}$ 排序构造. 设 $S = (a, b, c), ~ |S| = 3$, 求 $\sigma_{1.v \leqslant 2.v \spaces\land 2.v \leqslant 3.v}(S^3)$ 即为 $\operatorname{sort}(a,b,c)$. 

- [Relational Algebraic Equivalence Transformation Rules](https://www.postgresql.org/message-id/attachment/32513/EquivalenceRules.pdf)
- [Query Optimization in Relational Algebra](https://www.geeksforgeeks.org/query-optimization-in-relational-algebra/)
- [Equivalences (Rewrite Rules) in Relational Algebra](http://users.csc.calpoly.edu/~dekhtyar/468-Spring2016/lectures/lec16.468.pdf)

