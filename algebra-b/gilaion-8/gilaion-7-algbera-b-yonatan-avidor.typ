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
  f_3 RR_(<= n) [x] times RR_(<= n) -> RR\
  (f,g) mapsto f(0)g(0) + dots + f(n)g(n)
$
== סעיף ד'
$
  f_3 CC_(<= n) [x] times CC_(<= n) -> CC\
  (f,g) mapsto f(0)g(0) + dots + f(n)g(n)
$
= פתרון 1
== סעיף א'
== סעיף ב'
== סעיף ג'
== סעיף ד'
#pagebreak()
= שאלה 2
היעזרו באי-שוויון קושי-שוורץ כיד להראות שמתקיים
$
  forall x,y,z in RR_+: x+y+z <= 2 ( x^2/(y+z) + y^2/(x+z) + z^2/(x+y))
$
= פתרון 2
#pagebreak()
= שאלה 3
יהי $V = RR_2 [x]$ ותהיינה
$
  <f,g>_1 = integral_0^1 f(x) g(x) d x\
  <f,g>_2 = f(-1) g(-1) + f(0) g(0) + f(1) g(1)
$
שתי מכפלות פנימיות על $V$. יהי
$
  W = {f in V | f(x) = f(-x) } <= V
$
== סעיף א'
מצאו בסיס $B = (w_1,dots,w_n)$ של $W$ והשלימו אותו לבסיס $C$ של $V$. בצעו את תהליך גרם-שמידט על$C$ לפי כל אחת מהמכפלות הפנימיות כדי לקבל בסיסים אורתונורמליים לפיהן.
== סעיף ב'
היעזרו בסיסים שמצאתן בסעיף הקודם כדי למצוא את
$
  W^perp := {v in V | forall w in W: <v,w> = 0}
$
לפי כל אחת מהמכפלות הפנימיות.
== סעיף ג'
מצאו את ההטלה $P_W$ על $W$ במקביל ל-$W^perp$ לפי כל אחת מהמכפלות הפנימיות. הטלה זאת נקראת ההטלה האורתוגונלית על $W$ (לפי המכפלה הפנימית המתאימה) ונראה בהמשך כי $P_W (v)$ הוא הוקטור הקרוב ביותר ל-$v$ ב-$W$
= פתרון 3
== סעיף א'
== סעיף ב'
== סעיף ג'
