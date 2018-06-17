\header {
  title = "Untitled"
  composer = "Composer"
}
\score{
\relative c' {
<<{c4 d e g8 a g2 c
  b4 a8 b c b a4 g1
  d'8 c b d c b a4 g2 e
  f8 e d a' f4 d c2. r4}
  {e4 f g c8 d c2 f 
  d4 c8 d f d e4 c2 b
  a8 g f a g f e4 d2 a'
  b4 f'8 e d c aes4 g2. r4
  }>>
  \bar "|."
  }

\layout{}
\midi{ \tempo 2 = 60 }
}