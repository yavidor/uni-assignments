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
#import "@preview/cetz:0.5.2": canvas, draw
#set document(author: "יונתן אבידור - 214269565", title: "אלגברה ב' 01040168", description: "גליון 11", date: auto)
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
  #text(size: 18pt)[גיליון 11]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1
יהי $V$ מרחב וקטורי סוף-מימדי מעל $CC$ ויהי $ T in "End"_(CC) (V) $.\
הוכיחו שקיימת איזומטריה $S in "End"_CC (V)$ עבורה
$
  T = sqrt(T T^*) S
$
= פתרון 1
