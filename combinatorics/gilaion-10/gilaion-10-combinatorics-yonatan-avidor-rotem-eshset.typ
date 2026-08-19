#import "graphs.typ": radialgraph

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
  #text(size: 18pt)[גיליון 10]

  #v(1cm)
  #text(size: 14pt)[יונתן אבידור - 214269565]
  #v(0.1cm)
  #text(size: 14pt)[רותם עשת - 212674683]
]
#import "@preview/dice:1.0.0": randint, randominit
#pagebreak()
= שאלה 1

$
(6, 3, 3, 8, 8, 8, 5)
$
== סעיף א'
מה מספר הקודקודים בגרף?
== סעיף ב'
מיהם העלים בגרף
== סעיף ג'
מיהו הקודקוד בעל הדרגה הגדולה ביותר ומה דרגתו
== סעיף ד'
מהו מספר הצלעות בגרף? תנו שני הסברים שונים!
= פתרון 1
== סעיף א'
9
== סעיף ב'
$ 0,1,2,4,7 $
== סעיף ג'
$8$, דרגתו $4$
== סעיף ד'
=== דרך א'
סכום הדרגות חלקי  $2$
$
(1 + 1 + 1 + 3 + 1 + 2 + 2 + 1 + 4) / 2 = 16/2 = 8
$
=== דרך ב'
בעץ יש צלע אחת פחות משיש קודקודים, ישנם $9$ קודקודים ולכן $8$ צלעות
=== סעיף ה'
  #radialgraph(nodes: ( "0","1", "2", "3", "4", "5", "6","7","8"), edges: (("0","6"),("1","3"),("2","3"),("3","8"),("4","8"),("6","8"),("7","5"),("5","8")), radius: 1.8cm)
#pagebreak()
= שאלה 2
 ציירו עץ עם הדרגות הבאות:
$
1, 1, 1, 1, 1, 1, 2, 4, 4
$
מספרו את הקודקודים מ-$1$ עד $9$ והתאימו לו סדרת פרופר מתאימה
= פתרון 2
#radialgraph(nodes: ("1", "2", "3", "4", "5", "6","7","8","9"), edges: (("1","7"),("2","7"),("3","7"),("4","8"),("5","8"),("6","8"),("9","8"),("9","7")), radius: 1.8cm)
קוד פרופר
$
7,7,7,8,8,8,9
$
#pagebreak()
= שאלה 3
= פתרון 3
= בדיחת קרש
הקוקטייל האהוב עליי הוא הקוקטייל הרקורסיבי.\
מרכיביו הם $50%$ וודקה ו-$50%$ קוקטייל רקורסיבי.
