% page 18

\version "2.16.0"

\paper {
  indent = 0\mm
  line-width = 120\mm
}

\header {
  title = "Cocorico."
  subtitle = " "
}

melody = <<
\relative c' {
\key f \major
\time 3/4
\autoBeamOff 
\set midiInstrument = #"flute"
 s2 s8 c8 f4 f8 g a bes c4 a f8 a 

 g4. c8 c c c2 c,4 f f8 g a bes

 c4 a a g g8 c c c f,2 a8 c

 bes4 g a8 bes a4 f a g g8 c c c f,2 r8 \bar "|." 
}

\addlyrics {
Les coqs tou -- jours à voix plei -- ne,
Vont chan -- tant Co -- co -- ri -- co,
Ay -- ant pi -- co -- té leur grai -- ne,
Ils chan -- tent co -- co -- ri -- co!
Ay -- ant bu à la fon -- tai -- ne,
Ils chan -- tent co -- co -- ri -- co. }
>>

\score {
  \new Staff \melody
  \layout {
    \context {
    \Score \remove "Bar_number_engraver"
    }
  }
  \midi { \tempo 8 = 200 }
}