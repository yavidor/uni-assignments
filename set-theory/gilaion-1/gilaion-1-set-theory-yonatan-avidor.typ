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
  #text(size: 18pt)[גיליון 1]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
]
#pagebreak()
= שאלה 1 <q1>
== סעיף א'
הוכיחו כי לא קיימת קבוצה $U$ המכילה כל קבוצה כאיבר.
== סעיף ב'
הוכיחו כי לא קיימת $S$ המכילה את ${x}$ כאיבר לכל קבוצה $x$.
= פתרון 1
== סעיף א'
נניח בשלילה כי קיימת $U$ "קבוצת כל הקבוצות", נגדיר פסוק $p(x)=x in.not x$ (שזה טכנית לא מוגדר בהגדרה לפסוק, אבל זה שקול ל$not(x in x)$, נשתמש בסימון $in.not$ מתוך נוחות גרידא) \
מאקסיומת ההפרדה קיימת קבוצה $cal(B)={x in U:p(x)}$, שזו קבוצה לא אפשרית כפי שהדגמנו בכיתה על פי פרדוקס ראסל $arrow.zigzag$
== סעיף ב'
נניח בשלילה כי קיימת $S$ כך ש $(forall x)({x} in S)$, מאקסיומת האיחוד קיימת קבוצה $union.big S$ אשר איבריה הם איברי האיברים של $S$.\
אך אמרנו שלכל $x$, ${x}in S$, כלומר לכל $x$ $x in union.big S$. שוב קיבלנו את קבוצת כל הקבוצות!!! הגענו לסתירה, שכן בסעיף א' הראינו כי *לא* קיימת קבוצת כל הקבוצות
#pagebreak()
= שאלה 2
יהיו $a,b,c$ קבוצות שאינן בהכרח שונות זו מזו. בסעיפים הבאים השתמשו רק באקסיומות ההיקף, הזיווג והאיחוד.
== סעיף א'
הוכיחו כי קיימת הקבוצה ${a,b,c}$. הציגו במפורש את שלבי הבנייה.
== סעיף ב'
הוכיחו כי קיימת הקבוצה $ F={{a},{b},{c}} $
== סעיף ג'
הוכיחו כי $ union.big F = {a,b,c} $
= פתרון 2

#showybox(
  frame: (
    border-color: red.darken(30%),
    title-color: red.darken(30%),
    radius: 2pt,
    thickness: 1pt,
    body-inset: 1.5em,
    body-color: red.lighten(67%),
  ),
  title: "אופסי",
)[קראתי את סעיף א' בלי לקרוא את האחרים (אני יודע שממש לא אמורים לעשות את זה, אבל לא נורא) \ וכתבתי פתרון של סעיף א' שעל הדרך עושה את סעיפים ב' וג', דיברתי עם המרצה והיא אמרה שזה בסדר ולכן אגיש את זה כך]
נבנה את ${a,b,c}$
=== שלב I
נבנה את ${a}$ בכך ש"נפעיל" את אקסיומת הזיווג על $a,a$ ונקבל קבוצה ${a,a}$, לאחר מכן, נבנה באותה צורה את הקבוצות ${b}$ ואת ${c}$.\
=== שלב II
"נפעיל" את אקסיומת הזיווג על ${b},{c}$ ונקבל ${{b},{c}}$, נפעיל את אקסיומת הזיווג על ${a},{a}$ ונקבל את ${{a}}$
=== שלב III
"נפעיל" את אקסיומת הזיווג על ${{b},{c}},{{a}}$ ונקבל את  #box(rect(stroke: flavors.mocha.colors.lavender.rgb)[${{a},{b},{c}}$]) (מה שמראה את סעיף ב')
=== שלב IV
"נפעיל" את אקסיומת האיחוד על ${{a},{b},{c}}$ ונקבל כי
$ union.big {{a},{b},{c}} = #box(rect(stroke: flavors.mocha.colors.lavender.rgb)[$ {a,b,c} $]) $
מאקסיומת האיחוד אכן מדובר בקבוצה, מה שמסיים את סעיף א'.\
מאקסיומת ההיקף, מכיוון שאיברי הקבוצות הם אותם האיברים, אכן מדובר באותה קבוצה, מה שמסיים גם את סעיף ג'
#pagebreak()
= שאלה 3 <q3>
נסמן $0=emptyset$, $1={0}$, ו-$2={0,1}$. חשבו ונמקו
$
union.big {1,emptyset,2,{emptyset,{1}}}
$
= פתרון 3
נסמן $cal(A)={1,emptyset,2,{emptyset,{1}}}$ ונפתח לפי ההגדרה, (ובנוסף, נצבע את האיברים על מנת שיהיה קל לזכור מה הגיע מאיפה)
$
cal(A)={#text(fill:flavors.mocha.colors.flamingo.rgb)[$ 1 $],#text(fill:flavors.mocha.colors.mauve.rgb)[$ emptyset $],#text(fill:flavors.mocha.colors.peach.rgb)[2],#text(fill:flavors.mocha.colors.red.rgb)[$ {emptyset,{1}} $]} = {#text(fill: flavors.mocha.colors.flamingo.rgb)[$ {emptyset} $],#text(fill:flavors.mocha.colors.mauve.rgb)[$ emptyset $],#text(fill: flavors.mocha.colors.peach.rgb)[$ {emptyset,{emptyset}} $],#text(fill: flavors.mocha.colors.red.rgb)[$ {emptyset,{{emptyset}}}$ ]}
$
ולכן מאקסיומת האיחוד
$
union.big cal(A)={#text(fill: flavors.mocha.colors.flamingo.rgb)[$ emptyset $], #text(fill: flavors.mocha.colors.peach.rgb)[$ emptyset,{emptyset} $],#text(fill:flavors.mocha.colors.red.rgb)[ $ emptyset,{{emptyset}} $]}
$
אמנם כמסקנה מאקסיומת ההיקף, אין כפילויות של איברים, לכן
$
{emptyset,emptyset,{emptyset},emptyset,{{emptyset}}} = {emptyset,{emptyset},{{emptyset}}}
$
נזכר שהגדרנו $0=emptyset,1={0}$, ונקבל

$
#rect(stroke:flavors.mocha.colors.lavender.rgb)[$ union.big{1,emptyset,2,{emptyset,{1}}}={0,1,{1}} $]
$
#pagebreak()
= שאלה 4
נסמן
$
A={{emptyset,{emptyset}},{{emptyset},{{emptyset}}},{emptyset,{emptyset},{emptyset,{emptyset}}}}
$
== סעיף א'
הוכיחו כי $A$ קבוצה.
== סעיף ב'
חשבו את הקבוצות הבאות ונמקו
#english[#align(center)[#grid(columns: 4,align: (right + horizon, left + horizon, right + horizon, left + horizon),
    column-gutter: (1.5em, 3em, 1.5em),
    row-gutter: 1.5em,
[(i)], $display(union.big A)$,[(ii)],$display(inter.big A)$,[(iii)],$display(union.big(union.big(A)))$,[(iv)],$ display(inter.big(union.big A)) $)
]]
== סעיף ג'
אילו מבין הקבוצות בסעיף ב' הן תת-קבוצות של $A$? נמקו.
= פתרון 4
נשתמש בסימונים מ#link(<q3>)[שאלה 3] ומההרצאה, וכעת נכתוב מחדש את $A$
$
A= {2,{1,{1}},3}
$
== סעיף א'
טכנית, מעולם לא הוכחנו את חוקיות הבנייה של המספרים הטבעיים בצורה זו, אז נראה מהר כי אכן ניתן לכתוב $3={0,1,2}$\
את $0,1,2$ ראינו בהגדרה של #link(<q3>)[שאלה 3] שמגדירים את $0,1,2$ באמצעות אקסיומת הקבוצה הריקה, ואקסיומת הזיווג. ב#link(<q1>)[שאלה 1] ראינו שמשלוש קבוצות חוקיות $a,b,c$ ניתן ליצור קבוצה חוקית ${a,b,c}$, לכן $3={0,1,2}$ קבוצה.\
"נפעיל" את אקסיומת הזיווג על $1,1$ ונקבל את הקבוצה ${1}$, כעת "נפעיל" את אקסיומת הזיווג על ${1},1$ ונקבל את הקבוצה ${1,{1}}$.\
כעת משיש לנו את הקבוצות $2,{1,{1}},3$, נוכל שוב להשתמש במה שהראינו בשאלה 1 ולקבל את הקבוצה ${2,{1,{1}},3}$\
בנינו את $A$ באמצעות האקסיומות וכלים שקיבלנו באמצעות האקסיומות, ולכן $A$ היא אכן קבוצה.
== סעיף ב'
למען הנוחות, בסעיף זה נרחיב בחזרה את $A$ ברמה אחת (כלומר, נכתוב את איבריה כקבוצות, אבל לא נרחיב את איבריהן, ניתן לעשות זאת בזכות האינדוקטיביות שבסימון המספרים הטבעיים [בנוסף, יש לשים לב כי ${1,{1}}$ כבר "מורחב")
$
A = {#text(fill:flavors.mocha.colors.flamingo.rgb)[$ {0,1} $],#text(fill:flavors.mocha.colors.pink.rgb)[$ {1,{1}} $],#text(fill:flavors.mocha.colors.mauve.rgb)[$ {0,1,2} $]}
$
===  תת-סעיף i
$
union.big A = {#text(fill:flavors.mocha.colors.flamingo.rgb)[$ 0,1 $],#text(fill:flavors.mocha.colors.pink.rgb)[$ 1,{1} $],#text(fill:flavors.mocha.colors.mauve.rgb)[$ 0,1,2 $]} underset(=,"אקסיומת ההיקף") {0,1,{1},2}
$
=== תת-סעיף ii
על מנת שמשהו יהיה ב$inter.big A$, הוא צריך  להיות איבר בכל אחד מאיברי $A$,
האפשרויות שלנו הם האיברים של $union.big A$, כלומר $0,1,{1},2$, $2$ מופיע רק כחלק מ-$3$, $0$ מופיע כאיבר רק כחלק מ-$2$ ומ-$3$, ${1}$ מופיע רק כחלק מ-${1,{1}}$, רק $1$ מופיע בשלושת האיברים של $A$, ולכן
$
inter.big A = {1}
$
=== תת-סעיף iii
נעשה "הרחבה" נוספת, הפעם ל$union.big A$
$
union.big A = {#text(fill:flavors.mocha.colors.flamingo.rgb)[$ 0 $], #text(fill:flavors.mocha.colors.pink.rgb)[$ {0} $],#text(fill:flavors.mocha.colors.mauve.rgb)[$ {1} $],#text(fill:flavors.mocha.colors.red.rgb)[$ {0,1} $]}
$
כעת, "נפעיל" את אקסיומת האיחוד ונקבל
$
union.big (union.big A) = {#text(fill:flavors.mocha.colors.pink.rgb)[$ 0$],#text(fill:flavors.mocha.colors.mauve.rgb)[$ 1 $],#text(fill:flavors.mocha.colors.red.rgb)[$ 0,1 $]} underset(=,"אקסיומת ההיקף") {0,1}underset(=,D e f)2
$
=== תת-סעיף iv
מכיוון ש-$0=emptyset in union.big A$, ו$exists.not x.x in emptyset$, לא ייתכן שיש איברים כלשהם ב-$inter.big (union.big A)$, ולכן
$
inter.big (union.big A) = emptyset = 0
$
== סעיף ג'
נבדוק עבור כל תת-סעיף מסעיף ב' האם התוצאה היא תת-קבוצה של $A$
=== תת-סעיף i
$1in 0,1,{1},2}$ אבל $ 1in.not A$, לכן לא
=== תת-סעיף ii
$1 in {1}$ אבל $1 in.not A$ לכן לא
=== תת-סעיף iii
$1 in 2$ אבל $1 in.not A$, לכן לא
=== תת-סעיף iv
$emptyset$ היא תת-קבוצה של קבוצה שהיא, שכן לכל קבוצה $X$, $emptyset subset.eq X$, לכן כן
