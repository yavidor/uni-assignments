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
//#import draw: arc, circle, content, line
#set document(author: "יונתן אבידור - 214269565", title: "אלגברה ב' 01040168", description: "גליון 10", date: auto)
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
יהיו $0_V != v in V$ , נתבונן ב-$norm(T v)^2$
$
  norm(T v)^2 \
  underset(=, "הגדרת נורמה")ip(T v, T v)
  underset(=, T^* "הגדרת") ip(v, T^* T v) \
  underset(=, T^* = a T "נתון") ip(v, alpha T T v)\
  underset(=, "הומוגניות צמודה ברכיב השני") overline(a) ip(v, T T v)\
  underset(=, T^* "הגדרת") overline(a) ip(T^* v, T v) \
  underset(=, T^* = a T "נתון") overline(a) ip(a T v, T v)\
  underset(=, "לינאריות ברכיב הראשון") overline(a) a ip(T v, T v)\
  underset(=, "הגדרת נורמה") |a|^2 norm(v)^2
$
לכן
$
  norm(T v)^2 = |a|^2 norm(v)^2
$
נעביר אגפים
$
  norm(T v)^2 (1- |a|^2) = 0
$
נתון כי $|a| != 1$ ולכן $norm(T v)^2=0$ \
משרירותיות $v$, זה נכון עבור #text(weight: "bold")[כל] $v in V$\
הוקטור היחיד שהנורמה שלו היא $0$ הוא וקטור האפס, האופרטור היחיד ששולח כל וקטור לוקטור האפס הוא אופרטור האפס\
לכן $T = 0$
כנדרש\
$square.filled$
== סעיף ב'
נראה כי $Ker(T) = Ker(S)$ באמצעות הכלה דו-כיוונית
=== $Ker(T) subset.eq Ker(S)$
יהי $v in Ker(T)$, מכאן ש $T v = 0_V$, לכן $norm(T v)=0$, נתון כי $T$ אופרטור נורמלי, לכן $norm(T^* v) = norm(T v) = 0$\
הוקטור שהנורמה שלו היא $0$ הוא וקטור האפס, לכן $T^* v = 0_V$ \
נתבונן ב-$S v$
$
  S v = (T - a T^*) v = T v - a T^* v = 0_V - a dot.c 0_V = 0_V
$
לכן $S v = 0_V$, ומכאן $v in Ker(S)$\
משרירותיות $v$ קיבלנו כי לכל $v in Ker(T)$, $v in Ker(S)$, לכן $Ker(T) subset.eq Ker(S)$
=== $Ker(S) subset.eq Ker(T)$
יהי $v in Ker(S)$, מכאן ש $S v = 0_V$, מהגדרת $S$ זה אומר $(T -a T^*) v = 0_V$ \
נעביר אגפים ונקבל
$T v = a T^*v$, נוציא את הנורמה של שני האגפים ונקבל כי $norm(T v) = norm(a T^*v)$. מאידך,
נתון כי $T$ נורמלי ולכן $norm(T v) = norm(T^* v)$\
לכן
$
  norm(T^* v) = norm(a T^* v) = |a| norm(T^*v)
$
מכאן שמתקיים הפסוק הבא
$
|a| = 1 or T^*v = 0_V
$
ומכיוון שנתון $|a|!= 1$, בהכרח מתקיים $T^* v = 0_V$
לכן $norm(T^*v)=0$, מנור מליות $T$ מתקבל $norm(T v)=0$.\
לכן $T v = 0$, כלומר $v in Ker (T)$\
משרירותיות $v$ קיבלנו כי לכל $v in Ker(S)$, $v in Ker(T)$, לכן $Ker(S) subset.eq Ker(T)$\
הראינו הכלה דו-כיוונית, ולכן שוויון\
כנדרש\
$square.filled$
#pagebreak()
= שאלה 4
== סעיף א'
יהי $T in "End"_CC (V)$ הרמיטי עם $r_sigma (T) < 1$ מיצאו $S in "End"_CC (V)$ אוניטרי עבורו
$
T = (S+S^*)/2
$
== סעיף ב'
יהי $T in "End"_CC (V)$ הוכיחו כי $T$ ניתן לכתיבה כצירוף של ארבעה אופרטורים אוניטריים.
= פתרון 4
== סעיף א'
נחפש כיוון דרך ההקבלה בין $"End"_CC$ ל-$CC$.\
כפי שניתן לתאר $z in CC$ בתור $a + i b$ כאשר $a,b in RR$. נחפwש $S in "End"_CC$ אוניטרי בתור $A + i B$ כאשר $A,B$ הרמיטיים, כך ש $T= (S+S^*)/2$.\
נמצא את הצמוד של $S$
$
S^* = (A+ i B )^* = ((A)^* + (i B )^*) = (A^* +  overline(i) B^*) = (A^* - i B^* ) = A - i B 
$
כשהשוויון האחרון מתקבל מהיות $A,B$ הרמיטים.\
עכשיו כשיש לנו ייצוג ל-$S,S^*$, נוכל להשוות ל-$T$
$
T = (S+S^*)/2 = (A+i B + (A - i B ))/2 = (2A)/2 = A
$
לכן נגדיר את
$S = T + B i$, נחפש את $B$\
$S$ אוניטרי, לכן $S^(-1) = S^*$, כלומר $S^* S = I d_V$
$
I d_V = S^* S = (T+ i B) dot.c (T - i B) = T^2 + B^2
$
נעביר אגפים ונקבל
$
B^2 = I d_V - T^2
$
נוציא שורש לשני הצדדים
$
B = sqrt(I d_V - T^2)
$
ולכן
$
S = T + i sqrt(I d_V - T^2)
$
אך נזכור כי כל זה היה לא יותר מאשר ניחוש מושכל
== סעיף א'
נסמן $lambda_1,lambda_2,dots,lambda_n = sigma(T)$\

לפי המשפט הספקטרלי, קיים בסיס $cal(B)$, כך ש
$
[T]_cal(B) = mat(lambda_1;,lambda_2;,,dots.down;,,,lambda_n)
$
נשים לב כי לכל $j in [n]$, $lambda_j in RR$ כי $T$ הרמיטי, ובנוסף $-1 <= lambda_j <=1$ מהנתון.\
נגדיר $alpha_1,alpha_2,dots,alpha_n in CC$ בדרך הבאה,
לכל $j in [n]$, נגדיר $theta_j=arccos(lambda_j)$ ו-$alpha_j = cos(theta_j)+i sin(theta_j)$ (בסימונים של אלגברה א' $a_j=e^(i theta_j)$).\
נזכר בשתי זהויות טריגונומטריות. יהי $-1<=a<=1 in RR$\
נסמן $gamma=arccos(a) in[0,pi]$
אזי
$
cos(gamma) = a \
sin(gamma) = sqrt(1-a^2)
$
כאשר הזהות הראשונה מתקבלת מהיות $arccos$ הפונקציה ההופכית של $cos$\
את הזהות השנייה נקבל כך:\
לפי זהות פיתגורס $sin(gamma)^2+cos(gamma)^2=1$\
מהזהות הראשונה שהראינו $cos(gamma)=a$, לכן $sin(gamma)^2+a^2=1$, נעביר אגפים ונקבל $sin(gamma)^2 = 1-a^2$\
נוציא שורש לשני צדדי המשוואה ונקבל $sin(gamma)=sqrt(1-a^2)$, מכיוון ש $|a|<1$, $1-a^2>0$ והשורש קיים.\
לפי הזהויות הללו, נוכל למצוא את $alpha_j$
$
alpha_j = cos(theta_j) + i sin(theta_j) = lambda_j + i sqrt(1-lambda_j^2)
$
נגדיר את המטריצה האלכסונית הבאה
$
A:= mat(alpha_1;,alpha_2;,,dots.down;,,,alpha_n)
$
$A$ אלכסונית ולכן סימטרית, לכן
$
A^* = mat(overline(alpha_1);,overline(alpha_2);,,dots.down;,,,overline(alpha_n))
$
נשים לב כי $A$ אוניטרית, זאת מכיוון ש
$
A^*A = mat(overline(alpha_1)alpha_1;,overline(alpha_2)alpha_2;,,dots.down;,,,overline(alpha_n)alpha_n)= mat(|alpha_1|^2;,|alpha_2|^2;,,dots.down;,,,|alpha_n|^2)
$
ומתקיים
$
|alpha_j|^2 = lambda_j^2 + sqrt(1-lambda_j^2)^2 = lambda_j^2 + 1 - lambda_j^2 = 1
$
לכן
$
A^* A = mat(1;,1;,,dots.down;,,,1) = I_n
$
מכאן ש$A^* = A^(-1)$, כלומר $A$ אוניטרית.\
נתבונן במטריצה $1/2 dot.c (A+A^*)$
$
1/2 dot.c (A+A^*) = 1/2 dot.c mat(overline(alpha_1)+alpha_1;,overline(alpha_2)+alpha_2;,,dots.down;,,,overline(alpha_n)+alpha_n)\
= 1/2 mat(lambda_1 + sqrt(1-lambda_1^2)+lambda_1 - sqrt(1-lambda_1^2);,lambda_2 + sqrt(1-lambda_2^2)+lambda_2 - sqrt(1-lambda_2^2);,,dots.down;,,,lambda_n + sqrt(1-lambda_n^2)+lambda_n - sqrt(1-lambda_n^2))\
=1/2  mat(2lambda_1;,2lambda_2;,,dots.down;,,,2lambda_n) =  mat(lambda_1;,lambda_2;,,dots.down;,,,lambda_n) = [T]_(cal(B))
$
נגדיר את האופרטור $S$ להיות האופרטור שהמטריצה המייצגת שלו ביחס לבסיס $cal(B)$ היא $A$
=== אינטואיציה
כל הע"ע של $T$ ממשיים כי הוא נורמלי, וכולם ב-$(-1,1)$, על מערכת הצירים המרוכבת אפשר לומר שהם כולם על אותו הקוטר של מעגל היחידה. אנחנו יודעים לבנות אופרטור אוניטרי באמצעות $n$ עם ערך מוחלט (מודולו? מודול?) $1$, לכן נרצה "להעביר" את הע"ע שיש לנו למעגל היחידה\
#english[
#canvas({
  let (radius, angle) = (2.6,50deg)
  let point = (radius * calc.cos(angle), radius * calc.sin(angle))
  let axis = (mark: (end: "stealth", fill: black, scale: .65), stroke: .8pt)

  draw.line((-3, 0), (3, 0), ..axis, name: "re-axis")
  draw.line((0, -3), (0, 3), ..axis, name: "im-axis")
  draw.circle((0, 0), radius: radius, stroke: .55pt)
  draw.grid((-3, -3), (3, 3), step: 0.5, stroke: gray + 0.2pt)
  draw.line((0, 0), (point.at(0), 0), stroke: 1pt, name: "re-proj")
  draw.line((0, 0), point, stroke:  1pt, name: "radius")
  draw.line("radius.end", "re-proj.end", stroke:  1pt, name: "im-proj")
  draw.line((0, 0), (point.at(0),-point.at(1)), stroke:  (thickness: 1pt , dash:"dashed"), name: "radius-bar")
  draw.line("radius-bar.end", "re-proj.end", stroke:  (thickness: 1pt, dash:"dashed"), name: "im-proj-bar")
  draw.arc((0, 0), radius: 0.9, start: 0deg, stop: angle, anchor: "origin", stroke: .55pt, name: "theta-arc")

  draw.circle("re-proj.end", radius: .055, fill: black, stroke: none)
  draw.content("re-axis.end", $"Re"$, anchor: "west", padding: 2pt)
  draw.content("im-axis.end", $Im$, anchor: "south", padding: 2pt)
  draw.content("radius.end", $alpha$, anchor: "south-west", padding: 3pt)
draw.content((point.at(0),-point.at(1)),$overline(alpha)$,anchor:"north-west", padding: 2pt)
  draw.content("im-proj.mid", text[$Im(alpha)$], anchor: "west", padding:(left: 0.1))
  draw.content("radius.mid", text[$1$], anchor: "south", padding:(bottom:0.2))
  draw.content("theta-arc.50%", $theta$, anchor: "base-west", padding: 1pt)
draw.content((point.at(0),0),$lambda$,anchor:"north", padding:(top:0.1, left:10pt))
})
]
לכן $alpha = cos(theta)+i sin(theta)$, ידוע לנו האורך של הניצב הקרוב ל-$theta$ ושל היתר, לכן $cos(theta) = cos(lambda/1) =cos(lambda)$, כלומר $theta = arccos(lambda)$.\ לכן  
$
"Re"(alpha)=cos(arccos(lambda))=lambda\
Im(alpha) = sin(arccos(lambda))=sqrt(1-lambda^2)
$
ומכיוון ש-$|lambda|<1$ מתקבל מספר ממשי תקין.\
באותה מידה נקבל את $overline(alpha)$
$
"Re"(overline(alpha)) = lambda\
Im(overline(alpha)) = -sqrt(1-lambda^2)
$
#pagebreak()
= שאלה 5
== סעיף א'
תהי $theta in RR$, תהי
$
A_theta = mat(cos(theta),-sin(theta);sin(theta),cos(theta))
$
ויהי $rho_theta := T_A_theta$ אופרטור הכפל משמאל ב-$A_theta$.\
מיצאו $v in V$ $rho_theta = R_v circle.small R$ והסיקו כי כל אופרטור אורתוגונלי על $RR^2$ הוא הרכבה של לכל היותר שני שיקופים.
== סעיף ב'
יהי $T in "End"_RR (RR^3)$ אורתוגונלי. הראו שקיים בסיס $cal(B)$ של $RR^3$, שקיימת $lambda in {plus.minus 1}$ ושקיימת $O in "M"_2 (RR)$ אורתוגונלית עבורם מתקיים
$
[T]_cal(B) = mat(lambda,0_(1 times 2);0_(2 times 1), O)
$
== סעיף ג'
הוכיחו כי כל אופרטור אורתוגונלי $T in "End"_RR (RR^3)$ הוא הרכבה של לכל היותר $3$ שיקופים.
= פתרון 5
