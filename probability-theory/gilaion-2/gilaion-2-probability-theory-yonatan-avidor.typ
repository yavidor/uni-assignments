#import "@preview/catppuccin:1.1.0": catppuccin, flavors
#import "@preview/showybox:2.0.4": showybox
#import "@preview/cetz:0.5.3"
#show: catppuccin.with(flavors.mocha)
#set page(margin: 1.50in, footer: context {
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
#align(center + horizon)[
  #set text(font: "New Computer Modern")

  #text(size: 22pt, weight: "bold")[ Probability Theory - 01040222 ] \
  #v(0.5em)
  #text(size: 18pt)[Homework 2]

  #v(1cm)
  #text(size: 14pt)[Yonatan Avidor - 214269565]
]
#pagebreak()
= Question 1 - Prove or Disprove
Let $(Omega, cal(F), PP)$ be a probability space, and let $A,B,C in cal(F)$ be events. Prove or disprove each of the following statements.
== Section A
$A$ is independent of itself if and only if $PP(A) in {0,1}$
== Section B
If $A$ and $B$ are disjoint and independent, then $PP(A)=0$ or $PP(B)=0$
== Section C
If $PP(B)>0$, then
$
  PP(A^c mid(|)B) = 1 - PP(A mid(|)B)
$
== Section D
If $A$ and $B$ are independent, then $A$ and $B^c$ are independent
== Section E
Suppose $PP(C) > 0$. If $A$ and $B$ are independent, then they are also independent under the
conditional probability measure $PP(dot.c mid(|) C)$.
== Section F
Suppose $PP(C) > 0$. If $A$ and $B$ are independent under the conditional probability measure $PP(dot.c mid(|)C)$, then they are independent under $PP$
= Answer 1
== Section A
True!\
We want, $PP(A inter A)=PP(A) PP(A)$, But since $A inter A = A$, and such  we want to have $PP(A) = PP^2(A)$, by definition $PP(A) in [0,1]$, and the only numbers $a in [0,1]$ for which $a^2 = a$ are $0,1$, therefore $PP(A)in {0,1}$
== Section B
True!\
By definition, $A$ and  $B$ be are disjoint means that $A inter B = emptyset$,\
therefore $PP(A inter B) = PP(emptyset) = 0$. On the other hand, $A$ and $B$ are independent, so $PP(A inter B)= PP(A)PP(B)$.\
We combine the two and get
$
  PP(A) PP(B) = 0
$
Therefore $PP(A)=0 or PP(B)=0$
== Section C
True!\
We proved that for a fixed $B in cal(F)$, $PP(dot.c mid(|)B)$ is a probability space $(Omega, cal(F), hat(PP))$ with
$
  hat(PP): cal(F) --> [0,1]\
  A subset.eq Omega mapsto PP(A mid(|) B)
$
$(A, A^c)$ is a partition of $Omega$, therefore
$
  hat(PP)(A)+hat(PP)(A^c)=1 ==> hat(PP)(A^c) = 1 - hat(PP)(A) underset(=, "Def of "hat(PP)) PP(A^c mid(|)B) = 1 - PP(A mid(|)B)
$
== Section D
True!\
We need to check that  $PP(A inter B^c) = PP(A)PP(B^c)$
$
  PP(A inter B^c) = PP(A without (A inter B)) underset(=, (*)) PP(A) - PP(A inter B) underset(=, A " and "B" are ind.") PP(A) - PP(A) PP(B) \
  = PP(A) (1 - PP(B)) = PP(A) PP(B^c)
$
$(*)$: $(A inter B) union (A without (A union B)) = A$,  $(A inter B) inter (A without (A union B)) = emptyset$ we can subtract\
== Section E
False!\
We'll disprove it with a counter-example.\
We'll define the experiment of rolling two dice (I am writing it whilst there is a board game happening without me, sorry)\
Let $Omega = {(i,j):1<= i,j,<=6}$ and define $(Omega, p)$ to be our probability space, with $p$ being the uniform prob.\
Let
$
  A = "First die is "3\
  B = "Second die is " 5\
  C = "Sum of the two dice is "8
$
First we'll prove that $A$ and $B$ are independent.\
$
  A = {(3,1),(3,2),(3,3),(3,4),(3,5),(3,6)} ==> PP(A) = 1/6\
  B = {(1,5),(2,5),(3,5),(4,5),(5,5),(6,5)}==> PP(B) = 1/6
$
Now let's calculate $PP(A inter B)$
$
  PP(A inter B) = p((3,5)) = 1/36 = 1/6 dot.c 1/6 = PP(A) dot.c PP(B)
$
Now we'll look at a new probability space, one where $C$ is true, so $ Omega = C = {(2,6),(3,5),(4,4),(5,3),(6,2)} $
Now we need to show that $A$ and $B$ are not indepedent anymore.\
Recall that if $A$ and $B$ are still independent then
$
  PP((A mid(|) B)mid(|)C) = PP(A mid(|)C)
$
Since we are still under uniform probability with a new $Omega$, we have $PP(A mid(|)C) = (|A|)/(|Omega|)$.\
First, we'll calculate the new $|A|$.
$
  A = {(3,5)} ==> |A| = 1
$
Therefore $PP(A mid(|) C) = 1/5$\
However, given $B$ (so given that the second dice is $5$ and since we already know that the sum is $8$, $A$ _must_ be $3$, so $PP((A|B)|C)=1$.\
$1 != 1/5$ and such, $A$ and $B$ are depedent.
== Section F
We'll modify the experiment from the previous section.\
Same probability space, but different events
$
  A = "First die is "4\
  B = "First die is " >= 3\
  C = "Sum of the two dice is "2
$
If we assume that $C$ happens, then
$
  PP(A mid(|) C)=PP(B | C)=PP((A inter B )|C)=PP(A|C)PP(B mid(|)C)=0
$
However, if we do not assume $C$ then
$
  PP(A inter B) = PP(A) = 1/6 != PP(A) PP(B) = 4/36
$
#pagebreak()
= Question 2 - Probability in a product space
Let $(Omega, cal(F), PP)$ be the product of two uniform probability spaces $[0,1]$. Thus $Omega = [0,1]^2$, and for every $0 <= a<=b<=1$ and $0<=c<=d<=1$
$
  PP([a,b] times [c,d]) = (b-a)(d-c)
$
Define the events
$
  D={(x,y) in [0,1]^2 : x=y}\
  T={(x,y) in [0,1]^2 : x<y}
$
== Section A
Prove that $PP(D)=0$
== Section B
Prove that $PP(T)=1/2$
= Answer 2
First, we'll visualize the probabiliy space
#align(center)[
  #cetz.canvas(length: 6cm, {
    import cetz.draw: *
    line((0, 0), (1, 1), (0, 1), close: true, fill: flavors.mocha.colors.blue.rgb.darken(50%), stroke: none)

    line((0, 0), (1, 1), stroke: (paint: flavors.mocha.colors.red.rgb, thickness: 2pt))
    rect((0, 0), (1, 1), stroke: (paint: flavors.mocha.colors.text.rgb, thickness: 1.5pt))

    line((-0.1, 0), (1.2, 0), stroke: flavors.mocha.colors.subtext0.rgb, mark: (
      end: ">",
      fill: flavors.mocha.colors.subtext0.rgb,
    ))
    line((0, -0.1), (0, 1.2), stroke: flavors.mocha.colors.subtext0.rgb, mark: (
      end: ">",
      fill: flavors.mocha.colors.subtext0.rgb,
    ))
    set-style(content: (padding: 0.1))
    content((1.2, -0.1), text(fill: flavors.mocha.colors.text.rgb, $x$))
    content((-0.1, 1.2), text(fill: flavors.mocha.colors.text.rgb, $y$))
    content((-0.1, -0.1), text(fill: flavors.mocha.colors.subtext0.rgb, $0$))
    content((1, -0.1), text(fill: flavors.mocha.colors.subtext0.rgb, $1$))
    content((-0.1, 1), text(fill: flavors.mocha.colors.subtext0.rgb, $1$))

    content((0.3, 0.7), text(fill: flavors.mocha.colors.blue.rgb, $T \ (x < y)$))
    content((0.65, 0.45), angle: 45deg, text(fill: flavors.mocha.colors.red.rgb, weight: "bold", $D \ (x = y)$))
    content((1.15, 1.15), text(fill: flavors.mocha.colors.text.rgb, $Omega$))
  })]
== Section A
Let $n in NN$, \
We'll define $A_n := (a_k)^n_(k=1)$\
Where $a_k := [(k-1)/n, k/n]$\
Let $(x,y) in D$, Since $A_n$ covers $[0,1]$, there exists $k in [n]$ such that $x in a_k$, and since from the definition of $D$, $x=y$, for that $k$ also $y in a_k$.\
Since this is true for _all_ elements of $D$, it means that
$
  D subset.eq union.big^n_(k=1)(a_k times a_k)
$
From the monotonicity of the measure we have
$
  PP(D) <= PP(union.big^n_(k=1)(a_k times a_k))
$
And from the subaddativity (we have subaddativity since the $a_k$'s are not disjoint) we have
$
  PP(union.big^n_(k=1)(a_k times a_k)) <= sum_(k=1)^n PP(a_k times a_k)
$
We know how to calculate $PP(a_k times a_k)$ for any $k$
$
  PP(a_k times a_k) = PP(a_k)^2 = (k/n-(k-1)/n)^2 = 1/n^2
$
Therefore
$
  sum_(k=1)^n 1/n^2 = cancel(n) dot.c 1/n^(cancel(2)) = 1/n
$
So we have
$
  0 < PP(D) <= 1/n
$
Since this holds for any $n in NN$, we can take $n$ to $oo$, and then
$
  0 < PP(D) <= 1/n stretch(arrow.long)^(n->oo) 0
$
Therefore, from sandwich (and not, I'm not calling it "squeeze theorem", sandwich is the superior name) we have $PP(D)=0$\
$square.filled$\
And for fun, let's add another visualization
#align(center)[
  #cetz.canvas(length: 6cm, {
    import cetz.draw: *
    let n = 10
    for i in range(n) {
      let step = i / n
      let next-step = (i + 1) / n
      rect((step, step), (next-step, next-step), fill: flavors.mocha.colors.peach.rgb.darken(50%), stroke: (
        paint: flavors.mocha.colors.peach.rgb,
        thickness: 1pt,
      ))
    }
    line((0, 0), (1, 1), stroke: (paint: flavors.mocha.colors.red.rgb, thickness: 2pt))
    rect((0, 0), (1, 1), stroke: (paint: flavors.mocha.colors.text.rgb, thickness: 1.5pt))

    line((-0.1, 0), (1.2, 0), stroke: flavors.mocha.colors.subtext0.rgb, mark: (
      end: ">",
      fill: flavors.mocha.colors.subtext0.rgb,
    ))
    line((0, -0.1), (0, 1.2), stroke: flavors.mocha.colors.subtext0.rgb, mark: (
      end: ">",
      fill: flavors.mocha.colors.subtext0.rgb,
    ))
    set-style(content: (padding: 0.1))
    content((1.2, -0.1), text(fill: flavors.mocha.colors.text.rgb, $x$))
    content((-0.1, 1.2), text(fill: flavors.mocha.colors.text.rgb, $y$))
    content((-0.1, -0.1), text(fill: flavors.mocha.colors.subtext0.rgb, $0$))
    content((1, -0.1), text(fill: flavors.mocha.colors.subtext0.rgb, $1$))
    content((-0.1, 1), text(fill: flavors.mocha.colors.subtext0.rgb, $1$))

    content((0.65, 0.35), angle: 45deg, text(fill: flavors.mocha.colors.red.rgb, weight: "bold", $D \ (x = y)$))
    content((1.15, 1.15), text(fill: flavors.mocha.colors.text.rgb, $Omega$))

    line((0.85, 0.85), (1, 0.45), stroke: (paint: flavors.mocha.colors.peach.rgb, dash: "dotted"))
    content((1., 0.45), text(fill: flavors.mocha.colors.peach.rgb, $n "boxes of" a_k times a_k$))
  })]
== Section B
Let $n in NN$.
We'll define $A_n := (a_k)^n_(k=1)$\
Where $a_k := [(k-1)/n,k/n)$.\
And we'll define $B_n = (b_k)^n_(k=1)$\
Where $b_k := [(k-1)/n,1]$.\
Now let $(x,y) in T$, from T's definition we know that $y>x$, since $A_n$ covers $[0,1]$ we know that there exists $k in [n]$ such that $x in a_k$, therefore $(k-1)/n <= x < k/n <= 1$.\
And since $x <y <= 1$, for the same $k$, $y in b_k$.\
Since this is true for all elements of $T$, we have
$
  T subset.eq union.big_(k=1)^n (a_k times b_k)
$
Notice how $a_k$ is pairwise disjoin, therefore we have addativity.\
From the monotonicity of the measure, additivity and uniformity we have
$
  PP(T) <= PP(union.big_(k=1)^n (a_k times b_k)) =PP(sum_(k=1)^n (a_k times b_k)) = sum_(k=1)^n ((k/n - (k-1)/n) (1-(k-1)/n)) = sum_(k=1)^n 1/n dot.c (n-k+1)/n \
  = (n-k+1)/n^2 underset(=, "Arithmetic series") (n(n+1))/(2n^2) = (n+1)/(2n) = (1+1/n)/2
$
Now we'll define yet another sequence, $C_n = (c_k)^n_(k=1)$, where $c_k = [k/n,1]$\
Let $(x,y) in union.big^n_(k=1)(a_k times c_k)$, by definition it means that there exists $k in [n]$ such that $x in a_k$ and $y in c_k$, therefore
$
  (k-1)/n <= x < k/n <= y <= 1 ==> x <= y ==> (x,y) in T
$
From monotonicity of the measure, sub-additivity and uniformity we have
$ PP(T) >= PP(union.big_(k=1)^n (a_k times c_k)) =PP(sum_(k=1)^n (k/n - (k-1)/n)(1- k/n))=sum_(k=1)^n 1/n dot.c (n-k)/n\
sum_(k=1)^n (n-k)/n^2 = (n(n-1))/(2n^2) = (1+1/n)/2 $If we add what we got we have
$
  (1+1/n)/2 <= PP(T) <= (1+1/n)/2
$
So if take $n--> oo$ we get
$
  1/2 <= PP(T) <= 1/2 ==> PP(T) = 1/2
$
$square.filled$\
And we'll finish with another (though way less aesthetically pleasing) visualization
#align(center)[
  #cetz.canvas(length: 6cm, {
    import cetz.draw: *
    line(
      (0, 0),
      (1, 1),
      (0, 1),
      close: true,
      fill: flavors.mocha.colors.blue.rgb.darken(50%),
      stroke: none,
    )
    let n = 10
    for i in range(n) {
      let step = i / n
      let next-step = (i + 1) / n
      rect(
        (step, next-step),
        (next-step, 1),
        fill: flavors.mocha.colors.green.rgb.darken(30%).transparentize(60%),
        stroke: (
          paint: flavors.mocha.colors.green.rgb,
          thickness: 1pt,
        ),
      )

      rect(
        (step, step),
        (next-step, next-step),
        fill: flavors.mocha.colors.peach.rgb.darken(35%).transparentize(60%),
        stroke: (
          paint: flavors.mocha.colors.peach.rgb,
          thickness: 1pt,
        ),
      )
      rect(
        (step, next-step),
        (next-step, 1),
        fill: flavors.mocha.colors.peach.rgb.darken(65%).transparentize(60%),
        stroke: none,
      )
    }
    rect((0, 0), (1, 1), stroke: (paint: flavors.mocha.colors.text.rgb, thickness: 1.5pt))

    line((-0.1, 0), (1.2, 0), stroke: flavors.mocha.colors.subtext0.rgb, mark: (
      end: ">",
      fill: flavors.mocha.colors.subtext0.rgb,
    ))
    line((0, -0.1), (0, 1.2), stroke: flavors.mocha.colors.subtext0.rgb, mark: (
      end: ">",
      fill: flavors.mocha.colors.subtext0.rgb,
    ))
    set-style(content: (padding: 0.1))
    content((1.2, -0.1), text(fill: flavors.mocha.colors.text.rgb, $x$))
    content((-0.1, 1.2), text(fill: flavors.mocha.colors.text.rgb, $y$))
    content((-0.1, -0.1), text(fill: flavors.mocha.colors.subtext0.rgb, $0$))
    content((1, -0.1), text(fill: flavors.mocha.colors.subtext0.rgb, $1$))
    content((-0.1, 1), text(fill: flavors.mocha.colors.subtext0.rgb, $1$))

    content((0.3, 0.7), text(fill: flavors.mocha.colors.blue.rgb, $T \ (x < y)$))
    content((1.15, 1.15), text(fill: flavors.mocha.colors.text.rgb, $Omega$))

    line((0.85, 0.85), (1, 0.45), stroke: (paint: flavors.mocha.colors.peach.rgb, dash: "dotted"))
    content((1., 0.45), text(fill: flavors.mocha.colors.peach.rgb, $n "rectangles of" a_k times b_k$))

    line((0.55, 0.85), (0.6, 0.12), stroke: (paint: flavors.mocha.colors.green.rgb, dash: "dotted"))
    content((0.6, 0.12), text(fill: flavors.mocha.colors.green.rgb, $n "rectangles of" a_k times c_k$))
  })]
#pagebreak()
= Question 3 - A shooting competition
Two players, Alice and Bob, compete in a shooting game. Alice hits the target with probability $p$, and
Bob hits the target with probability $q$, where $0 <p,q<1$.
Alice shoots first, and then the players alternate turns. All shots are independent, and the game
ends as soon as one player hits the target. That player is declared the winner.
Find the probability that Alice wins, and the probability that Bob wins.
= Answer 3
== Alice Wins
For Alice to win she needs to hit on her first try, or for her and Bob to miss the their first try then for her to hit on the second try and so on.\
We'll define $A_n$ to be the event where Alice hits the target on her $n$-th try.\
$PP(A_n) = (1-p)^(n-1) dot.c (1-q)^(n-1) dot.c p$, and such for her to win we need to find $sum_(n=1)^oo PP(A_n)$
$
  sum_(n=1)^oo PP(A_n) = sum_(n=1)^oo (1-p)^(n-1) dot.c (1-q)^(n-1) dot.c p= sum_(n=1)^oo ((1-p)(1-q))^(n-1) dot.c p \
  underset(=, "Geometric Series") p/(1-(1-p)(1-q)) = p/(1-(1-q-p+p q)) = #rect($ p/(q+p-p q) $, stroke: flavors.mocha.colors.lavender.rgb)
$
== Bob Wins
#showybox(
  frame: (
    border-color: flavors.mocha.colors.teal.rgb.darken(30%),
    title-color: flavors.mocha.colors.teal.rgb.darken(20%),
    radius: 2pt,
    thickness: 1pt,
    body-inset: 1.5em,
    body-color: flavors.mocha.colors.teal.rgb.lighten(67%),
  ),
  title: "Blabbering ahead",
)[We can just say that someone needs to win eventually so $ PP(B o b) = 1- PP(A l i c e) $But I feels like the question is meant for us to calculate it directly]

For Bob to win he needs he needs Alice to miss on her first and for him to hit on his first try, or for both Alice and him to miss their first tries, for Alice misses her second try as well and for Bob to hit on his second try, and so on.\
We'll define $B_n$ to be the even where Bob hits the target on his $n$-th try.\
$PP(B_n) = (1-p)^n dot.c (1-q)^(n-1) dot.c q$, and such for him to win we need to find $sum_(n=1)^oo PP(B_n)$
$
  sum_(n=1)^oo PP(B)= sum_(n=1)^oo (1-p)^n dot.c (1-q)^(n-1) dot.c q= sum_(n=1)^oo ((1-p)(1-q))^(n-1) dot.c (1-p)dot.c q\
  underset(=, "Geometric Series") ((1-p)dot.c q)/(1-(1-p)(1-q)) = ((1-p)dot.c q)/(1-(1-q-p+p q)) = #rect($ ((1-p)dot.c q)/(q+p-p q) $, stroke: flavors.mocha.colors.lavender.rgb)
$
#pagebreak()
= Question 4 - Monty Hall with a biased host
There are three doors, behind exactly one of which is a prize. The prize is placed uniformly at random, and a contestant intially chooses door $1$.\
The host knows where the prize is and opens one of the other two doors, always revealing an empty door. If the prize was behind door $2$ they will definitely open door $3$, and if the prize is behind door $3$ they will definitely open door $2$. If the prize was behind door $1$, then the host opens door $2$ with probability $r$ and door $3$ with probability $1-r$. Where $0<r<1$
== Section A
Given that the host opened door $3$, find the probability that the prize is behind door $2$
== Section B
Given that the host opened door $3$, is the probabiliy of the prize being behind door $2$ the same as door $1$, or is one higher than the other?
== Section C
Suppose the contestant always switches to the remaining closed door. Find the probability of winning, without conditioning on which door the host opened.
= Answer 4
First, we'll define our sample space to make the conversation easier.\
The space consists of ordered pairs where the first entry is where the car is, and the second is which door the host chose to open.
$
  Omega = {(c,h):c in {1,2,3},h in {2,3}}\
$
And we denote $c=k$ as $C_k$, and $h =k$ as $H_k$
== Section A
If the host opened door $3$, it is given that $H_3$, therefore we now "live in" $PP(dot.c mid(|) H_3)$, and we want to find $PP(C_2 mid(|) H_3)$
We know that $PP(H_3 mid(|) C_2)= 1$.\
From Bayes' theorem we get
$
  PP(C_2 mid(|) H_3) = (PP(H_3 mid(|) C_2)dot.c PP(C_2))/PP(H_3) = (1/3)/(PP(H_3))
$
No we need to find $PP(H_3)$, and we'll do it using the law of total probability\
Since ${C_1,C_2,C_3}$ is a partition of of $Omega$ we can use it
$
  PP(H_3) = sum_(n=1)^3 PP(H_3 mid(|)C_n)dot.c PP(C_n) = PP(H_3 mid(|) C_1) dot.c 1/3 + PP(H_3 mid(|) C_2) dot.c 1/3 + PP(H_3 mid(|) C_3) dot.c 1/3\
  = (1-r)/3 + 1/3 + 0= (2-r)/3
$
Therefore
$ #rect($ PP(C_2 mid(|) H_3) = 1/(2-r) $, stroke: flavors.mocha.colors.lavender.rgb) $
== Section B
$PP(C_1 mid(|) H_3) = 1- PP(C_2 mid(|) H_3)$, therefore the prob. of the car being behind door $1$ is higher than it is being behind door $2$ if-and-only-if $1/(2-r)> 1/2$.\
Since $r in [0,1]$, this condition never happens and such $PP(C_1) <= PP(C_2)$. And if $r=0$ (Which means that the host _always_ opens door $3$) we have $PP(C_1) = PP(C_2)$
== Section C
If the contestant switches and gets the prize than either of the two *disjoint* events must occur, either the host opened door $3$ while the car was behind door $2$, or the host opened door $2$ while the car was behind door $3$. So from additivity it is $ PP(C_2 inter H_3) + PP(C_3 inter H_2) $
$
PP(C_2 inter H_3) = PP(H_3 mid(|) C_2) dot.c PP(C_2) = 1 dot.c 1/3 = 1/3\
PP(C_3 inter H_2) = PP(H_2 mid(|) C_3) dot.c PP(C_3) = 1 dot.c 1/3 = 1/3\
PP(C_2 inter H_3) + PP(C_3 inter H_2) = #rect($ 2/3 $, stroke: flavors.mocha.colors.lavender.rgb) 
$
#pagebreak()
= Corny Joke
My life
