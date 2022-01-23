\version "2.22.1"

% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}

  \score {
    % Svenska Polisens Marscher: 1. Afton p\char #229 Solvik  

  	  \relative c'' {
    	    \clef treble \key g \major \time 3/4
    	    \compressEmptyMeasures
    	    \pointAndClickOn
    	    
    	    \mark \markup { \musicglyph #"scripts.segno" }

    	    R2.*3 |b4\mf^\markup {\bold {Soli}} \(c cis |d\< (b'2->\)) 
    	    fis4 a2-> |g4\> (e2~-> |e\!) r4 |R2.*2 |r8 b\mf (dis [fis b dis] 
    	    e2\trill )
    	    
    	    <<{\set fontSize = #-4  % make note heads smaller
    	       b,,4^\markup {\bold {KlII }} ( | c2 d4 |b2 a4 |d2.) 
    	       \unset fontSize } % return to default size
    	    \\
    		{ c'4\rest |
    		\override MultiMeasureRest #'staff-position = #2 R2.*3  
  		 \revert MultiMeasureRest #'staff-position }>>
    	       	    
    	    fis,2.-> |g ( |g' |d) |b4\mf^\markup {\bold {Soli}} \(c cis 
    	    d\< (b'2->\)) |fis4 a2-> |g4\> (e2~-> |e\!) r4 |R2.*2 
    	    |r8 b\mf (dis [fis b dis] 
    	    e2\trill )
    	    
    	    <<{\set fontSize = #-4  % make note heads smaller
    	       b,,4^\markup {\bold {KlII}} ( | c2 d4 |b2 a4 |\tieDown g2.~) g4 
    	       \tieNeutral
    	       \unset fontSize } % return to default size
    	    \\
    		{ c'4\rest |
    		\override MultiMeasureRest #'staff-position = #2 R2.*3 
    		\once \override Score.RehearsalMark.font-size = #4
    	        \mark \markup { \musicglyph #"scripts.coda" }
    	        b4\rest}>> 
  		 \revert MultiMeasureRest #'staff-position
  		  
  		 r e\p
    	    
%Rehearsal mark A
	\mark \default
	\repeat volta 2 {
	    e8 (g-.) g (ais-.) ais (b-.) |b (e,-.) e (g-.) g (ais-.)
	    ais (b-.) b (dis,-.) dis (fis-.) |fis4 r r 
	    dis8 (fis-.) fis (ais-.) ais (b-.) |b (dis,-.) dis (fis-.) fis (ais-.)
	    ais (b-.) b (e,-.) e (g-.) |g4-. r r |e8 (g-.) g (a-.) a (b-.)
	    b (gis-.) gis (e-.) e4 |e8 (a-.) a (b-.) b (c-.) 
	    c (a-.) a (e-.) e4 |g8 (a-.) b (e,-.) g4 |fis8 (g-.) a (dis,-.) fis4
	    e2.~ }
	    \alternative {
	    	    {e4 r e}
	    	    {e4\repeatTie r r}
	    }
	    
\once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
\mark \markup { \musicglyph #"scripts.segno" }
\cadenzaOn
\stopStaff
\once \override TextScript.extra-offset = #'( 2 . -3.5 )
        | s1*0^\markup { D.S. al Coda } 

       \repeat unfold 3 {
          s4 s4 s4
          \bar ""
        }
\startStaff
\cadenzaOff
\break

% Coda on new line, use this:
%     \once \override Score.RehearsalMark.extra-offset = #'( -8.42 . 1.75 )
     \once \override Score.RehearsalMark.font-size = #4
     \mark \markup { \musicglyph #"scripts.coda" }

   % The coda
	r8 g,\p\< (a [b c d])
	\key c \major
	\mark \markup {\bold {TRIO}}
	\repeat volta 2 {
		e2\mf^\markup {"Meno mosso"}  g4 |f!2 e4 |g2 e'4 
		d2 c4 |a2 b4
		a2 g4 |f2.~ |f |d2 f4 |e2 d4 |f2 <f f'>4 |<e e'>2 <b b'>4 
		r8 dis e [(g) a c] |r8 dis, fis [(a) b c] |r8 fis, g [(b) d b] 
		g2.\trill |e2--^\markup {\bold {Soli}} g4 |f2 (e4) |g2-- e'4
		d2 c4 |R2.*4 

		<<{\set fontSize = #-4  % make note heads smaller
    	            c,2--^\markup {\bold {Oboe }} c4 |b2 (e4)|a,2-- a4 |g2 (c4)) 
    	            \unset fontSize } % return to default size
    	    \\
    		{ \override MultiMeasureRest #'staff-position = #-4 R2.*4  
  		  \revert MultiMeasureRest #'staff-position }>>
   
		
		f4--\mf\< g-- a--\! | e2 (d4)|c8 c (b c) e-. g-. 
	}
		\alternative {
			{c4 r8 g fis f}
			{c'4 r r}
		}
	\bar"|." \break
	    	    
    }%end relative
    \header {
    	    piece = \markup {\concat {"Afton p" \char #229 " Solvik"}}
    	    composer = \markup {\concat {"Olle J" \char#246 "nbrink"}}
    	}
  }%end score
