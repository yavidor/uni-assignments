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
#set document(author: "יונתן אבידור - 214269565", title: "אלגברה ב' 01040168", description: "גליון 6", date: auto)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#import "@preview/ouset:0.2.0": underset
#let Im = math.op("Im")
#let Ker = math.op("Ker")
#align(center + horizon)[
  #set text(font: "Hadasim CLM")

  #text(size: 22pt, weight: "bold")[אלגברה ב' - 01040168] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 6]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]

]
#pagebreak()
= שאלה 1
יהי שדה $FF$ ויהיו $lambda in FF, n in NN_+$.
== סעיף א'
הראו כי
$ m_(J_(n)(lambda)) = (x-lambda)^n $
== סעיף ב'
הסיקו כי אם $T in "End"_FF (V)$ אופרטור שהפולינום האופייני שלו מתפצל מעל $FF$, ושהערכים העצמיים השונים שלו הם $lambda_1,dots,lambda_m$, מתקיים
$ m_T (x) = product_(i in [m]) (x- lambda_i)^(k_i) $
כאשר $k_i$ גודל בלוק ז'ורדן המקסימלי עם ערך עצמי $lambda_i$ בצורת ז'ורדן של $T$.
== פתרון 1
=== סעיף א'
ראשית, נחשב את הפולינום האופייני
$
p_(J_(n) (lambda)) = det(x I - J_n (lambda)) = det ( mat(delim: #none, x - lambda, -1,  , #text(size:2em)[0] ;
  , x - lambda, dots.down,;
  , ,dots.down, -1;
  #text(size:2em)[0], ,,  x - lambda) )
$
קיבלנו מטריצה משולשית עליונה, לכן הדטרמיננטה היא מכפלת איברי האלכסון, כלומר
$ p_(J_n (lambda)) = (x- lambda)^n $
ממסקנה ממשפט קיילי, הפולינום המינימלי מחלק את הפולינום האופייני. לכן קיים $k<= n$ כך ש $m_(J_n (lambda))=(x-lambda)^k$.\
מהגדרת הפולינום המינימלי, המטריצה שלו מאפסת אותו ולכן
$ m_(J_n (lambda))(J_n (lambda)) = 0_(n times n)$
נציב
$ m_(J_n (lambda))(J_n (lambda)) = (J_n (lambda)-lambda I)^k = mat(0, 1,  , #text(size:2em)[0] ;
  , 0, dots.down,;
  , ,dots.down, 1;
  #text(size:2em)[0], ,,  0)^k = 0_(n times n) $
קיבלנו מטריצה המייצגת אופרטור הזזה ביחס לבסיס שעליו הוא פועל. ראינו בכיתה כי אופרטור הזזה הוא אופרטור נילפוטנטי עם אינדקס נילפוטנטיות $n$, מכאן שגם מטריצה מייצגת שלו היא נילפוטנטית עם אותו אינדקס.
כלומר השוויון מתקבל כאשר $k=n$, מכאן ש
$ m_(J_n (lambda)) = (x - lambda)^n $\
$square.filled$
== סעיף ב'
=== למה
תהא מטריצת בלוקים אלכסונית $ A=A_1 plus.o A_2 plus.o dots plus.o A_m $
ופולינום $q(x)$\
אזי
$ q(A) = q(A_1) plus.o q(A_2) plus.o dots plus.o q(A_m) $
==== הוכחת הלמה
ראשית נראה באינדוקציה כי זה נכון ספציפית על העלאה של $A$ בחזקת $k$\
עבור $k=0$, $ A^1 = A = A_1^1 plus.o A_2^1 plus.o dots plus.o A_m^1 $
נניח שהוכחנו זאת עבור כל חזקה עד $k-1$, כעת נוכיח עבור $k$
$ A^k = A^(k-1) dot.c A = mat(A_1^(k-1),;,A_2^(k-1);,,dots.down;,,,A_m^(k-1)) dot.c mat(A_1,;,A_2;,,dots.down;,,,A_m) \
underset(=,"הכפלת מטריצות בלוקים")  mat(A_1^(k),;,A_2^(k);,,dots.down;,,,A_m^(k))  $
כעת עבור פולינום כללי.
יהיו $a_1,dots,a_l in FF$ והפולינום 
$ q(x) = sum_i^l a_i x^i $
נציב בו את המטריצה
$ q(A) = sum_i^l a_i A^i underset(=,"מה שהוכחנו עכשיו") sum_i^l a_i mat(A_1^(i),;,A_2^(i);,,dots.down;,,,A_m^(i))\ = sum_i^l mat(a_i A_1^(i),;,a_i A_2^(i);,,dots.down;,,,a_i A_m^(i)) = mat(sum_(i)^l a_ i A_1^(i),;,sum_(i)^l a_ i A_2^(i);,,dots.down;,,,sum_(i)^l a_ i A_m^(i)) \
q(A_1) plus.o q(A_2) plus.o dots plus.o q(A_m)
$
=== הוכחת הסעיף
הפולינום האופייני של $T$ מתפצל מעל $FF$, לכן קיים בסיס $cal(B)$ ל-$V$ כך ש $[T]_cal(B)$ היא מטריצת ז'ורדן, נסמן $A=[T]_cal(B)$\
המטריצה $A$ היא מטריצת ז'ורדן, ולכן ניתן לייצגה כסכום ישר של $l$ בלוקי ז'ורדן, כלומר
$ A = J_1 plus.o J_2 plus.o dots plus.o J_l $
מכיוון ש-$A$ היא מטריצה מייצגת של $T$, $m_T (x) = m_A (x)$.\
מהלמה שהוכחנו ומההגדרה של פולינום מינימלי\
$ m_T (A) = m_T (J_1) plus.o dots plus.o m_T (J_l) = 0_(n times n) $\
על מנת שזה יקרה, צריך להתקיים $ forall j in [l]: m_T (J_j) = 0 $
מההגדרה של פולינום מינימלי, על $m_T$ להיות המכנה המשותף הקטן ביותר של כל הפולינומים המינימליים של הבלוקים.\
בסעיף א' הראינו שעבור בלוק בגודל $k$ של ערך $lambda$, הפולינום המינימלי שלו הוא $(x-lambda)^k$, לכן המכנה המשותף של כל הפולינומים המינימליים של הבלוקים של ערך עצמי $lambda_i$ כלשהו של $T$ הוא $(x-lambda_i)^(k_i)$ כאשר $k_i$ הוא הגודל של הבלוק הגדול ביותר של $lambda_i$, זה נכון עבור כל אחד מ-$m$ הערכים העצמיים, מכך ומכיוון שעבור $lambda_i!=lambda_j$, הפולינומים $(x-lambda_i)^(k_i)$ ו-$(x-lambda_j)^(k_j)$ זרים, אנחנו מקבלים כי:
$ m_T (x) = product_(i in [m])(x - lambda_i)^(k_i) $
$square.filled$
#pagebreak()
= שאלה 2
יהי $n in NN_+$ ותהיינה $A,B in "Mat"_n (CC)$ עבורן
$ p_A (x) = p_B (x)  \ m_A (x)  = m_B (x) $
הוכיחו או הפריכו את הטענות הבאות. עבור אלו שאינן נכונות, מיצאו דוגמה נגדית.
1. $A,B$ דומות אם $n=3$.
2. $A,B$ דומות אם $n=4$.
3. $A,B$ דומות אם $n=5$.
= שאלה 3
