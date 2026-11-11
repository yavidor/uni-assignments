#import "@preview/catppuccin:1.1.0": catppuccin, flavors
#show: catppuccin.with(flavors.mocha)
#set page(margin: 1.50in, footer: context {
  let page_num = counter(page).get().first()
  if page_num > 1 {
    set text(size: 10pt)
    "214269565"
    h(36%)
    counter(page).display()
    h(40%)
    "212674683"
  }
})
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#import "@preview/ouset:0.2.0": underset
#align(center + horizon)[
  #set text(font: "New Computer Modern")

  #text(size: 22pt, weight: "bold")[ Probability Theory - 01040222 ] \
  #v(0.5em)
  #text(size: 18pt)[Homework 1]

  #v(1cm)
  #text(size: 14pt)[Yonatan Avidor - 214269565]
  #v(0.1cm)
  #text(size: 14pt)[Rotem Eshet - 212674683]
]
#pagebreak()
= Question 1 - Words over a Three-Letter Alphabet
Let $n >= 3$. A word of lenth $n$ is chosen uniformly at random from the alphabet ${A,B,C}$. In other words, all $3^n$ possible elements of ${A,B,C}^n$ have equal probability$1/(3^n)$
== Section A
What is the probability that the letter $A$ does not appear in the word?
== Section B
What is the probability that exactly two distinct letter appear in the word?
== Section C
What is the probability that all three letters appear in the word? Find the limit of this probability as $n -> infinity$
= Answer 1
== Section A
First, we'll define our sample space $Omega$ to be ${A,B,C}^n$.\
We'll define $U$ as
$
  U = {x in Omega : A "does not appear in" x}
$
Since the distribution is uniform, $PP(U) = abs(U)/abs(Omega)$.
We know that $abs(Omega)=3^n$, now we only need to find $abs(U)$.\
For $A$ not to appear in $x$, each letter must be either $B$ or $C$, so there are $2^n$ possible words in $U$. Therefore
$
  PP(U) = 2^n/3^n = (2/3)^n
$
== Section B
We'll define $Q$ as
$
  Q = {x in Omega: "Exactly two distinct letters appear in" x}
$
Notice that there are only three words that have only one letter, they are ${A}^n,{B}^n,{C}^n$.\
From section A, we know that there are $2^n$ words that do not contain $A$, we need to subtract $2$ from this amount (to consider the words that have only one letter) to get the words that have both $B$ and $C$ but not $A$.\
Then, from symmetry we can multiply this number by $3$ and get $abs(Q)$.\
As mentioned in Section A, since the probability is uniform we have
$
  PP(Q) = abs(Q)/abs(Omega) = (3(2^n-2))/(3^n) = #rect($ (2^n-2)/3^(n-1) $, stroke: flavors.mocha.colors.lavender.rgb)
$
== Section C
Let $n in NN$\
We'll define $V$ as
$
  V = {x in Omega: "At least one letter does not appear in" x}
$
And we want to find $PP(V^c)$\
$V$ is the set of words that have exactly two distinct letters OR one distinct letter, $Q$ is the former while ${{A}^n,{B}^n,{C}^n}$ is the latter. Therefore $abs(V)=abs(Q)+3$,\
$
  PP(V^c)= 1 - PP(V) underset(=, "uniform prob.") 1- (abs(Q)-3)/abs(Omega) =1- (2^(n)-1)/(3^n) stretch(->)^(n->oo) 1-0 =#rect($ 1 $, stroke: flavors.mocha.colors.lavender.rgb)
$
#pagebreak()
= Question 2 - A Countably Infinite Probability Space
Consider the sample space $Omega = {1,2,3,...}$, with probability function
$
  p(k) = c/3^k
$
Where $c>0$ is a constant
== Section A
Find $c$ such that $(Omega, p)$ is a discrete probability space
== Section B
Calculate the probability that the chosen integer is even.
== Section C
For every integer $m>=1$, calculate the probability that the chosen integer is at least $m$. Find the limit of this probability as $m->oo$.
= Answer 2
== Section A
For $(Omega, p)$ to be a discrete probability space, we need that $PP(Omega)=1$.\
So we need to find $c>0$ such that
$
  sum_(k=1)^oo c/3^k = 1
$
$
  sum_(k=1)^oo c/3^k = c sum_(k=1)^oo 1/3^k underset(=, "Infinite Geometric Series") =c (1/3)/(1-1/3) =c (1/3)/(2/3)= 1/2 c \
  ==> 1/2 c = 1 ==> #rect($c =2$, stroke: flavors.mocha.colors.lavender.rgb)
$
== Section B
Since we are working with a discrete probability space, the probability of getting an even number equals the sum of probabilities for all even numbers. we therefore add the probabilities for all even $n$'s:\
$
  PP("getting an even number")=sum_(n=1)^oo 2/3^(2n)=sum_(n=1)^oo 2/9^n=_"Infinte Geometric Series" 2/8=#rect($ 1/4 $, stroke: flavors.mocha.colors.lavender.rgb)
$
== Section C
Since we are in a discrete probability space, the probability of getting a number at least $m$ is the sum of probability for each $k>=m$
$
  sum_(k=m)^infinity p(k) = sum_(k=m)^infinity 2/3^k= (2/3^m)/(2/3)=1/3^(m-1) stretch(-->)^(m->oo) #rect($ 0 $, stroke: flavors.mocha.colors.lavender.rgb)
$
#pagebreak()
== Question 3 - Two Random Subsets
Let $n>=1$. An ordered pair of subsets $(A,B)$ of ${1,..,n}$ is chosen uniformly at random. In other words, our sample space is
$
  Omega = {(A,B): A,B subset.eq {1,dots,n})
$
And all $4^n$ outcomes are equally likely.
== Section A
What is the probability that $A inter B= emptyset$?
== Section B
What is the probability that $A subset.eq B$?
== Section C
What is the probability that $A subset.eq B$ or $B subset.eq A$?
== Section D
For $0<=k<=n$, what is the probability that $abs(A inter B)=k$?
= Answer 3
First, notice that for for every element in $x in [n]$, either $x in A$ or (exclusive!) $x in.not A$, and also $x in B$ or (still exclusive!) $x in.not B$, and since the probability is uniform, for each of those situations the probability is $1/2$. Furthermore, the
$
PP(x in A and x in B) = PP(x in.not A and x in.not B) \ = PP(x in A and x in.not B) = PP(x in.not A and x in B)=1/4
$

== Section A
For the intersection to be empty, we need that 
$
forall x in [n]quad (x in.not A and x in.not B) or (x in A and x in.not B)or (x in.not A and x in B)
$ 
And from what we've established
$
PP((x in.not A and x in.not B) or (x in A and x in.not B)or (x in.not A and x in B)) = 1/4 + 1/4 + 1/4
$
Since this is true for all $x in [n]$, we get #box(rect($(3/4)^n$, stroke: flavors.mocha.colors.lavender.rgb)).
== Section B
For A to be a subset of B, we need that 
$
forall x in [n]quad (x in.not A and x in.not B) or (x in A and x in  B)or (x in.not A and x in B)
$ 
So just like in section, we have
$
PP(x in.not A and x in.not B) or (x in A and x in  B)or (x in.not A and x in B) = #rect($ (3/4)^n $ , stroke: flavors.mocha.colors.lavender.rgb)
$
== Section C
Since the probability is uniform in a discrete sample space, we need to calculate the number of possibilies.\
We will use the Principle of Inclusion and Exclusion.
$
|A subset.eq B union B subset.eq A| = |A subset.eq B| + |B subset.eq A| - |underbrace(A subset.eq B inter B subset.eq A,(A=B))|
$
From section B and symmetry we know that $PP(A subset.eq B)=PP(B subset.eq A)= (3/4)^n$\
To get $A=B$ we need for all $x in [n] quad (x in A and x in B) or (x in.not A and x in.not B)$ 
So $PP(A=B) = (1/2)^n$\
Therefore
$PP(A subset.eq B union B subset.eq A)= #rect($ 2(3/4)^n-(1/2)^n$,stroke: flavors.mocha.colors.lavender.rgb)$
== Section D
We need $k$ elements to be in $A$ and in $B$, there are $binom(n,k)$ options for said $k$ elements.\
Then, for each of the other $n-k$ elements, they need to either be in $A$ but not in $B$, be in $B$ but not in $A$ or to not be in either. Therefore there are $3^(n-k)$ options for them overall.\
Since the probability is uniform, The probability is
$
PP(|A inter B |=k) = (|{(A,B) in Omega: |A inter B|=k}|)/(|Omega|) =#rect($ (binom(n,k)dot.c 3^(n-k))/4^n $,stroke: flavors.mocha.colors.lavender.rgb)
$
#pagebreak()
= Corny Joke
A Countably Infinite Probability Space walks into a bar,\
the barman asks "Consider the sample space $Omega = {1,2,3,...}$, with probability function
$
  p(k) = c/3^k
$
Where $c>0$ is a constant

Find $c$ such that $(Omega, p)$ is a discrete probability space
Calculate the probability that the chosen integer is even.
For every integer $m>=1$, calculate the probability that the chosen integer is at least $m$. Find the limit of this probability as $m->oo$."\
The Countably Infinite Probability Space walks out of the bar