#set text(lang: "he", font: "David CLM")
#set page(margin: 1.75in, footer: context {
  let page_num = counter(page).get().first()
  if page_num > 1 {
    set text(size: 10pt)
    "214269565"
    h(40%)
    counter(page).display()
    h(35%)
    "212674683"
  }
})
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#import "@preview/ouset:0.2.0": underset
#let english(content) = {
  set text(lang: "en")
  set align(center)
  block(content)
}
#align(center + horizon)[
  #set text(font: "Hadasim CLM")

  #text(size: 22pt, weight: "bold")[קומבינטוריקה - 01040286] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 8]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
  #v(0.1cm)
  #text(size: 14pt)[רותם עשת - 212674683]
]
#pagebreak()
= שאלה 1
== סעיף א'
הוכיחו כי לכל $k$ טבעי מתקיים:
$
  1/((1-x)^k) = sum_(n=0)^infinity binom(n+k-1, k-1)x^n
$
== סעיף ב'
הסיקו כי לכל $k$ טבעי מתקיים:
$
  sum_(n=0)^infinity binom(n, k)x^n = (x^k)/((1-x)^(k+1))
$
= פתרון 1
== סעיף א'

== סעיף ב'
#pagebreak()
= שאלה 2
פתרו בעזרת פונקציות יוצרות.\
כמה פתרונות בשלמים אי-שליליים יש למשוואה
$
  x_1 + x_2 + x_3 + x_4 + x_5 = 31
$
כאשר $x_2$ הוא מספר זוגי ו-$x_3$ הוא מספר אי-זוגי. ניתן להשאיר את התשובה כסכום של מספר קטן של מחוברים.
= פתרון 2
#pagebreak()
= שאלה 3
מצאו בעיה מתאימה לפונקציה יוצרת:
$
  F(x) = (1-x^(15))/(1-x) dot.c 1/(1-x^2) dot.c x/(1-x)
$
= פתרון 3
#pagebreak()
= שאלה 4
תהי
$
  F(x) = sum_(n=0)^infinity a_n x^n
$
הפונקציה היוצרת של הסדרה $(a_n)^infinity_(n=0)$
נגדיר סדרת חדשה (סדרת הסכומים החלקיים) על ידי:
$
  b_n = sum_(k=0)^n a_k
$
בטאו את הפונקציה היוצרת של הסדרה $(b_n)_(n=0)^infinity$ על ידי הפונקציה $F(x)$
= פתרון 4
#pagebreak()
= שאלה 5
יהיו $n$ נקודות ממוספרות, מסודרות במעגל. נסמן ב-$M_n$ את מספר הדרכים לחבר $n$ נקודות על המעגל, על ידי מיתרים שאינם נחתכים.\
למשל:
$
  M_0=M_1=1, M_2=2, M_3=4, M_4=9
$
שימו לב: לא כל הנקודות חייבות להיות מחוברות, אנו סופרים גם את האפשרות שאין אף מיתר במעגל
== סעיף א'
מצאו נוסחת נסיגה עבור $M_n$
== סעיף ב'
מצאו ביטוי פשוט לפונקציה היוצרת
$
  M(x) = sum_(n=0)^infinity M_n x^n
$
= פתרון 5
== סעיף א'
== סעיף ב'
#pagebreak()
= בדיחת קרש
חשבנו על $n$ בדיחות עבור $n+1$ גליונות, בהכרח קיימת בדיחה שנכתוב בשני גליונות שונים

