% Created on Sat Feb 20 19:31:49 CET 2010
\version "2.12.3"

#(set-default-paper-size "Letter")
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #t)

\include "Globals.ly"

\header {
title = "Symphony No. 3 in A minor" 
 subtitle = "Scottish" 
 composer = "Felix Mendelssohn" 
 opus = "OP. 56" 
 poet = \markup \box { \pad-around #1 {"Klarinette 1 in A"}}
 piece = "Introduction and Allegro agitato"  
 copyright = "2006 Ernst Eulenburg & Co GmbH, Mainz" 
	}%end header

\score {
	\relative c' {
	\set midiInstrument = #"clarinet"
	\include "Cl1-music-1.ly"
	}% end music

	\header {piece = "I. Introduction and Allegro agitato"}
	\midi {
	}

  \layout {%{#(layout-set-staff-size 14)
  indent = #25
  line-width = #190 %}
  ragged-last-bottom = ##t
  }%end layout
}%end score

\markup \box { \pad-around #1 {"Klarinette 1 in Bb"}}

\score {
	\relative c'{
	\include "Cl1-music-2.ly"
} %end music
	\header {
	piece = "II. Scherzo assai vivace"
	}
	\midi {
	}

  \layout {
  }
}%end score

\markup \box { \pad-around #1 {"Klarinette 1 in A"}}

\score {
	\relative c'{
	\include "Cl1-music-3.ly"
} %end music
	\header {
	piece = "III. Adagio cantabile"
	}
	\midi {
	}

  \layout {
  }
}%end score

\markup \box { \pad-around #1 {"Klarinette 1 in A"}}

\score {
	\relative c'{
	\include "Cl1-music-4.ly"
} %end music
	\header {
	piece = "IV. Allegro guerriero and Finale maestoso"
	}
	\midi {
	}

  \layout {
  }
}%end score


\paper {
}


