\version "2.18.0"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Just the way you are   
    \relative c'' { 
    	    \key c \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-circle-barnumbers
    	    r4^\markup {\bold {Moderate rock}} c8--\mf (f~ f2) 
    	    r4 c8-- (a'~ a) g~ g4 |r4 c,8-- (f~ f2) |r4 c8-- (a'~ a) g~ g4 
    	    
%Rehearsal mark 5
	\mark \default
	\repeat volta 2 {
	g,1\mf ( |fis |f! |e2.) r4 |a1 ( |aes2.) c,8-- (e~ |e2) r8 a (c e
	f4-- g8-- e~ e2) 
	
%Rehearsal mark 13
	\mark \default
	e2. (c4 |d c2) d4 ( |e1) |e4 (e2.) }
	\alternative {
		{r4 r8 e,8 (a4 b |c d b a8-- g~ |g2) a\< |c c4 e\! }
		{r4 r8 a, a4 (b |c e a, b8-- c~) |c4 c8-- (f~ f2) 
		r4 c8-- (a'~ a) g~ g4 } 
	}
	r4 c,8-- (f~ f4) e8 (f |g a g e d4 c) |
	
%Rehearsal mark 27
	\mark \default
	a2.\mf c4 ( |b a g f8-- g~~|g2.) b8-- (a~ |a2.) e'4 |f1 |g4 (f e d8-- e~
	e2) e\< |e e\!
	
%Rehearsal mark 35
	\mark \default
	r4 ees,\f (aes c |d c bes aes8-- bes~ |bes2.) d8-- (c~ |c1) |aes2. c4 ( 
	bes aes g f8-- g~ |g2) a! |c f,8 (g a b
	
%Rehearsal mark 43
	\mark \default
	c2) c4 (e |c8-- a~ a2.) |r4 r8 g (a4 c |a8-- e~ e2.)|c'1 ( |c 
	e2) r8 a, (c e |f4-- g8-- e~ e2)
	
%Rehearsal mark 51
	\mark \default
	e2.\mf ( c4 |d c2) d4 ( |e1) |e4 e2. |r4 r8 a,\f a4 (b |c e a, b8-- c~ 
	
%Rehearsal mark 57
	\mark \default
	c4) c8-- (f~ f2) |r4 c8-- (a'~ a) g~ g4 |r4 c,8-- (f~ f4) f8--\< (g~
	g2~ g8) r8 r4\! \bar "|."
	
    }%end relative
    \header {
    	    piece = "Just the way you are"
    	    composer = ""
    	}
  }%end score
