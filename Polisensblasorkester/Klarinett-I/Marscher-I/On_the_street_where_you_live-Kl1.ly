\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here"
%{
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. On the street where you live   
    \relative c'' { 
    	    \key c \major \time 4/4 
    	    \tempo 
            	\markup {\bold "Moderato"}
		4 = 92
	    \override BreathingSign.text = \markup
	    	{ \musicglyph #"scripts.caesura.curved" }
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \override DynamicLineSpanner #'staff-padding = #2
    	    c'4 d c d\p\< |c d c d \! 
    	    <<
    	    	    { \stemDown c\ff\> ^\markup {Rall.........} d e f 
    	    	      e (d\fermata\mf)\! \stemNeutral\breathe }
    	    \\
    	    	    {\set fontSize = #-4  % make note heads smaller
    	    	     c, d e f |e d
    	    	     \unset fontSize } >>
    	    	    
    	    c,\fermata d\fermata
	    
    	    \repeat volta 2 {
    	    \tempo \markup {\bold Animato} 4 = 120
    	    e4\mf a a2~ |a g4 f |e c c2~ |c2 c'4 d |e b' b b |b c b c
	    a g g2~ |g r |c1~ |c2 c |b4 a a2~ |a e'4\f d |c2 d4 c }
	    \alternative {
	    	    {b2 c4 b |a1~ |a2 c,,4\mf d}
	    	    {b''2 c4 d |c1~ |c2. r4 \bar "||"}
	    }
	    r2 b,4\mf (gis |fis2 gis |a) c ( |d4 c b a |aes2.) c4 ( |d2 dis
	    e) b4. (b8 |bes4. bes8 a2) |R1*4 |gis'2\f \(fis~ |fis e4 (fis)\) 
	    f!2 ( g |f) c,4\mf d \bar "||" |e a a2~ |a g4 f |e c c2~ |c c'4 d 
	    e b' b b |b c b c
	    a g g2~ |g\f d4\< e |f\! 
	    
	    << {\stemDown
	    	e' e2~  e\ff 
	    	\stemNeutral}
	       \\
	       {\set fontSize = #-4
	       	e,4 e2~ e       
	        \unset fontSize}
	    >>
	    		    
	    f'4\fermata e |d c c2~
	    c e4 d |c2 d4 c |b2 c4 d |e1 
	    
	    << {\stemDown
	    	f2.^^_\markup {Rit......} e4 |d2 e4 d }
	    \\
	       {\set fontSize = #-4
	        f,2. e4 | d2 e4 d
	        \unset fontSize}
	    >>

	    c'2 \breathe b |c1~\<\startTrillSpan  
	    c2.\stopTrillSpan\fermata r4\! \bar "|."
    }%end relative
    \header {
    	    piece = "On the street where you live (My Fair Lady)"
    	    composer = "Frederick Loewe"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
