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
  #text(size: 18pt)[גיליון 2]
  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1 <q1>
תהי $F:RR^n -> RR^m$ ותהי $x in RR^n$ נקודה קבועה.\
נתון כי מתקיים
$
  forall v in RR^n . norm(v) = 1 ==> (norm(F(x+t v)-F(x)))/(norm(t v)) <= g(t)
$
כך שהפונקציה $g(t)$ רציפה בנקודה $t = 0$ ומקיימת $display(lim_(t -> 0)g(t))=0$\
יש להוכיח כי הפונקציה $F$ דיפרנציאבילית בנקודה $x$ ולמצוא את מטריצת הנגזרת שלה בנקודה זו.
= פתרון 1
יהי $v in RR^n$ כך ש $norm(v)=1$\
נשים לב כי
$
  0 < norm(F(x+t v) -F(x))/norm(t v) <= g(t)
$
נגדיר $Delta x = t v$, ונשים לב כי כאשר $t --> 0$, $norm(Delta x)-->0$, ולהיפך.\
$
  lim_(t->0) norm(F(x+t v)-F(x))/norm(t v) = lim_(norm(Delta x)->0) norm(F(x+Delta x)-F(x))/norm(Delta x)
$
מצד שני, מהנתון
$
  0<= lim_(t->0) norm(F(x+t v)-F(x))/norm(t v) <= lim_(t->0)g(t) = 0
$
ולכן מסנדוייץ'
$
  lim_(norm(Delta x)->0) norm(F(x+Delta x)-F(x))/norm(Delta x) = 0
$
הגדרת דיפרנציביליות דורשת שקיים $L:RR^n -> RR^m$ כך ש
$
  lim_(norm(Delta x)->0) norm(F(x+Delta x)-F(x)-L(Delta x))/norm(Delta x) = 0
$
לכן אם נגדיר $L$ להיות טרנפורמציית האפס נקבל את השוויון המבוקש, ומכאן $F$ דיפרנציאבילית ב-$x$\
מכיוון ש-$L$ היא טרנספורמציית האפס, המטריצה המייצגת שלה היא מטריצת האפס, ולכן מטריצת הנגזרת המבוקשת היא #box(rect($0_(m times n)$, stroke: flavors.mocha.colors.lavender.rgb))
#pagebreak()
= שאלה 2
תהי $F:RR^n -> RR$ פוקנציה בעלת נגזרות חלקיות רציפות בקבוצה קומפקטית וקמורה $Omega subset.eq RR^n$. יש להוכיח שקיים מספר חיובי $M$ כך ש-
$
  forall x,y in Omega. abs(f(x)-f(y)) <= M norm(x-y)
$
= פתרון 2
$f$ מוגדרת בקבוצה קמורה ודיפרנציאבילית בקבוצה קמורה, לכן מאי-שוויון הערך הממוצע הוקטורי מתקבל שלכל שתי נקודות $x,y subset.eq Omega$ מתקיים
$
  |f(x)-f(y)| <= (sup_(omega in Omega) norm(D f|_omega)) norm(x-y)
$
בנוסף, מרציפות הנורמות, הפונקציה $norm(D f)$ רציפה ומוגדרת בקבוצה קומפקטית, אחת ההגדרות של קבוצה קומפקטית, לכן ממשפט ווירשטראס, נורמת הנגזרת ($norm(D f)$) חסומה, לכן קיים מספר סופי $M in RR$ כך ש $forall omega in Omega. M>= norm(D f|_omega)$.\
מכיוון ש-$M$ מקיים את אי השוויון הזה לכל $omega in Omega$, מתקיים $M>=sup_(omega in Omega) norm(D f|_omega)$\
לכן
$
  forall x,y in Omega. abs(f(x)-f(y)) <= (sup_(omega in Omega) norm(D f|_omega)) norm(x-y)<= M norm(x-y)
$
