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
#set document(author: "יונתן אבידור - 214269565", title: "אלגברה ב' 01040168", description: "גליון 10", date: auto)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#import "@preview/ouset:0.2.0": underset
#let Im = math.op("Im")
#let Ker = math.op("Ker")
#let ip(x, y) = $lr(chevron.l #x, #y chevron.r)$
#let english(content) = {
  set text(lang: "en")
  //set align(center)
  block(content)
}
#align(center + horizon)[
  #set text(font: "Hadasim CLM")

  #text(size: 22pt, weight: "bold")[אלגברה ב' - 01040168] \
  #v(0.5em)
  #text(size: 18pt)[גיליון 10]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1
יהי $T in "End"_CC (V)$ נורמלי ויהיו $p,q in CC[x]$ כך שהאופרטור $q(T)$ הפיך. נסמן $S=p(T)q(T)^(-1)$.\
הוכיחו כי
$
  sigma(S) = lr({p(lambda)/q(lambda)mid(|)lambda in sigma (T)})
$
וכי לכל $lambda' in sigma(S)$
$
  r_a^S (lambda') = sum_(lambda in sigma(T) \ (p(lambda))/(q(lambda)) = lambda') r_a^T (lambda) \
  r_g^S (lambda') = sum_(lambda in sigma(T) \ (p(lambda))/(q(lambda)) = lambda') r_a^T (lambda)
$
= פתרון 1
יהי $v!=0_V in V$ ו"ע של $T$ עם ע"ע $lambda in sigma(T)$, אזי
$
  T v= lambda v
$
נפעיל $p$ על שני צדדים המשוואה
$
  p(T v) = p (lambda v)
$
מלינאריות
$
  (*): p(T) v = p(lambda) v
$
נעשה אותו דבר עם $q$
$
  q(T) v = q(lambda) v
$
$q(T)$ הפיכה, לכן קיים $q(T)^(-1)$, נפעיל $q(T)^(-1)$ על שני צדדי המשוואה
$
  q(T)^(-1) (q(T) v) = q(T)^(-1) (q (lambda) v)
$
מאסוציאטיביות נקבל
$
  (q(T)^(-1) q(T)) v = q(T)^(-1) (q(lambda) v)
$
$q(T)^(-1)q(T) = I d_V$ ולכן
$
  v = q(T)^(-1) (q(lambda) v) = q(lambda) q(T)^(-1) v
$
נחלק את שני הצדדים ב-$q(lambda)$
$
  (**) :1/(q(lambda)) v = q(T)^(-1) v
$
נתבונן ב-$S v$
$
  S v = (p(T) q(T)^(-1)) v underset(=, "אסוציאטיביות") p(T) (q(T)^(-1) v) underset(=, (**)) p(T) 1/(q(lambda)) v \
  = 1/(q(lambda)) p(T) v underset(=, (*)) 1/(q(lambda)) p(lambda) v = p(lambda)/q(lambda) v
$
לכן
$
  S v = p(lambda)/q(lambda) v
$
לכן $v$ ו"ע של $S$ עם ע"ע $p(lambda)/q(lambda)$\
משרירותיות $lambda in sigma(T)$, מתקבל כי
#align(center)[
  #rect()[
    $sigma(S) = lr({p(lambda)/q(lambda)mid(|)lambda in sigma (T)})$
  ]
]
נתון כי $T$ אופרטור נורמלי, לכן ממשפט הפירוק הספקטרלי, קיים בסיס אורתונורמלי $cal(B)$ כך ש $[T]_cal(B)$ אלכסונית. כלומר
$
  [T]_cal(B) = mat(lambda_1, ; , lambda_2; , , dots.down; , , , lambda_n)
$
נחפש את $[S]_(cal(B))$
$
  [S]_(cal(B)) = [p(T)q(T)^(-1)]_(cal(B)) = [p(T)]_(cal(B)) [q(T)^(-1)]_(cal(B)) \
  =mat(p(lambda_1), ; , p(lambda_2); , , dots.down; , , , p(lambda_n)) dot.c mat(q(lambda_1)^(-1), ; , q(lambda_2)^(-1); , , dots.down; , , , q(lambda_n)^(-1)) \
  underset(=, "כפל מטריצות אלכסוניות") mat(p(lambda_1)q(lambda_1)^(-1), ; , p(lambda_2)q(lambda_2)^(-1); , , dots.down; , , , p(lambda_n)q(lambda_n)^(-1)) \
  underset(=, S "הגדרת") mat(S(lambda_1), ; , S(lambda_2); , , dots.down; , , , S(lambda_n))
$
לפי מה שהוכחנו בתחילת השאלה
$
  forall lambda_i in lambda_1, dots, lambda_n = sigma(T): S(lambda_i) = p(lambda_i)/q(lambda_i) in sigma(S)
$
ולכן
$
  mat(S(lambda_1), ; , S(lambda_2); , , dots.down; , , , S(lambda_n)) = mat(p(lambda_1)/q(lambda_1), ; , p(lambda_2)/q(lambda_2); , , dots.down; , , , p(lambda_n)/q(lambda_n)) = mat(lambda'_1, ; , lambda'_2; , , dots.down; , , , lambda_n')
$
נשים לב שלכל $lambda' in sigma(S)$ יש בין $1$ ל-$n$ ערכים עצמיים שונים של $T$ $lambda$ כך ש $p(lambda)/q(lambda) = lambda'$\
נראה באינדוקציה כי הריבוי האלגברי של $lambda'$ הוא סכום הריבויים האלגבריים של אותם $lambda$.
אם יש רק ערך עצמי אחד $lambda$ כך ש $p(lambda)/q(lambda) = lambda'$, על כל פעם ש $lambda$ מופיעה על האלכסון הראשי ב-$[T]_(cal(B))$, $lambda'$ מופיעה על האלכסון הראשי ב-$[S]_(cal(B))$, לכן $ r_(a)^T (lambda) = r_a^S (lambda') $
כעת נניח שהוכחנו שעבור $k-1 < n$, מתקיים
$
  r_(a)^S (lambda') = sum_(lambda in sigma(T) \ (p(lambda))/(q(lambda)) = lambda') r_a^T (lambda)
$
נראה עבור $k <= n$\
יהי $lambda'$ כך שקיימים $k$ ע"ע שונים של $T$ $lambda$ כך ש $p(lambda)/q(lambda) = lambda'$\
נבחר אחד מאותם ע"ע, נסמנו $tilde(lambda)$, עבור כל פעם ש-$tilde(lambda)$ מופיע על האלכסון הראשי של $[T]_(cal(B))$, $lambda'$ מופיע על האלכסון הראשי של $[S]_(cal(B))$, מהנחת האינדוקציה מתקיים
$
  r_(a)^S (lambda') - r_a^T (lambda) = sum_(lambda in sigma(T) without tilde(lambda) \ (p(lambda))/(q(lambda)) = lambda') r_a^T (lambda)
$
לכן
$
  r_(a)^S (lambda') = sum_(lambda in sigma(T) \ (p(lambda))/(q(lambda)) = lambda') r_a^T (lambda)
$
כנדרש.\
מכיוון ש-$T$ לכסינה, לכל $lambda in sigma(T)$ מתקיים $r_a^T (lambda) = r_g^T (lambda)$\
הראינו ש-$S$ לכסינה גם היא )מצאנו בסיס שעבורו המטריצה המייצגת של $S$ היא אלכסונית(, ולכן לכל $lambda' in sigma(S)$ מתקיים $r_a^S (lambda')=r_g^S (lambda')$
לכן
$
  r_g^S (lambda') = r_a^S (lambda') = sum_(lambda in sigma(T) \ (p(lambda))/(q(lambda)) = lambda') r_a^T (lambda) = sum_(lambda in sigma(T) \ (p(lambda))/(q(lambda)) = lambda') r_g^T (lambda)
$
כנדרש\
$square.filled$
#pagebreak()
= שאלה 2
יהי $T in "End"_(CC) (V)$ נורמלי, ונניח כי $3,4$ ערכים עצמיים של $T$. הראו שיש $v in V$ עבורו $norm(v) = sqrt(2)$ וגם $norm(T v) = 5$.
= פתרון 2
יהיו $u in V_4, w in V_3$
$
  ip(T u, T u) = ip(4 u, 4 u) = 4 ip(u, 4 u) = 4 dot.c overline(4) ip(u, u) = 16 ip(u, u) = 16
$
לכן $norm(u) =1$
$
  ip(T w, T w) = ip(3 w, 3 w) = 3 ip(w, 3 w) = 3 dot.c overline(3) ip(w, w) = 9 ip(w, w) = 9
$
לכן $norm(w) =1$\
$v = u +w$
= פתרון 2
יהי $u' != 0 in V$ וקטור עצמי של $T$ עם ע"ע $4$, נגדיר $u = u'/norm(u')$, מכיוון ש-$u in "Span"(u')$, גם $u$ הוא וקטור עצמי של $T$ עם ע"ע $4$, בנוסף, $norm(u) = 1$\
באותה דרך נגדיר $w$ ו"ע של $T$ עם ע"ע $3$ ונורמה $1$. \
נגדיר $v = u + w$ ונתבונן ב-$norm(T v)^2$
$
  ip(T (v), T(v))^2 \
  underset(=, v"הגדרת ") ip(T(u + w), T(u+w)) \
  underset(=, T"לינאריות ") ip(T(u)+T(w), T(v)) \
  underset(=, "לינאריות ברכיב הראשון") ip(T(u), T(v)) + ip(T(w), T(v)) \
  underset(=, "הרמיטיות") overline(ip(T(v), T(u))) + overline(ip(T(v), T(w))) \
  underset(=, v"הגדרת ") overline(ip(T(u+w), T(u))) + overline(ip(T(u+w), T(w))) \
  underset(=, "לינאריות ברכיב הראשון") overline(ip(T(u), T(u))) + overline(ip(T(w), T(u))) + overline(ip(T(u), T(w))) + overline(ip(T(w), T(w))) \
  underset(=, "ו\"ע של אופרטור נורמלי עם ע\"ע שונים הם אורתוגונלים") overline(ip(T(u), T(u))) + 0 + 0 + overline(ip(T(w), T(w))) \
  underset(=, "הגדרת נורמה") overline(norm(T(u))^2) + overline(norm(T(w))^2)\
  underset(=, "ריבוע מבטל צמוד") norm(T(u))^2 + norm(T(w))^2 \
  underset(=, w"ו-" u"הגדרת ") norm(4u)^2 + norm(3w)^2 \
  = 4^2 norm(u)^2 + 3^2 norm(w) \
  = 16 dot.c 1 + 9 dot.c 1 = 16 + 9 = 25
$
$norm(T v)^2 = 25$ לכן $norm(T v) = sqrt(5) = 5$\
נתבונן ב-$norm(v)^2$
$
  norm(v)^2 \ underset(=, v"הגדרת ") norm(u+w)^2 \
  underset(=, "הגדרת נורמה") ip(u+w, u+w) \
  underset(=, "לינאריות ברכיב הראשון") ip(u, u+w) + ip(w, u+w) \
  underset(=, "הרמיטיות") overline(ip(u+w, u)) + overline(ip(u+w, w)) \
  underset(=, "לינאריות ברכיב הראשון") overline(ip(u, u)) + overline(ip(w, u)) + overline(ip(u, w)) + overline(ip(w, w)) \
  underset(=, "ו\"ע של אופרטור נורמלי עם ע\"ע שונים הם אורתוגונלים") overline(ip(u, u)) + 0 + 0 + overline(ip(w, w))\
  underset(=, "הגדרת נורמה") overline(norm(u)^2) + overline(norm(w)^2) \
  underset(=, "ריבוע מבטל צמוד") norm(u^2) + norm(w)^2 \
  = 1 + 1 = 2
$
$norm(v)^2 = 2$, לכן $norm(v) = sqrt(2)$\
מצאנו וקטור $v in V$ המקיים $norm(v) = sqrt(2)$ ו-$norm(T v) = 5$\
כנדרש\
$square.filled$
#pagebreak()
= שאלה 3
יהי $T in "End"_(CC) (V)$ ויהי $a in CC$ עבורו $|a| != 1$
== סעיף א'
הראו כי אם $T^* = a T$ אז $T = 0$
== סעיף ב'
נניח כי $T$ נורמלי, ויהי $S = T- a T^*$ הוכיחו כי $Ker(T) = Ker(S)$
= פתרון 3
== סעיף א'
נניח כי $T^* = a T$\
בנוסף, נניח בשלילה כי $T != 0$\
יהיו $0_V != v != w in V$, נתבונן ב-$ip(T v, w)$
$
  ip(T v, w) \
  underset(=, T^* "הגדרת") ip(v, T^* w) \
  underset(=, T^* = a T "נתון") ip(v, alpha T w)\
  underset(=, "הומוגניות צמודה ברכיב השני") overline(a) ip(v, T w)\
  underset(=, T^* "הגדרת") overline(a) ip(T^* v, w) \
  underset(=, T^* = a T "נתון") overline(a) ip(a T v, w)\
  underset(=, "לינאריות ברכיב הראשון") overline(a) a ip(T v, w)\
  = a^2 ip(T v, w)
$
קיבלנו כי $ip(T v, w) = a^2 ip(T v, w)$, לכן $a^2 = 1$, כלומר $|a| = 1$, בסתירה לנתון שאומר $|a| != 1$\
לכן $T = 0$\
כנדרש\
$square.filled$
== סעיף ב'

