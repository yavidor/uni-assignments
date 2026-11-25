#import "@preview/catppuccin:1.1.0": catppuccin, flavors
#import "@preview/iridis:0.2.0"
#import "@preview/showybox:2.0.4": showybox
#show link: it => underline(text(fill: blue, it))
#show: catppuccin.with(flavors.mocha)
#set text(lang: "he", font: "David CLM", region: "il")
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

  #text(size: 22pt, weight: "bold")[תורת הקבוצות - 104293] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 3]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#outline()
#pagebreak()
= שאלה 1 <q1>
תהי $F:A->B$ פונקציה. לכל $Y subset.eq B$ נסמן $F^(-1)[Y]={a in A : F(a) in Y}$.
== סעיף א'
הוכיחו שלכל $Y,Z subset.eq B$ מתקיים
$
  F^(-1)[Y inter B] = F^(-1) [Y] inter F^(-1) [Z] quad quad F^(-1)[B without Y] = A without F^(-1)[Y]
$
== סעיף ב'
הוכיחו שלכל $X subset.eq A$ ולכל $Y subset.eq B$ מתקיים
$
  X subset.eq F^(-1)[F[X]] quad quad F[F^(-1)[Y]] subset.eq Y
$
לכל אחת משתי ההכלות, תנו דוגמה בה לא מתקיים שוויון
= פתרון 1
== סעיף א'
=== חיתוך
==== $F^(-1)[Y inter Z] subset.eq F^(-1)[Y] inter F^(-1)[Z]$
יהי $x in F^(-1)[Y inter Z]$ מהגדרת המקור מתקיים כי $x in A$, ו-$F(x) in Y inter Z$\
מהגדרת חיתוך מקבלים כי $F(x) in Y and F(x) in Z$, מהגדרת המקור שוב נקבל כי זה אומר ש $x in F^(-1)[Y] and x in F^(-1)[Z]$.\ מהגדרת חיתוך נקבל כי $x in F^(-1)[Y] inter F^(-1)[Z]$\
==== $F^(-1)[Y] inter F^(-1)[Z] subset.eq F^(-1)[Y inter Z]$
יהי $x in F^(-1)[Y] inter F^(-1)[Z]$
$
  x in {a in A: F(a) in Z} inter {a in A: F(a) in Z}
  \ ={a in A: F(a) in Y and F(a) in Z} =F^(-1)[Y inter Z]
$
=== הפרש
==== $F^(-1)[B without Y] subset.eq A without F^(-1)[Y]$
יהי $x in F^(-1)[B without Y]$, מהגדרת המקור זה אומר ש $F(x) in B without Y$\
כלומר $x in.not F^(-1)[Y]$, מהגדרת המקור נקבל גם כי $x in A$, וכי $F^(-1)[Y] subset.eq A$
$
  x in A and x in.not F^(-1)[Y] subset.eq A ==> x in A without F^(-1)[Y]
$
==== $A without F^(-1)[Y] subset.eq F^(-1)[B without Y]$
יהי $x in A without F^(-1)[Y]$, כלומר $F(x) in.not Y subset.eq B ==> F(x) in B without Y$, מהגדרת המקור זה אומר ש $x in F^(-1)[B without Y]$
= סעיף ב'
יהיו $X subset.eq A quad Y subset.eq B$
=== $X subset.eq F^(-1)[F[X]]$
יהי $x in X$\
נתבונן ב-$F[X]$\
$
  F[X] = {F(a): a in X}
$
לכן $F(x) in F[X]$, כלומר $x in F^(-1)[F[X]]$.\
==== דוגמה נגדית
בעיקרון ניתן להשתמש בכל פונקציה שאינה חח"ע\
$
  A = {1,2}\
  B = {3,4}\
  X= {1}\
  F = {(1,4),(2,4)}\
  F[X] = 4\
  F^(-1)[4] = {1,2}\
  X subset.neq F^(-1)[F[X]]
$
=== $F[F^(-1)[Y]] subset.eq Y$
יהי $y in F[F^(-1)[Y]]$
$
  y in F[F^(-1)[Y]] ==> exists z in F^(-1)[Y]. Y in.rev F(z) = y ==> y in Y
$
==== דוגמה נגדית
בעיקרון ניתן להשתמש בכל פונקצי שאינה על\
$
  A = {1} \
  B = {2,3} \
  F = {(1,2)} \
  Y= {2,3}\
  F^(-1)[Y] = {1}\
  F[F^(-1)[Y]] = {2}\
  F[F^(-1)[Y]] subset.neq Y
$
#pagebreak()
= שאלה 2
יהיו $A,B$ קבוצות, ונסמן
$
  cal(H) = {F in cal(P)(A times cal(P)(B)) mid(|) F : A -> cal(P)(B)}
$
== סעיף א'
נמקו מדוע $cal(H)$ היא קבוצה.\
לכל $R subset.eq A times B$ ולכל $a in A$ נגדיר
$
  R_a = {b in B : (a,b) in R}
$
הראו שהכלל $F_R(a)=R_a$ מגדיר פונקציה $F_R: A -> cal(P)(B)$, ונמקו את קיומה באמצעות האקסיומות.
== סעיף ב'
הוכיחו שהכלל
$
  Psi:cal(P)(A times B) -> cal(H), quad quad Psi(R) = F_R
$
מגדיר פונקציה חד-חד-ערכית ועל. נמקו גם את קוימה של $Phi$ כקבוצה.
== סעיף ג'
הוכיחו כי $R subset.eq A times B$ היא פונקציה מ-$A$ ל-$B$ אם ורק אם לכל $a in A$, הקבוצה $F_R(a)$ מכילה בדיוק איבר אחד
= פתרון 2
#pagebreak()
יהיו $A,B$ קבוצות. לכל $U subset.eq A union B$ \
$
  Phi(U) = (U inter A, U inter B)
$
== סעיף א'
הראו שהכלל מגדיר פונקציה $Phi: cal(P)(A union B)->cal(P)(A)times cal(P)(B)$
נמקו את קיומה באמצעות האקסיונות והוכיחו שהיא חד-חד-ערכית
== סעיף ב'
הוכיחו ש-$Phi$ על אם-ורק-אם $A inter B = emptyset$
== סעיף ג'
יהיו $X subset.eq A$ ו-$Y subset.eq B$

