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