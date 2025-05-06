

`S(S#, SNAME, AGE, SEX)` \
`C(C#, CNAME, TEACHER)` \
`SC(S#, C#, GRADE)`

$\gdef\and{~\land~}$

$\gdef\S{\text{S}}$
$\gdef\C{\text{C}}$
$\gdef\SC{\text{SC}}$

$\gdef\sid{\text{S\#}}$
$\gdef\sname{\text{SNAME}}$

$\gdef\cid{\text{C\#}}$
$\gdef\cname{\text{CNAME}}$

$\gdef\age{\text{AGE}}$
$\gdef\sex{\text{SEX}}$
$\gdef\teacher{\text{TEACHER}}$
$\gdef\grade{\text{GRADE}}$

$\gdef\quote#1{\text{`#1'}}$
$\gdef\be{~\in~}$

$(1)$ $\pi_{\cid, \cname}(\sigma_{\text{\teacher ~=~ \quote{张三}}}(\C))$

$(2)$ $\pi_{\sid, \sname}(\sigma_{\age ~>~ 21 \and \sex ~=~ \quote{男}}(\S))$

$(3)$ $\pi_{\sname}(\S \Join (\pi_{\sid, \cid}(\SC) \div \pi_{\cid}(\sigma_{\text{\teacher ~=~ \quote{张三}}}(\C))))$

$(4)$ $\pi_{\cid}(\C) - \pi_{\cid}(\sigma_{\sname ~=~ \quote{李四}}(\S \Join \SC))$

$(5)$ $\pi_{\sid}(\SC \Join \sigma_{\teacher ~=~ \quote{张三}}(\C))$

$(6)$ $\pi_{\sid, \sname}(\S \Join \SC \Join (\sigma_{\cname ~=~ \quote{C 语言}}(\C)))$

$(7)$ $\pi_{\cid, \cname}(\C \Join (\pi_{\cid}(\SC) \div \pi_{\sid}(\S)))$

$(8)$ $\pi_{\cname, \teacher}(\C \Join (\sigma_{\sid ~=~ 3}(\SC)))$

$(9)$ $\pi_{\sid, \cid}(\SC) \div \pi_{\cid}(\sigma_{\sid = 2}(\SC))$

$(10)$ $\pi_{\sid}(\sigma_{\cid ~=~ \quote{K1}}(\SC)) \cap \pi_{\sid}(\sigma_{\cid ~=~ \quote{K5}}(\SC))$

$(11)$ $\pi_{\sname}(\sigma_{\cname ~=~ \quote{数据库}}(\C) \Join \sigma_{\grade ~\geqslant~ 60}(\SC) \Join \sigma_{\sex ~=~ \quote{女}}(\S) )$

$(12)$ $ \pi_{\sid}(\sigma_{1.\sid ~=~ 2.\sid \and 1.\cid ~\ne~ 2.\cid}(\SC \times \SC)) $



