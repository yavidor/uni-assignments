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
  #text(size: 22pt, weight: "bold")[חשבון אינפיניטסימלי 3 - 01040295] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 0]
  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1 <q1>
= פתרון 1
== סעיף א'
נזכור כי נפח המקבילון הנוצר ע"י הוקטורים הוא $(arrow(u)times arrow(v))dot.c arrow(w)$
נפתח לפי הגדרת $arrow(z)$ את $arrow(z) dot.c arrow(u)$
$
  arrow(z) dot.c arrow(u) = (u times v + 2v times w + 3u times w) dot.c u \
  = (u times v) dot.c u + (2v times w ) dot.c u + (3u times w) dot.c u = (2v times w) dot.c u = 10 ==> 2(v times w) dot.c u = \
  ==> (v times w) dot.c u = 5
$
== סעיף ב'
$
  ((u+v) times (v + w)) dot.c (w+ 2u) = ((u times v) + (u times w) + (v times w)) dot.c (w + 2u)\
  = (u times v) dot.c (w + 2u) + (u times w ) dot.c (w+ 2u) + (v times w) dot.c (w+2u)\
  = w dot.c (u times v) + (v times w) dot.c 2u = 3 dot.c(v times w) dot.c u = 15
$
#pagebreak()
= שאלה 2
$
  abs(arrow(A C) times arrow(B D)) = 8, quad quad abs(arrow(A C))^2 - abs(arrow(B D))^2 = 2
$
נגדיר $v = arrow(A B), u=arrow(A D)$
$
  8=abs(arrow(A C) times arrow(B D)) = abs((u + v) times (u -v ))= abs((u times -v) +(v times u))\
  = 2 abs(v times u) ==> abs(v times u) = 4
$
לכן שטח המקבילית הוא $4$\
כעת לזווית
$
  abs(u+v)^2 - abs(u-v)^2 = 2 ==> (u +v)dot.c(u+v) - (u-v)dot.c(u-v)=2\ ==> |u|^2 + 2(u dot.c v) + |v|^2 - |u|^2 + 2(u dot.c v) + |v|^2 =2 ==> 4 (u dot.c v) = 2 \
  ==>u dot.c v = 1/2
$
נזכר כי $u dot.c v = |u||v| cos theta$ וכי $|u times v| = |u||v| sin theta$\
נסמן $A= abs(u)abs(v)$
$
  #grid(
    row-gutter: 0.6em,
    $A cos theta = 1/2$,
    $A sin theta = 4$,
  ) ==> (A cos theta)/(A sin theta) = tan theta = 4/(1/2) = 8\
  theta = arctan 8
$
#pagebreak()
= שאלה 3
== סעיף א'
לא נכון! למשל
$
arrow(v) = i, arrow(u) = j, arrow(w)=k\
i dot.c j = 2 = i dot.c k
$
== סעיף ב'
לא, אפשר לקחת שלושה וקטורים ת"ל
== סעיף ג'
