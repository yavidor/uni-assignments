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
#set document(author: "יונתן אבידור - 214269565", title: "אלגברה ב' 01040168", description: "גליון 8", date: auto)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#import "@preview/ouset:0.2.0": underset
#let Im = math.op("Im")
#let Ker = math.op("Ker")
#let ip(x, y) = $lr(chevron.l #x, #y chevron.r)$
#let english(content) = {
  set text(lang: "en")
  set align(center)
  block(content)
}
#align(center + horizon)[
  #set text(font: "Hadasim CLM")

  #text(size: 22pt, weight: "bold")[אלגברה ב' - 01040168] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 8]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1
עבור ההעתקות הבאות $f_i$, קיבעו האם $f_i$ מכפלה פנימית. הוכיחו את קביעתכן.
== סעיף א'
$
  f_1: "M"_n(RR) times "M"_n(RR) -> RR\
  (A,B) mapsto tr(B^t A)
$
== סעיף ב'
$
  f_2: "M"_n(CC) times "M"_n(CC) -> CC\
  (A,B) mapsto tr(B^t A)
$
== סעיף ג'
$
  f_3 RR_(<= n) [x] times RR_(<= n)[x] -> RR\
  (f,g) mapsto f(0)g(0) + dots + f(n)g(n)
$
== סעיף ד'
$
  f_4 CC_(<= n) [x] times CC_(<= n) [x]-> CC\
  (f,g) mapsto f(0)g(0) + dots + f(n)g(n)
$
= פתרון 1
== סעיף א'
כן! נוכיח\
יהיו $A,B,C in "M"_n (RR)$ ו-$alpha in RR$\
נראה מהי בעצם הפונקציה הזו
$
  f_1(A,B) = tr(B^t A) = sum_(i=1)^n (B^t A)_(i,i) = sum_(i=1)^n sum_(j=1)^n B^t_(j,i) A_(i,j)\
  = sum_(i=1)^n sum_(j=1)^n B_(i,j) A_(i,j)
$
כעת, נוכיח את ארבעת התכונות של מכפלה פנימית
=== חיוביות ומוגדרות
$
  f_1 (A,A) = sum_(i=1)^n sum_(j=1)^n A_(i,j) A_(i,j)
$
כלומר $f_1 (A,A)$ הוא סכום הריבועים של הכניסות של $A$, ולכן $A_(i,j)^2 >= 0$, ו-$A_(i,j)^2 = 0$ אם ורק אם $A_(i,j) = 0$, לכן $f_1 (A,A) = 0$ אם ורק אם $A$ היא מטריצת האפס, ולכל מקרה אחר $f_1 (A,A) > 0$
=== לינאריות ברכיב הראשון
$
  f_1 (alpha A + C,B) = sum_(i=1)^n sum_(j=1)^n B_(i,j) (alpha A + C)_(i,j)=sum_(i=1)^n sum_(j=1)^n B_(i,j) (alpha A + C)_(i,j) \
  = sum_(i=1)^n sum_(j=1)^n B_(i,j) (alpha (A + C))_(i,j) = sum_(i=1)^n sum_(j=1)^n B_(i,j) alpha((A + C))_(i,j) \
  = alpha sum_(i=1)^n sum_(j=1)^n (B_(i,j) A_(i,j)) +(B_(i,j) C_(i,j))\
  = alpha sum_(i=1)^n sum_(j=1)^n B_(i,j) A_(i,j) sum_(i=1)^n sum_(j=1)^n B_(i,j) C_(i,j) \
  = alpha f_1(A,B) + f_1(C,B)
$
=== הרמיטיות
$
  f_1 (A,B) = sum_(i=1)^n sum_(j=1)^n A_(i,j) B_(i,j) underset(=, "קומוטטיביות בסכום סופי") sum_(i=1)^n sum_(j=1)^n A_(i,j) B_(i,j)
$
מכיוון ש-$A,B$ מטריצות מעל שדה הממשיים, $f_1 (B,A) = overline(f_1 (B,A))$
הראינו את כל התכונות של מכפלה פנימית, לכן $f_1$ היא מכפלה פנימית
== סעיף ב'
לא נכון! נראה דוגמה נגדית\
תהא $A = mat(i, i; i, i) in "M"_2 (CC)$, נראה שלא מתקיימת חיוביות.
$
  f_2(A,A) = sum_(i=1)^2 sum_(j=1)^2 A_(i,j) A_(i,j) = sum_(i=1)^2 sum_(j=1)^2 i dot.c i = (i dot.c i) dot.c 4 = -1 dot.c 4 = -4 < 0
$
לא מתקיימת חיוביות, לכן הפונקציה אינה מכפלה פנימית
== סעיף ג'
כן! נוכיח\
יהיו $f,g,h in RR_(<=n) [x]$ ו-$alpha in RR$
=== חיוביות ומוגדרות
$
  f_3 (f,f) = sum_(k=0)^n f(k)^2
$
סכום של ריבועים של מספרים ממשיים תמיד יהיה גדול או שווה לאפס, ולכן מתקיים חיוביות.\
הדרך היחידה בה הסכום יהיה אפס, היא אם כל אחד מהמחוברים הוא אפס, כלומר $ forall k in {0,n}: f(k)=0 $
אזי, יש ל-$f$ $n+1$ שורשים לפחות. הפולינום מ-$RR_(<= n)[x]$ שיש לו מעל $n$ שורשים הוא פולינום האפס. לכן $f_3(f,f)=0==>f=0$
=== לינאריות ברכיב הראשון
$
  f_3(alpha f + h,g) = sum_(k=0)^n (a f + h)(k) dot.c g(k) = sum_(k=0)^n alpha f(k) + h(k) dot.c g(k) \
  = alpha sum_(k=0)^n (f(k)+ h(k)) dot.c g(k) = alpha sum_(k=0)^n f(k)g(k)+sum_(k=0)^n h(k)g(k) = alpha f_3(f,g) + f_3(h,g)
$
=== הרמיטיות
$
  f_3(f,g) = sum_(k=0)^n f(k)g(k) underset(=, "קומוטטיביות כפל") sum_(k=0)^n g(k)f(k) = f_3(g,f) underset(=, "צמוד מעל הממשיים") overline(f_3(g,f))
$
הראינו את כל התכונות של מכפלה פנימית, לכן $f_3$ היא מכפלה פנימית
== סעיף ד'
לא נכון! נראה דוגמה נגדית\
יהי $f(x) = i+i x in CC_(<= 1) [x]$. נראה שלא מתקיימת חיוביות.
$
  f_4(f,f) = sum_(k=0)^1 f(k) f(k) = i dot.c i + 2i dot.c 2i = -1 + (-4) = -5 < 0
$
לא מתקיימת חיוביות, לכן הפונקציה אינה מכפלה פנימית
#pagebreak()
= שאלה 2
היעזרו באי-שוויון קושי-שוורץ כדי להראות שמתקיים
$
  forall x,y,z in RR_+: x+y+z <= 2 ( x^2/(y+z) + y^2/(x+z) + z^2/(x+y))
$
#let wc(x, y) = $sqrt(#x+#y)$
#let vc(x, y, z) = $#x/wc(#y, #z)$

= פתרון 2
נגדיר שני וקטורים ב-$(RR^3,ip(., .))$ כש-$ip(., .)$ היא המכפלה הפנימית הסטנדרטית.
$
  v = (vc(x, y, z), vc(y, x, z), vc(z, x, y))\
  w = (wc(y, z), wc(x, z), wc(x, y))
$
נשים לב שמכיוון ש-$x,y,z in RR_+$ הוקטורים מוגדרים מיטב\
נתבונן במכפלה הפנימית של $v$ ו-$w$ ובנורמות שלהם
$
  ip(v, w) = vc(x, y, z)dot.c wc(y, z) + vc(y, x, z) dot.c wc(x, z) + vc(z, x, y) dot.c wc(x, y)
  \ = x + y + z \ \ \
  norm(v) = sqrt((vc(x, y, z))^2 + (vc(y, x, z))^2 + (vc(z, x, y))^2)
  \ = sqrt(x^2/(y+z) + y^2/(x+z) + z^2/(x+y)) \ \ \
  norm(w) = sqrt(wc(y, z)^2+wc(x, z)^2 + wc(x, y)^2) \ = sqrt(y+z+x+z+x+y) = sqrt(2(x+y+z))
$
לפי אי-שוויון קושי-שוורץ
$
  |x+y+z| <= sqrt(x^2/(y+z) + y^2/(x+z) + z^2/(x+y)) dot.c sqrt(2x+2y+2z)
$

נשים לב שמכיוון ש-$x,y,z in RR_+$ $x+y+z > 0$ ולכן $|x+y+z| = x+y+z$\
נעלה את שני צדדי המשוואה בריבוע
$
  (x+y+z)^2 <= x^2/(y+z) + y^2/(x+z) + z^2/(x+y) dot.c 2 dot.c (x+y+z)
$
נחלק את שני צדדי המשוואה ב-$x+y+z$ (נזכור ש-$x+y+z>0$ ולכן ניתן לעשות כן) ונקבל כי
$
  x+y+z <= 2 dot.c (x^2/(y+z) + y^2/(x+z) + z^2/(x+y))
$
כנדרש\
$square.filled$
#pagebreak()
= שאלה 3
יהי $V = RR_2 [x]$ ותהיינה
$
  ip(f, g)_1 = integral_0^1 f(x) g(x) d x\
  ip(f, g)_2 = f(-1) g(-1) + f(0) g(0) + f(1) g(1)
$
שתי מכפלות פנימיות על $V$. יהי
$
  W = {f in V | f(x) = f(-x) } <= V
$
== סעיף א'
מצאו בסיס $B = (w_1,dots,w_n)$ של $W$ והשלימו אותו לבסיס $C$ של $V$. בצעו את תהליך גרם-שמידט על $C$ לפי כל אחת מהמכפלות הפנימיות כדי לקבל בסיסים אורתונורמליים לפיהן.
== סעיף ב'
היעזרו בסיסים שמצאתן בסעיף הקודם כדי למצוא את
$
  W^perp := {v in V | forall w in W: ip(f, g) = 0}
$
לפי כל אחת מהמכפלות הפנימיות.
== סעיף ג'
מצאו את ההטלה $P_W$ על $W$ במקביל ל-$W^perp$ לפי כל אחת מהמכפלות הפנימיות. הטלה זאת נקראת ההטלה האורתוגונלית על $W$ (לפי המכפלה הפנימית המתאימה) ונראה בהמשך כי $P_W (v)$ הוא הוקטור הקרוב ביותר ל-$v$ ב-$W$
= פתרון 3
== סעיף א'
נחפש בסיס ל-$W$\
יהי $p(x) = a x^2 + b x + c in W$ \
$p in W$ ולכן $p(x)= p(-x)$
$
  p(-x) = a (-x)^2 + b (-x) + c = a x^2 - b x + c
$
נשווה ל-$p(x)$
$
  a x^2 - b x + c = a x^2 + b x + c
$
מכאן ש-$b=0$, לכן
$ W = {a x^2 + c |a,c in RR } = "span"{1,x^2} $
נטען ש-$B={1,x^2} subset W$ הוא בסיס ל-$W$ \
מכיוון ש-$1,x^2$ הם חלק מהבסיס הסטנדרטי ל-$V$, ${1,x,x^2}$, הם בת"ל. מצאנו קבוצה פורשת ובת"ל ולכן בסיס\
כפי שאמרנו, $B$ היא תת קבוצה של הבסיס הסטדנרטי של $V$, לכן נוכל להשלימו לבסיס הסטדנרטי $C=(1,x^2,x) subset V$\
נבצע את תהליך גרם שמידט לפי שתי המכפלות הפנימיות\
נסמן $v_1 = 1, v_2 = x^2, v_3 = x$ לוקטורים ב-$C$, נחפש בסיס $D'=(u_1',u_2',u_3')$ אורתוגונלי ו-$D=(u_1,u_2,u_3)$ אורתונורמלי ל-$V$
=== לפי $ip(f, g)_1$
$ u'_1=v_1 = 1 $
לכן
$u_1 = u'_1/norm(u'_1)$
נחשב את $norm(u'_1)$
$
  norm(u'_1) = sqrt(ip(u'_1, u'_1)_1) = sqrt(integral_0^1 1 dot.c 1 dif x) = sqrt(integral_0^1 1 dif x) = sqrt(1) = 1
$
לכן $u_1 = 1$
$
  u'_2 = v_2 - ip(v_2, u_1)_1/norm(u_1)^2 u_1 = x^2 - ip(x^2, 1)_1/1 dot.c 1
$
נחשב את $ip(x^2, 1)_1$
$
  ip(x^2, 1)_1 = integral_0^1 x^2 dot.c 1 dif x = lr(x^3/3|)^1_0 = 1/3
$
לכן
$
  u'_2 = x^2 - 1/3
$
נחשב את $norm(u'_2)$
$
  norm(u'_2) = sqrt(ip(u'_2, u'_2)_1) = sqrt(integral_0^1 (x^2-1/3)^2 dif x) = sqrt(integral_0^1 x^4 -(2x^2)/3 + 1/9 dif x) \
  = sqrt(2/3 integral_0^1 x^4 - x^2 + 1/9 dif x) = sqrt(lr(x^5/5 - (2x^3)/9 + x/9|)^1_0) =
$
== סעיף ב'
== סעיף ג'
