\version "2.12.3"

\include "globals.ly"

	
	\relative c' { 
		\clef treble
		\Atime \Akey \AstringTempo
%{		\set Score.currentBarNumber = #1

  		bes''2.\p^\markup {\bold "Tempo poco ritenuto"}	
  		(fis2_\markup {\italic "con duolo"} 
  		g4 		|d2 \acciaccatura {f8} ees8. d16 | d2) r4 %}
  		
  		s2. 
  		\clef bass
  		c2.
  		bes4 bes \times 1/6 {bes16 bes bes bes bes bes}
  		a4 a a
}

\relative c' {
c4.(\p e8 g c d e)
\once \override Script #'extra-offset = #'(2.5 . 0) f2(\turn g4 f)
}

\relative c' {	\Atime \Akey \AstringTempo
		\set fontSize = #-4
		\override Script #'extra-offset = #'(2.5 . 0)
  		f,4.\turn^\markup {\natural}  d' c8. [bes16]
}
