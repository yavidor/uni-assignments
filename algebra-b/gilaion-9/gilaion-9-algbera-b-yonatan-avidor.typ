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
  set align(center)
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
חשבו את $Phi_B *$
== סעיף ב'
עבור אילו מטריצות $B$ האופרטור $Phi_B$ נורמלי?
== סעיף ג'
עבור אילו מטריצות $B$ האופרטור $Phi_B$ צמוד לעצמו?
== סעיף ד'
עבור אילו מטריצות $B$ האופרטור $Phi_B$ אורתוגונלי?
= פתרון 1
== סעיף א'
== סעיף ב'
== סעיף ג'
== סעיף ד'
#pagebreak()
= שאלה 2
יהי $V$ מרחב מכפלה פנימית סוף-מימדי, יהי $W <= V$ תת-מרחב של $V$, ותהי $P_W$ ההטלה האורתוגונלית על $W$. \
הראו כי $P_W$ אורתוגונלית אם ורק אם $W = V$
= פתרון 2
#pagebreak()
= שאלה 3
יהי $V$ מרחב מכפלה פנימית סוף-מימדי.
== סעיף א'
יהי $phi in V*$ ויהי $w in V$ עבורו $phi(v) = ip(v, w)$ לכל $v in V$. הוכיחו כי
$
  Ker(phi) = "Span"(w)^perp
$
== סעיף ב'
יהי $phi in V*$ ויהי $w in V$ עבורו $phi(v) = ip(v, w)$ לכל $v in V$. נגדיר
$
  H_phi := {v in V |phi(v) = 1}
$
הוכיחו כי
$
  H_phi = v/norm(w)^2 + "Span"(w)^perp
$
והסיקו כי $w/norm(w)^2$ הוא הוקטור עם הנורמה המינימלית ב-$H_phi$
= פתרון 3
== סעיף א'
== סעיף ב'
#pagebreak()
= שאלה 4
יהי $V=RR_2 [x]$ עם המכפלה הפנימית
$
  ip(p, q) = integral^1_(-1) p(x)q(x) dif x
$
מצאו את הפולינום $r in V$ מהנורמה המינימלית עבורו $r(1)=1$
= פתרון 4
