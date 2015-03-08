%Example based on two score model taken from Nabble forum.
\version "2.14.2" 

musicMain= \relative c''{ 
	\key g \major \time 2/2
	a b c d | c d e fis \bar "||"
	\mark \markup { \musicglyph #"scripts.segno" }
	\cadenzaOn
	\stopStaff
        \once \override TextScript #'word-space = #1.5
        \once \override TextScript #'X-offset = #8
        \once \override TextScript #'Y-offset = #1.5
        | s1*0^\markup { \center-column { "D.S. al Coda" 
        \line { \musicglyph #"scripts.coda" }}}
        \repeat unfold 4 {
          s4 s4 s4 s4
          \bar ""
        }
        \startStaff
        \cadenzaOff
}%end relative 

musicCoda = \relative c''{ 
	\key ees \major \time 4/4
	\mark \markup { \musicglyph #"scripts.coda" }
	e f g a |b c d e \bar "|." } 

\score { 
  \musicMain 
} 

\score { 
  \musicCoda 
} 

\paper { 
score-system-spacing #'basic-distance = #20 
ragged-last-bottom = ##t
indent = 0\mm
} 

