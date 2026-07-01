#set text(lang: "he", font: "David CLM")
#set page(margin: 1.75in, footer: context {
  let page_num = counter(page).get().first()
  if page_num > 1 {
    set text(size: 10pt)
    "214269565"
    h(40%)
    counter(page).display()
  }
})
#set document(author: "יונתן אבידור - 214269565", title: "אלגברה ב' 01040168", description: "גליון 9", date: auto)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#import "@preview/ouset:0.2.0": underset
#let Im = math.op("Im")
#let Ker = math.op("Ker")
#let ip(x, y) = $lr(chevron.l #x, #y chevron.r)$
#let english(content) = {
  set text(lang: "en")
  //set align(center)
  block(content)
}
#align(center + horizon)[
  #set text(font: "Hadasim CLM")

  #text(size: 22pt, weight: "bold")[אלגברה ב' - 01040168] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 9]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1
יהי $V="M"_n (RR)$ עם המכפלה $ip(X, Y) = tr(Y^t X)$, ותהי $B in V$. נגדיר אופרטור
$
  Phi_B : V arrow V \
  A mapsto B A
$
עבור כל אחד מהסעיפים הבאים, הוכיחו את טענתכן.
== סעיף א'
חשבו את $Phi_B^*$
== סעיף ב'
עבור אילו מטריצות $B$ האופרטור $Phi_B$ נורמלי?
== סעיף ג'
עבור אילו מטריצות $B$ האופרטור $Phi_B$ צמוד לעצמו?
== סעיף ד'
עבור אילו מטריצות $B$ האופרטור $Phi_B$ אורתוגונלי?
= פתרון 1
== סעיף א'
יהיו $C,D in V$\
נחפש $Phi_B^* in "End"(V)$ המקיים
$
  ip(Phi_B C, D) = ip(C, Phi_B^* D)
$
נפתח את הביטוי לפי הגדרה
$
  ip(Phi_B C, D) = tr(D^t Phi_B C) = tr(D^t B C)\
  = tr((D^t B) C) = tr((B^t D)^t C)= ip(C, B^t D)
$
מצאנו את $Phi_B^*$!
$
  Phi_B^*: V -> V \
  A mapsto B^t A
$

== סעיף ב'
תהא $A in "M"_n (RR)$\
נחפש מהן המטריצות $B in "M"_n (RR)$ אשר עבורן
$
  Phi_B^* (Phi_B (A)) = Phi_B (Phi_B^* (A))
$
נפתח את הביטוי לפי ההגדרה של האופרטור ושל האופרטור הצמוד שמצאנו בסעיף א'
$
  Phi_B^*(Phi_B (A)) = B^t B A\
  Phi_B (Phi_B^* (A) = B B^t A
$
זה נכון לכל $A$, לכן בפרט זה נכון עבור $A = I_n$ \
ואז $B B^t = B^t B$ כלומר $B$ צריכה להתחלף בכפל עם השחלוף של עצמה
== סעיף ג'
נחפש עבור אילו $B in "M"_n (RR)$ מתקיים $Phi_B A = Phi_B^* A$ לכל $A in "M"_n (RR)$	, כלומר
$
  B A = B^t A
$
זה נכון לכל $A$, לכן בפרט זה נכון עבור $A = I_n$ \
מכאן ש $B = B^t$. \
לכן $B$ סימטרית.\
מכאן ש$Phi_B^* = Phi_B$ עבור כל $B in "Sym"_n (RR)$
== סעיף ד'
ראשית, אופרטור אורתוגונלי צריך להיות הפיך, לכן מראש אנחנו יודעים שאנחנו מחפשים אך ורק $B in "M"_n (RR)$ הפיכות.\
מהגדרת אופרטור אורתוגונלי מתקיים
$
  Phi_B^* = Phi_B^(-1)
$
לכן
$
  Phi_B^* Phi_B = I d
$
לכן לכל $A in "M"_n (RR)$ מתקיים
$
  Phi_B^* Phi_B A = A
$
בסעיף ב' הראנו ש $Phi_B^* Phi_B = B^t B A$
לכן אנחנו מחפשים את המטריצות $B$ המקיימות
$
  B^t B A = A
$
מכיוון שזה נכון לכל $A$, זה נכון בפרט עבור $A = I_n$\
$B B^t I = I$ אומר $B B^t = I$
לכן, $B$ צריכה להיות אוניטרית (אורתוגונלית)
#pagebreak()
= שאלה 2
יהי $V$ מרחב מכפלה פנימית סוף-מימדי, יהי $W <= V$ תת-מרחב של $V$, ותהי $P_W$ ההטלה האורתוגונלית על $W$. \
הראו כי $P_W$ אורתוגונלית אם ורק אם $W = V$
= פתרון 2
=== $<==$
נניח כי $P_W$ אורתוגונלית, נרצה להראות כי $W=V$\
יהי $v in V$, מכיוון ש-$W plus.o W^perp = V$ ניתן לכתוב באופן יחיד $v = underbrace(w,in W) + underbrace(u, in W^perp)$\
מכיוון ש-$P_W$ היא ההטלה האורתוגונלית על $W$  מתקיים $
P_W (v) = P_(W)(w+u) underset(=,P_W" לינאריות ") P_(W)(w)+P_(W)(u) = P_(W)(w) = w
$
מכיוון ש-$P_W$ היא אופרטור אורתוגונלי נקבל גם כי $norm(w)=norm(P_W (v))=norm(v)$\
מכאן ש
$
norm(w+u) = norm(w)
$
ולכן $norm(u) = 0$, מכאן ש-$u=0_V$ ו-$v=w in W$
משרירותיות $v$, קיבלנו כי *כל* וקטור ב-$V$ שייך ל-$W$ ולכן $V subset.eq W$.\
נתון כי $W <= V$ ולכן $W subset.eq V$.\
הראינו הכלה דו כיוונית ולכן שוויון, $W =V$
=== $==>$
נניח כי $W=V$, נרצה להראות כי $P_W$ אורתוגונלית\ $W = V$ ולכן
$P_W = P_V = I d_V$\
נותר להוכיח כי $I d_V^* = I d_V^(-1)$, ראשית נזכור כי $I d_V^(-1) = I d_V$\
יהיו $u,v in V$ 
$
ip(I d_V (v),u) = ip(v,I d_V^*(u))
$
נזכור ש $I d_V (v)=v$, לכן
$
ip(v, u ) = ip(v, I d_V^* (u))
$
לכן $u = I d_V^* (u)$, כלומר $I d_V^* = I d_V$\
כנדרש\
$square.filled$
#pagebreak()
= שאלה 3
יהי $V$ מרחב מכפלה פנימית סוף-מימדי.
== סעיף א'
יהי $phi in V^*$ ויהי $w in V$ עבורו $phi(v) = ip(v, w)$ לכל $v in V$. הוכיחו כי
$
  Ker(phi) = "Span"(w)^perp
$
== סעיף ב'
יהי $phi in V^*$ ויהי $w in V$ עבורו $phi(v) = ip(v, w)$ לכל $v in V$. נגדיר
$
  H_phi := {v in V |phi(v) = 1}
$
הוכיחו כי
$
  H_phi ={ w/norm(w)^2 + u mid(|) u in "Span"(w)^perp}
$
והסיקו כי $w/norm(w)^2$ הוא הוקטור עם הנורמה המינימלית ב-$H_phi$
= פתרון 3
== סעיף א'
נתבונן ב $Ker(phi)$
$
Ker(phi) = {v in V mid(|) phi(v) = 0} = {v in V mid(|) ip(v,w) = 0} \ = {v in V mid(|) overline(alpha) ip(v,w) =0,alpha in FF} = {v in V mid(|) ip(v,alpha w)=0,alpha in FF} = {v in V mid(|) v perp alpha w} 
\ = { v in V mid(|) v perp "Span"(W),alpha in FF} = {v in V mid(|) v in "Span"(W)^perp}
$
== סעיף ב'
נוכיח כי $ {v in V |phi(v) = 1} = { w/norm(w)^2 + u mid(|) u in "Span"(w)^perp} $ באמצעות הכלה דו-כיוונית.
=== $subset.eq$
יהי $v in V$ כך ש $phi(v) =1$\
$"Span"(w) <= V$ ולכן מתכונות משלים אורתוגונלי $"Span"(w) plus.o "Span"(w)^perp = V$\
לכן קיימים ויחידים $u in "Span"(w)^perp, alpha in FF$ כך ש
$ 
v = alpha w + u
$
לכן נותר לנו רק להוכיח כי $alpha = 1/norm(w)^2$ \
מההנחה מתקיים $ip(alpha w + u,w)=1$\
מלינאריות ברכיב הראשון מתקבל כי
$
alpha ip(w,w) + ip(u,w) = 1
$
מכיוון ש $u in "Span"(w)^perp$, $u perp w$ ומתקיים $ip(u,w)=0$ לכן\
 $alpha ip(w,w) + ip(u,w) = alpha ip(w,w)= 1$\
$ip(w,w) = norm(w)^2$ ולכן $alpha norm(w)^2 = 1$ ומכאן ש $alpha = 1/norm(w)^2$\
לכן, $v = w/norm(w)^2 + u$ עבור$
u in "Span"(w)^perp$\  מכאן ש$ v
 in  { w/norm(w)^2 + u mid(|) u in "Span"(w)^perp}
 $
משרירותיות $v$  
$
 {v in V |phi(v) = 1} subset.eq { w/norm(w)^2 + u mid(|) u in "Span"(w)^perp}
$
=== $supset.eq$
יהי $v in {w/norm(w)^2 + u mid(|) u in "Span"(w)^perp}$, לכן קיים $u in "Span"(w)^perp$ כך ש
$
v = w/norm(w)^2 + u
$
נתבונן ב$phi(v)$
$
phi(v) = ip(v,w) = ip(w/norm(w)^2 + u,w) = 1/norm(w)^2 underbrace(ip(w,w),=norm(w)^2) + ip(u,w)
$
$u in "Span"(w)^perp$ ולכן $u perp w$ ומכאן ש $ip(u,w)=0$, לכן
$
1/norm(w)^2 norm(w)^2 + ip(u,w) = 1/cancel(norm(w)^2) cancel(norm(w)^2) = 1
$
לכן $phi(v)=1$, מכאן ש $v in {phi(v)=1 mid(|) v in V}$\
משרירותיות $v$ 
$
{ w/norm(w)^2 + u mid(|) u in "Span"(w)^perp} subset.eq {v in V |phi(v) = 1}
$
הראינו הכלה דו כיוונית ולכן שוויון
$
 {v in V |phi(v) = 1} = { w/norm(w)^2 + u mid(|) u in "Span"(w)^perp}
$
נשים לב כי
$
(forall v in H_phi)(exists u in "Span"(w)^perp): v=  w/norm(w)^2 + u
$
ומכיוון ש-$u perp w$, ממשפט פיתגורס מתקבל כי
$
norm(v)^2 = norm(w/norm(w)^2)^2 + norm(u)^2
$
מכיוון ש- $norm(u)^2 >= 0$, לכל $v$, $norm(v)^2 >= norm(w/norm(w)^2)^2$ ומכאן $norm(v)>=norm(w/norm(w)^2)$\
$norm(u)^2 = 0 <==> u = 0$ ולכן הנורמה המינימלית מתקבלת כאשר $u=0$, כלומר עבור $w/norm(w)^2$, כנדרש\
$square.filled$
#pagebreak()
= שאלה 4
יהי $V=RR_(<=2) [x]$ עם המכפלה הפנימית
$
  ip(p, q) = integral^1_(-1) p(x)q(x) dif x
$
מצאו את הפולינום $r in V$ מהנורמה המינימלית עבורו $r(1)=1$
= פתרון 4
נגדיר פונקציונל $phi in V^*$ המוגדר כך
$
phi: V -> RR\
p mapsto p(1)
$
ממשפט ההצגה של ריס, קיים $w in V$ כך שלכל $p in V$, $phi(p) = ip(p,w)$\
נחפש את אותו $w$, נשתמש בבסיס הסטנדרטי של $RR_(<=2) [x]$
$
cal(E) = (e_0 = 1, e_1 = x, e_2 = x^2 )
$
נסמן $w= a x^2 + b x + c$, נחשב את המכפלות הפנימיות $ip(e_i,w)$ לכל $i in {0,1,2}$\
$
ip(1, a x^2 + b x + c) = integral^1_(-1) a x ^2 + b x  + c dif x = lr((a x ^3)/3 + (b x^2)/2 + c x |)^1_(-1) \
 = a/3 + b/2 + c - (-a/3 + b/2 - c) = (2a)/3 + 2c = phi(1) = 1\
ip(x, a x^2 + b x + c) = integral^1_(-1) a x^3 + b x^2 + c x dif x = lr((a x^4)/4 + (b x^3)/3 + (c x^2)/2|)^1_(-1) \
= a/4 + b/3 + c/2 - (a/4 - b/3 + c/2) = (2b)/3 = phi(x) = 1 \
ip(x^2, a x^2 + b x + c) = integral^1_(-1) a x^4 + b x^3 + c x^2 dif x = lr((a x^5)/5 + (b x^4)/4 + (c x^3)/3|)^1_(-1) \
= a/5 + b/4 + c/3 - (-a/5 + b/4 - c/3) =    (2a)/5 + (2c)/3 = phi(x^2) = 1 
$
קיבלנו שלוש משוואות בשלושה נעלמים, נפתור באמצעות מטריצת מקדמים מורחבת
$
mat(augment: #3, 2/3, 0,2,1;0,2/3,0,1;2/5,0,2/3,1) -> mat(augment: #3, 1,0,0, 15/4;0,1,0,3/2;0,0,1,-3/4)
$
לכן $a = 15/4, b=3/2, c= -3/4$, כלומר $ w= 15/4 x^2 + 3/2 x - 3/4 $\ 
לפי מה שהראינו בסעיף הקודם, הוקטור מהנורמה המינימלית של $ {v in V|phi(v) =1} $ כאשר $forall v: phi(v) = ip(v,w)$ הוא $w/norm(w^2)$\
נחשב את $norm(w)^2$
$
norm(w)^2 = ip(w,w) = integral^1_(-1) 15/4 x^2 + 3/2 x - 3/4 = lr((5x^3)/4 + (3x^2)/4 - (3x)/4 |)^1_(-1) \
= 5/4 + 3/4 - 3/4 - (-5/4 + 3/4 +3/4)  =1
$
לכן $w/norm(w)^2 = w$, ולכן הוקטור עם הנורמה המינימלית המקיים $p(1)=1$ הוא
$
15/4 x^2 + 3/2 x - 3/4
$