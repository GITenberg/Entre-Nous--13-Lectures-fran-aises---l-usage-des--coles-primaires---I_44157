% page 29

\version "2.16.0"

\paper {
  indent = 0\mm
  line-width = 100\mm
}
\header {
  title = "Petit Pierre."
  subtitle = " "
}
melody = <<
\relative c' {
\key f \major
\time 2/4
\autoBeamOff 
% Score
 f g a f f g a f |\mark "†" a bes
 c2 a4 bes c2 |\mark "†" c8 d c bes a 4 f
 c'8 d c bes a4 f f c f r
 f c f r f g a f f g
 a f a bes8 bes c2 c4 e8 e f2\fermata 
\bar "|." 
}

% Lyrics
\addlyrics {
Pe -- tit Pier -- re, La Lu -- miè -- re, Dé -- jà
luit, Hors du lit. No -- tre coq clai -- ron -- ne,
La clo -- che ré -- son -- ne: Dig, din, don!
Dig, din, don! C'est le ma -- tin, Tin, tin,
tin, tin! Ré -- veil -- lez -- vous? Ré -- veil -- lez -- vous!
}
>>

\score {
  \new Staff \melody
  \layout {
    \context {
    \Score \remove "Bar_number_engraver"
    }
  }
  \midi { \tempo 8 = 240 }
}