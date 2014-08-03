% page 78

\version "2.16.0"

\paper {
  indent = 0\mm
  line-width = 120\mm
}
\header {
  title = "La sortie de l'école."
}

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 2/4
  \autoBeamOff 

  s4^\mf c8 c a g c c a g f g
  a bes c d g,4 g8 c bes a g d'
  c a c^\cresc d e c a d c4 c8 c
  bes g d' d c a c^\f c f c bes g \mark "            Fin."
  f2 \bar "|." r4 a8^\mf a c b a a c b a a
  c b c d e4 d8 e f d a f'
  e c g c a d c b c4
  c8^\mf c a g c c a g f g
  a bes c d g,4 g8 c bes a g d'
  c a c^\cresc d e c a d c4 c8 c
  bes g d' d c a c^\f c f c bes g \mark "            Fin."
  f2 \bar "|." 
}

lower = \relative c'' {
  \clef treble
  \key f \major
  \time 2/4
  \autoBeamOff 

  s4^\mf a8 a f c a' a f c f e
  f g a bes c,4 c8 a' g f e bes'
  a f a a g e f g c,4 e8 e
  g e bes' bes a f c'^\f c a f g c,
  f2 \bar "|." r4 c8^\mf c e d c c e d c e
  a gis a b c4 b8 c d a f d'
  c g e e f f e d c4 
  a'8^\mf  a f c a' a f c f e
  f g a bes c,4 c8 a' g f e bes'
  a f a a g e f g c,4 e8 e
  g e bes' bes a f c'^\f c a f g c,
  f2 \bar "|."
}

text = \lyricmode {
  Voi -- ci l'heu -- re La meil -- leur -- re, L'heu -- re
  de rent -- trer chez nous. De l'é -- co -- le L'on s'en -- vo -- le.
  Main -- te -- nant fais -- sons les fous! De l'é -- co -- le
  L'on s'en -- vo -- le. Main -- te -- nant fai -- sons les
  fous! La jour -- né -- e Ter -- mi -- né -- e, Cha -- cun
se met en che -- min Et ré -- pè -- te Dans sa
tê -- te La le -- çon du len -- de -- main.
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = lower { \lower }
  >>
  \layout {
    \context {
    \Score \remove "Bar_number_engraver"
    }
    \context {
      \GrandStaff
      \accepts "Lyrics"
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
    }
  }
  \midi { \tempo 8 = 180 }
  \dynamicUp
}