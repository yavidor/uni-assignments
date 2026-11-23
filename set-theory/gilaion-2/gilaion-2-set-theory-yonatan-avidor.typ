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
  #text(size: 18pt)[גיליון 2]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1 <q1>
יהיו $A,B$ קבוצות
== סעיף א'
הוכיחו כי 
$
A subset.eq B <==> cal(P)(A) subset.eq cal(P)(B)
$
== סעיף ב'
הוכיחו כי
$
  cal(P)(A) inter cal(P)(B) = cal(P) (A inter B)
$
== סעיף ג'
הוכיחו כי
$
  cal(P)(A) union cal(P)(B) subset.eq cal(P) (A union B)
$
האם מתקיים השוויון? אם לא, מצאו דוגמה נגדית.
= פתרון 1
== סעיף א'
=== $==>$
נניח כי $A subset.eq B$.\
יהי $X in cal(P)(A)$, אם $X$ הקבוצה הריקה אזי $X in cal(P)$. אחרת, לכל $x in X$ (יש כאלה, שכן $X != emptyset$), $x in A$ לפי אקסיומת קבוצת החזקה, ומההנחה גם $x in B$, לכן $X$ היא קבוצה שעשויה מאיברי $B$, מאקסיומת ההיקף מתקיים, $X subset.eq B$, כלומר $X in cal(P)(B)$, מצאנו שלכל $X in cal(P)(A)$ מתקיים $X in cal(P)(B)$, ומכאן ש $cal(P)(A)subset.eq cal(P)(B)$
=== $<==$
נניח כי $cal(P)(A) subset.eq cal(P)(B)$.\
יהי $a in A$, מאקסיומת קבוצת החזקה נקבל כי ${a}in cal(P)(A)$, מההנחה נקבל כי ${a} in  cal(P)(B)$, מאקסיומת קבוצת החזקה זה אומר ש-$a in B$.\
קיבלנו כי לכל $a in A$ מתקיים $a in B$, ולכן $A subset.eq B$
== סעיף ב'
נוכיח באמצעות הכלה דו כיוונית
=== $subset.eq$
יהי $X in cal(P)(A) inter cal(P)(B)$, לפי ההגדרה $X in cal(P)(A) and X in cal(P)(B)$, לכן כל איברי $X$ הם איברים ב-$A$ וב-$B$. קיבלנו כי $X$ היא קבוצה המורכבת מאיברי $A$ שהם גם איברי $B$, כלומר $X subset.eq A inter B$, מאקסיומת החזקה זה אומר כי $X in cal(P)(A inter B)$
=== $supset.eq$
$
forall X. X in cal(P)(A inter B) ==> X subset.eq (A inter B) ==> X subset.eq A and X subset.eq B \
==>  X in cal(P)(A) and X in cal(P)(B) ==> X in cal(P)(A) union cal(P)(B)
$
== סעיף ג'
=== הכלה
יהי $X in cal(P)(A) union cal(P)(B)$, אזי מתקיים (בדיוק) אחד מהבאים:\
$X in cal(P)(A) , X in cal(P)(B) , X in cal(P)(A) inter cal(P)(B)$. נפרק למקרים.\
אם $X in cal(P)(A)$ אזי $X subset.eq A$, מהגדרת האיחוד מתקיים $A subset.eq A union B$ מטרנזיטיביות ההכלה מתקיים $X subset.eq A union B$, מאקסיומת קבוצת החזקה מתקיים $X in cal(P)(A union B)$. מסימטריה ניתן לטעון טיעון זהה עבור $X in cal(P)(B)$.\
אם $X in cal(P)(A) inter cal(P)(B)$ אזי מסעיף ב' $X in cal(P)(A inter B)$.\
מכיוון ש-$(A inter B) subset.eq (A union B)$ ומסעיף א' נקבל כי $cal(P)(A inter B) subset.eq cal(P)(A union B)$.\
אם כך
$
X in cal(P)(A) inter cal(P)(B)= cal(P) (A inter B) subset.eq cal(P)(A union B) underset(==>,"אקסיומת ההיקף") X in cal(P)(A union B)
$
קיבלנו כי לכל אפשרות של $X in cal(P)(A) union cal(P)(B)$ מתקיים $X in cal(P)(A union B)$
=== אי-שוויון
$
A := {1}\
B := {3}\
cal(P)(A)= {emptyset,{1}}\
cal(P)(B) = {emptyset, {3}}\
cal(P)(A)union cal(P)(B) = {emptyset, {1},{3}}\
A union B = {1,3}\
cal(P)(A union B) = {emptyset,{1},{3},{1,3}}\
cal(P)(A union B)  in.rev {1,3} in.not cal(P)(A) union cal(P)(B)
$

#pagebreak()
= שאלה 2
תהי $A$ קבוצה. חלוקה של $A$ היא משפחה של תתי קבוצות לא ריקות של $A$, הזרות בזוגות ואיחודן $A$.
== סעיף א'
תהי $p$ חלוקה של $A$. הראו שהקבוצה
$
  F={(a,X) in A times p : a in X}
$
היא פונקציה $F: A -> p$ ושהיא על
== סעיף ב'
תהי $G:A->B$ פונקציה על. הראו שאוסף הקבוצות $G^(-1)[{b}]$ עבור $b in B$, הוא קבוצה ושהוא חלוקה של $A$.
== סעיף ג'
חזרו לפונקציה $F: A->p$ מסעיף א', הוכיחו שהחלוקה שמתקבלת מהפעלת סעיף ב' על פונקציה זו היא $p$
= פתרון 2
== סעיף א'
=== $F$ היא פונקציה
==== קיום
יהי $a in A$, מכיוון ש-$p$ מכסה את $A$, בהכרח _קיים_ $X in p$ כך ש-$a in X$.
==== יחידות
יהי $a in A$, נניח כי קיימים $X_1!= X_2 in p$ כך ש $(a,X_1) in F and (a,X_2) in F$ ונגיע לשלילה
$
(a in X_1) and (a in X_2) ==> a in X_1 inter X_2 underset(==>, p "זר בזוגות") a in emptyset arrow.zigzag
$
=== על
יהי $X in p$, מכיוון ש-$p$ כיסוי, $X != emptyset, X subset.eq A$, לכן קיים $a in X$, לכן לפי הגדרת $F$, $F(a)=X$.
== סעיף ב'
נגדיר $G_P$ להיות האוסף הנ"ל
ראשית נראה שאכן מדובר בקבוצה.\
יהי $b in B$, $ G^(-1)[{b}]= {a in A: G(a) = b} subset.eq A ==> G^(-1)[{b}] in cal(P)(A) $
כעת, מאקסיומת ההפרדה, נפריד את $G_P$ מתוך $cal(P)(A)$
$
G_P = {X in cal(P)(A): exists b in B.(X= G^(-1)[{b}])}
$
מאקסיומת ההפרדה זה אומר ש $G_P$ היא אכן קבוצה\
כעת נראה כי $G_P$ היא חלוקה של $A$.\
מכיוון ש-$G$ היא על, לכל $b in B$ קיים מקור ב-$A$, לכן $emptyset in.not G_P$.\
מתכונת היחידות של הפונקציה $G$, לא קיימים $b_1,b_2 in B$ ו-$a in A$ כך ש $G(a) = b_1$ וגם $G(a)=b_2$, לכן לכל $b_1, b_2 in B$ מתקיים $G^(-1)[{b}] inter G^(-1)[{b}] = emptyset$\
נראה כיסוי באמצעות הכלה דו כיוונית.
מכיוון שיצרנו את $G_P$ בהפרדה מ-$cal(P)(A)$, $X in G_P ==> X subset.eq A$ ולכן $union.big G_P subset.eq A$, מהצד השני
$
forall a in A exists b in B . G(a) = b ==>G_P in.rev G^(-1)[{b}] = a ==> a in G_P
$
$G_P$ היא קבוצה של קבוצות לא ריקות, זרות בזוגות שמכסה את $A$, לכן $G_P$ היא כיסוי של $A$
== סעיף ג'
נגדיר $F_P$ כפי שהגדרנו את $G_P$ בסעיף ב'.\
יהי $X in p$, לפי הגדרת המקור והגדרת $F$ מסעיף א' נקבל כי
$
F^(-1)[{X}]  = {a in A: F(a) = X} = {a in A: (a,X) in F} = {a in A: a in X} = {a in X} = X
$
קיבלנו כי $F^(-1)[{X}]=X$, נשים את זה בהגדרת $F_P$
$
F_P = {F^(-1){[X]}:X in p} = {X: X in p} = p
$
#pagebreak()
= פתרון 3
== סעיף א'
נגדיר $phi(x)$ בדרך הבאה
$
phi(x) = exists F in cal(F) exists b in B.(x,b) in F
$
ואז מאקסיומת ההפרדה נקבל כי
$
C= {a in A: phi(a)}
$
היא קבוצה
== סעיף ב'
יהי $a in C$, מהגדרת $C$ קיימים $F in cal(F), b in B$ כך ש $(a,b) in F$, מכיוון ש-$F in cal(F)$ נקבל כי $(a,b) in union.big cal(F) = H$, מה שמראה קיום.
יהי $a in C$, נניח בשלילה כי קיימים $b, c in B$ כך ש $(a,b) in H and (a,c) in H$. מכיוון ש $H = union.big cal(F)$, זה אומר שקיים $F in cal(F)$ כך ש $(a,b) in F$ ו$G$ $(a,c) in G$, מההנחה שבשאלה נקבל כי $F = G$
