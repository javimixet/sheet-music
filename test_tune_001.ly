\header {
  title = "Untitled"
  composer = "Composer"
}
\score{
\relative c' {
<<
  {c4 d e g8 a g2 c
  b4 a8 b c b a4 g1
  d'8 c b d c b a4 g2 e
  f8 ees des aes' f4 des c2. r4}
\\
  {e4 g c e8 f e2 g 
  g4 f8 g e g c,4 b1
  g8 f e g f e d4 e2 a,
  b8 f'8 ees des c4 aes4 g2. r4}
>>
  \bar "|."
  }

\layout{}
\midi{ \tempo 2 = 60 }
}