% Created on Tue Aug 09 15:45:20 CEST 2011
\version "2.12.0"

\header {
	title = "Symphony No. 9 in D minor" 
 	composer = "Ludwig van Beethoven" 
 arranger = "John McWilliam" 
% meter = "in Bb" 
 opus = "Op. 125" 
% piece = "in Bb" 
 	instrument = "Klarinette II in Bb" 

}

\include "Globals.ly"

staffClarinetInBb = \new Staff {
	\time 3/4
	\tempo 2. = 116 
%	\set Staff.instrumentName = "Clarinet in Bb"
	\set Staff.midiInstrument = "clarinet"
%	\transposition hess,
	\key d \minor
	\clef treble
	\relative c { 	
 % Type notes here 

	\Atime \Akey \AstringTempo
	\set Score.currentBarNumber = #1
	\compressFullBarRests
	\override DynamicLineSpanner #'staff-padding = #2
	
  	
		\set fontSize = #-4  % make note heads smaller
  		<<{d'''4.^\markup{ "Archi." }d,8 d4} 
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  		   \revert MultiMeasureRest #'staff-position
  		   
  		   R2._\markup{\small "G.P."} ^\markup{\small "1"}
  	
  		<<{a'4.^\markup{ "Archi." } a,8 a4} 
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.}>>
  		   \revert MultiMeasureRest #'staff-position
  		   
  		   R2._\markup{\small "G.P."} ^\markup{\small "1"}
  		   
  		<<{\ottava #1 
  		   \set Staff.ottavation = #"8"
  		   f'4. ^\markup{ "Timp." }
  		   f,8 f4 \ottava #0 } {R2.}>>
  		   
	\unset fontSize  % return to default size
	
	d'4.\ff d,8 d4
  	R2._\markup{\small "G.P."} ^\markup{\normalsize\number 2}

 
	} % end music

} % end staff


\score {
	<<
		\staffClarinetInBb
	>>
	
	\midi {
	}

  \layout {
  }
}

\paper {
}


