
% Created on Mon Jun 25 19:28:15 CEST 2012
\version "2.14.2"
#(set-global-staff-size 15) % set staff-size when ready to print
\header {
	title = "TITLE" 
 	composer = "Composer" 
 	instrument = "Clarinet II in Bb" 
 	tagline = "Kopierad av John McWilliam" 

}


staffClarinetInBb = \new Staff {
    \time 4/4 \key c \major \clef treble
    \set Staff.midiInstrument = "clarinet"
    \compressFullBarRests
    \relative c' {     
    	    c4 c d e |g r r2

    \bar "|."
    }

}


\score {
	<<
		\staffClarinetInBb
	>>
	
	\midi {
	}

  \layout {ragged-last = ##t
  	  #(set-default-paper-size "a4")
  }
}

\paper {
}


