#import "@preview/catppuccin:1.1.0": catppuccin, flavors
#import "@preview/iridis:0.2.0"
#import "@preview/showybox:2.0.4": showybox
#show link: it => underline(text(fill: blue, it))
#show: catppuccin.with(flavors.mocha)
#set text(lang: "he", font: "David CLM", region: "il")
#let pard(f: $f$, x: $x$) = $(partial #f)/(partial #x)$
#set page(margin: 1.75in, footer: context {
  let page_num = counter(page).get().first()
  if page_num > 1 {
    set text(size: 10pt)
    "214269565"
    h(40%)
    counter(page).display()
  }
})
#show ref: it => {
  if it.element != none and it.element.numbering == none {
    link(it.target, it.element.body)
  } else {
    it
  }
}
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#import "@preview/ouset:0.2.0": underset
#let english(content) = {
  set text(lang: "en")
  set align(center)
  block(content)
}
#let heb(content) = {
  set text(lang: "he")
  set align(center)
  block(content)
}
#align(center + horizon)[
  #set text(font: "Hadasim CLM")
  #text(size: 22pt, weight: "bold")[חשבון אינפיניטסימלי 3 - 01040295] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 3]
  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1
תהי $F: Omega subset.eq RR^n -> RR^m$ פונקציה דיפרנציאבילית בנקודה פנימית $x in Omega$\
נגדיר פונקציה חדשה שנמסנה $f$ ע"י
$
  f: RR^n -> RR\
  f(x) = norm(F(x))^2
$
== סעיף א'
יש להוכיח כי הפונקציה $f$ דיפרנציאבילית בנקודה $x$
== סעיף ב'
יש להוכיח שאם הפונקציה $f$ הינה פונקציה קבועה בכל $Omega$ אז מתקיים
$
  forall u in Omega .F(x) dot.c D F mid(|)_x (u) = 0
$
== סעיף ג'
יש לתת דוגמה לפונקציה $F$ שאיננה קבועה אשר מקיימת כי הפונקציה $f$ הינה פונקציה קבועה.
= פתרון 1
== סעיף א'
נגדיר $phi: RR^m -> RR quad phi(y) = norm(y)^2$, וכעת $f = phi circle.tiny F$
$
  phi(x) = norm(x)^2 = (sqrt(sum_(i=1)^n x_i^2))^2 = sum_(i=1)^n x^2_i
$
קיבלנו ש-$phi$ הוא פולינום ולכן דיפרנציאבילית בכל $RR^n$, ובפרט ב-$x$.\
$f$ היא הרכבה של שתי פונקציות דיפרנציאביליות ב-$x$, לכן גם היא דיפרנציאבילית ב-$x$
== סעיף ב'
יהי $u in Omega$, נרצה להשתמש בכלל השרשרת
נחשב את $D phi mid(|)_F(x)$
$
  D phi mid(|)_F(x) = mat((partial phi)/(partial F(x)_1), dots, (partial phi)/(partial F(x)_m)) = mat(2 F(x)_1, dots, 2 F(x)_m) = 2 F(x)^t
$
וכעת מכלל השרשרת
$
  D f mid(|)_x (u) = D phi mid(|)_F(x) (u) D F mid(|)_x (u) =2 F(x)^t D F mid(|)_x (u)
$
$F(x)^t$ היא מטריצה $1 times m$, ו-$D F mid(|)_x (u)$ הוא וקטור $m$\
לכן $F(x)^t D F mid(|)_x (u) = F(x) dot.c D F mid(|)_x (u)$, מכאן ש
$
  2 F(x)^t D F mid(|)_x (u)= 2 (F(x) dot.c D F mid(|)_x)
$
מצד שני $f$ דיפ' וקבועה, לכן כל הנגזרות החלקיות שלה הן $0$ ובפרט עבור $x$, ולכן $D f mid(|)_x (u) = 0$
ביחד נקבל כי
$
  2 (F(x) dot.c D F mid(|)_x) = 0 ==> #rect($F(x) dot.c D F mid(|)_x = 0$, stroke: flavors.mocha.colors.lavender.rgb)
$
== סעיף ג'
ניתן דוגמה
$
  F: (0,2pi) -> RR^2 \
  x in RR^2 mapsto vec(cos x, sin x) \
  norm(vec(cos x, sin x)) = 1
$
אבל התמונה של $F$ היא מעגל היחידה, ולכן אינה קבועה
#pagebreak()
= שאלה 2
== סעיף א'
אומרים שפונקציה $f: Omega subset.eq RR^n -> RR$ היא הומוגנית מסדר $lambda$ אם היא מקיימת
$
  f(t x) = t^lambda f(x)
$
לכל $x$ ב-$Omega$ ולכל $t$ שעבורו שני האגפים מוגדרים היטב.\
תהי $f: RR^2 -> RR$ פונקציה דיפרנציאבילית בכל $RR^2$ והומוגונית מסדר $1$, כלומר
$
  forall (x,y) in RR^2, forall t in RR. f(t x,t y) = t f(x,y)
$
יש להראות ש-$f$ היא פוקנציה לינארית.\
יש להראות (ע"י דוגמה נגדית) שפונקציה הומוגנית מסדר $1$ שאיננה דיפרנציאבילית בכל $RR^2$ לא חייבת להיות פונקציה לינארית.
== סעיף ב'
תהי $F: Omega subset.eq RR^n -> RR^m$ פונקציה דיפרנציאבילית בכל $Omega$ והומוגנית מסדר $1$, כלומר
$
  forall x in Omega, forall t in RR. F(t x) = t F(x)
$
יש להוכיח כי $F$ היא העתקה לינארית.
= פתרון 2
== סעיף א'
יהי $(x,y) in RR^2$ $g: RR-> RR^2 quad g(t) = (t x, t y)$, וכעת $f(t x, t y) = f(g(x,y))$\
נתון לנו כי $f(g(x,y)) = t f(x,y)$, נגזור את שני הצדדים לפי $t$

$
  D f|_(g(t)) D g|_(t) = mat(pard()(t x, t y), pard(x: y)(t x, t y)) vec(x, y) = x pard() (t x, t y) + y pard(x: y) (t x,t y)
$
ומהצד השני
$
  (d (t f(x,y)))/(d t) = f(x,y)
$
ביחד נקבל
$
  forall t in RR. x pard() (t x, t y) + y pard(x: y) (t x,t y) = f(x,y)
$
מכיוון שזה נכון לכל $t in RR$, נציב $t =0$ ונקבל
$
  x pard() (0,0) + y pard(x: y) (0,0) = f(x,y)
$
וכעת נכתוב $a := pard()(0,0), b:= pard(x: y) (0,0)$ ונקבל
$
  a x + b y = f(x,y)
$
כנדרש\
נבחר את הפונקציה הבאה
$
  f(x,y) = cases(x quad & x != 0, y quad & x = 0)
$
נראה כי היא הומוגנית מסדר $1$\
כאשר $t=0$ $f(t x, t y) = f(0,0) = 0 = 0 dot.c f(0,0)$
כאשר $t != 0, x!= 0$ נקבל כי
$
  f(t x, t y) = t x = t dot.c f(x , y)
$
כאשר $t != 0, x = 0$
$
  f(t 0, t y) = t y = t dot.c f(x,y)
$
כעת נראה כי היא אינה לינארית, נניח בשלילה כי $f$ היא לינארית ואז $f(0,1) + f(1,1) = f(1,1)$, נבדוק שאכן זה המצב
$
  f(0,1) + f(1,0) = 1 + 1 = 2 != 1 = f(1,1)
$
הראינו כי $f$ הומוגנית מסדר $1$ אך לא לינארית, לכן לפי מה שהראינו בסעיף, לא יתכן כי $f in C^1$
== סעיף ב'
ניתן לכתוב
$
  F = vec(f_1, f_2, dots.v, f_m)
$
$F$ הומוגנית מסדר $1$, כלומר לכל $x in Omega$
$
  forall t in RR. t vec(f_1(x), f_2(x), dots.v, f_m (x)) = vec(f_1 (t x), f_2 (t x), dots.v, f_m (t x))
$
מכיוון שכתוב שזה נכון לכל $t in RR$, זה נכון בפרט עבור $t=0$, נציב $t=0$, יהי $x in Omega$
$
  0 vec(f_1(x), f_2(x), dots.v, f_m (x)) = 0 = vec(f_1 (0), f_2 (0), dots.v, f_m (0))
$
נזכור כי מסעיף א', לכל $i in [m]$, $f_i$ לינארית, ומתקיים $F(x) = D F_i mid(|)_0 (x)$, אם נשים את כל $m$  הפונקציות נקבל כי
$
  F(x) = D F mid(|)_0 (x)
$
מכיוון ש-$D F mid(|)_0$ היא העתקה לינארית, נקבל כי $F$ היא העתקה לינארית
#pagebreak()
= שאלה 3
תהי $f(t)$ פונקציה גזירה לכל $t$, ונגדיר (לכל $y$ שונה מאפס) משטח ע"י $z = x f(x/y)$.\
יש להראות כי לכל המישורים המשיקים למשטח זה יש נקודה משותפת. מהי?
= פתרון 3
נגדיר $g(x,y) = x f(x/y)$. לכל $y != 0$, $g$ דיפרנציאבילית, נמצא את משוואת המישורים המשיקים שלה
$
  T_(x_0,y_0) = g(x_0,y_0) + pard(f: g) (x_0,y_0) (x - x_0) + pard(f: g, x: y) (x_0,y_0) (y - y_0) \
  = x_0 f(x_0 / y_0) + (f(x_0 / y_0) + x_0/y_0 f'(x_0 / y_0))(x-x_0) - (x_0^2/y_0^2 dot.c f'(x_0 / y_0))(y-y_0)\
  = x_0 f(x_0 / y_0) + x f( x_0 / y_0) - x_0 f(x_0 / y_0) + x x_0/y_0 f'(x_0/y_0) - x_0^2/y_0 f'(x_0/y_0) - y x_0^2/y_0^2 f'(x_0/y_0) + x^2_0/y_0 f'(x_0/y_0)\
  = (f(x_0/y_0) - f'(x_0/y_0))x + (x^2_0/y^2_0 f'(x_0/y_0))y = z
$
נשים לב שלכל $x_0,y_0$, המישור הזה הוא מסוג $A x + B y=z$, ללא $C$.\
לכן אם נציב $(x,y,z)=(0,0,0)$ נקבל כי
$
  (f(x_0/y_0) - f'(x_0/y_0))dot.c 0 + (x^2_0/y^2_0 f'(x_0/y_0))dot.c 0 = 0
$
וזה נכון לכל $x_0,y_0$, לכן נקודה זו מקיימת את המשוואה לכל $T_(x_0,y_0)$, ומכאן שכל המישורים הללו נפגשים ב-$(0,0,0)$
#pagebreak()
= שאלה 4
תהי $f(x,y)$ פונקציה דיפרנציאבילית בכל $RR^2$ אשר מקיימת $f(x,y) = f(y,x)$ בכל $RR^2$.\
יש לחשב את הנגזרת המכוונת של $f$ בנקודה $(0,0)$ בכיוון $(1,-1)$.\
האם דרישת הדיפרנציאביליות הכרחית? האם המסקנה נכונה עם תנאי חלש יותר?
= פתרון 4
נשתמש בנוסחה
$
  D_v f(P) = nabla f (P) dot.c v
$
עבור $P=(0,0), v = (1,-1)$
$
  pard()(0,0) -pard(x: y)(0,0)
$
נשים לב שמכיוון ש$f(x,y)=f(y,x)$ מתקבל $pard()=pard(x: y)$, לכן
$
  pard()(0,0) - pard(x: y) = 0
$
נשים לב שלא באמת השתמשנו בדיפרנציאביליות, אלא רק בקיום הנגזרת המכוונת הנ"ל.\
לכן אפשר המסקנה מתקבלת עבור כל פונקציה המקיימת $f(x,y)= f(y,x)$ בסביבה של $(0,0)$ שעבורה הנגזרת המכוונת של $(1,-1)$ קיימת ב-$(0,0)$
