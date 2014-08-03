% page 54

\version "2.16.0"

\paper {
  indent = 0\mm
  line-width = 120\mm
}
\header {
  title = "Les moineaux."
  subtitle = " "
}
melody = <<
\relative c' {
\key d \major
\time 3/4
\autoBeamOff 
% Score
 s2 a'8. a16 d4 a a8. b16 a4 fis fis8. g16
 fis4 d e fis2 a8. a16 d4 a a8. b16
 a4 fis fis8. g16 fis4 d d8. e16 d2 a'8. a16
 a4 fis a8. a16 a4 fis a8. a16 a4 b a d r
\bar "|." 
}

% Lyrics
\addlyrics {
Blan -- che neige est en voy -- a -- ge, C'est l'hi -- ver,
c'est l'hi -- ver! Les moi -- neaux dans le vil -- la -- ge
Font leur plain -- te de con -- cert. Blan -- che
neige est en voy -- a -- ge, C'est l'hi -- ver, c'est l'hi -- ver!
}
>>

\score {
  \new Staff \melody
  \layout {
    \context {
    \Score \remove "Bar_number_engraver"
    }
  }
  \midi { \tempo 16 = 450 }
}