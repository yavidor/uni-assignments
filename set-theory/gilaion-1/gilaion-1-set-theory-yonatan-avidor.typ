#import "@preview/catppuccin:1.1.0": catppuccin, flavors
#import "@preview/showybox:2.0.4": showybox
#show: catppuccin.with(flavors.mocha)
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
= שאלה 1
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

#showybox( frame: (
    border-color: red.darken(30%),
    title-color: red.darken(30%),
    radius: 2pt,
    thickness: 1pt,
    body-inset: 1.5em,
body-color: red.lighten(67%)
  ), title: "אופסי")[קראתי את סעיף א' בלי לקרוא את האחרים (אני יודע שממש לא אמורים לעשות את זה, אבל לא נורא) \ וכתבתי פתרון של סעיף א' שעל הדרך עושה את סעיפים ב' וג', דיברתי עם המרצה והיא אמרה שזה בסדר ולכן אגיש את זה כך]
=== שלב I
נבנה את ${a}$ בכך ש"נפעיל" את אקסיומת הזיווג על $a,a$ ונקבל קבוצה ${a,a}$, לאחר מכן, נבנה באותה צורה את הקבוצות ${b}$ ואת ${c}$.\
=== שלב II
"נפעיל" את אקסיומת הזיווג על ${b},{c}$ ונקבל ${{b},{c}}$, נפעיל את אקסיומת הזיווג על ${a},{a}$ ונקבל את ${{a}}$
=== שלב III
"נפעיל" את אקסיומת הזיווג על ${{b},{c}},{{a}}$ ונקבל את  #box(rect(stroke: flavors.mocha.colors.lavender.rgb)[${{a},{b},{c}}$]) (מה שמראה את סעיף ב')
=== שלב IV
"נפעיל" את אקסיומת האיחוד על ${{a},{b},{c}}$ ונקבל כי
 $ union.big {{a},{b},{c}} = #box(rect(stroke: flavors.mocha.colors.lavender.rgb)[{a,b,c}]) $
(ובכך סיימנו גם את סעיפים א' ו-ג')
#pagebreak()
= שאלה 3
