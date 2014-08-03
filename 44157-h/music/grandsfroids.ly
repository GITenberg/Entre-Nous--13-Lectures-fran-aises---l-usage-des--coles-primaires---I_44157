% page 67

\version "2.16.0"

\paper {
  indent = 0\mm
  line-width = 120\mm
}

\header {
  title = "Les grands froids"
  subtitle = " "
}
melody = <<
\relative c' {
\key g \major
\time 2/4
\autoBeamOff 
% Score
 g' g g2 a8 b c a g2
 a8 b c a d4 d b8 a b g
 a2 a8 b c a d4 d b a g2
\bar "|." 
}

% Lyrics
\addlyrics {
Un, deux, trois, Voi -- ci les grands froids!
Main qui se re -- po -- se Jus -- qu'au bout des
doigts De -- vient froide et ro -- se, Un, deux, trois!
}
>>

\score {
  \new Staff \melody
  \layout {
    \context {
    \Score \remove "Bar_number_engraver"
    }
  }
  \midi { \tempo 8 = 260 }
}