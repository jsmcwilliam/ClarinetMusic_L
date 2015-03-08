\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. On the Square   
    \relative c'' { 
    	    \pointAndClickOn
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    f2->\ff e-> |d4.-> e8 f4 e |d8 (cis d e) f (e f g) 
    	    a4 r\mf c,8 (cis) d e
    	    
%Rehearsal mark A
	\mark \default
	\repeat volta 2 {
	g4 f r f8 f |f4 e r e8 e |e4 d r d8 d|a'2. a4 |c8 (d) d d d4 e 
	bes8 bes bes2 c4 |c8 (d) d d d4 e |a,8 a a2 cis4 |d r8 e f4 d 
	e4 a,2 c8 (d) |e e e2 e,8 (f) |g8\< g g2 a8 (b) |c4\! r c->\ff r }
	\alternative {
		{r2 c,8 (cis) d e}
		{r1}
	}

%Rehearsal mark B
	\mark \default
	\repeat volta 2 {
	r4 e8 (f g f e f |g4) r r2 |r4 d8 (e f e d e |f4) d' (c a) 
	a-. r g-. r |a-. r g-. r |d'-. r c2->~ |c4 r r2 |r4 e,8 (f g f e f 
	g4) r r2 |r4 d8 (e f e d e |f4) d' (c a) | a-. r g-. r |a-. r g-. r  
	f8 (e f g a g f e }
	\alternative {
		{f4) r r2}
		{f4\repeatTie r f2\p}
	}	

%Rehearsal mark C
	\mark \default
	\repeat volta 2 {
	\key bes \major
	g1~^\markup {\bold {TRIO}} |g2 g |a1~ |a2\< a |bes\( d 
	f,\! (g8\fz)\) r8 r4
	r f8 (g a g f g |a4) r f2\p |g1~ |g2 g |a1~ |a2\< a |c \(ees 
	g,2\! (a8)\)\fz r r4 |r d,8 (ees f ees d ees |f4) r f2\p
	
%Rehearsal mark D
	\mark \default
	g1~ |g2 g |a1~ |a2 a |bes\< d |f, fis |r4 ees8 (f g f ees f |g4)\f r g2 
	c1 |c2 cis |d g, |bes d | r4 e,8 (f g4 e) |r4\> f8 (g a4 f)\! 
	r d8 (ees f4 d) }
	\alternative {
		{f4 r f2}
		{f4\ff bes a g}
	}
	
%Rehearsal mark E
	\mark \default
	\repeat volta 2 {
		gis4-> (a8) r a2->~ |a4 a g f |fis-> (g8) r g2->~
		g4 g f d |<d'-. d,>4 r <c-. c,>4 r |<d-. d,>4 r <c-. c,>4 r 
		g-. r f2->~ |f4 bes a g |gis-> (a8) r a2->~ |a4 a g f 
		fis-> (g8) r g2->~ |g4 g f d |<d'-. d,>4 r <c-. c,>4 r 
		<d-. d,>4 r <c-. c,>4 r |<bes-. bes,>4 ees,8 (d cis d ees f
		}
		\alternative {
			{f4) bes a g}
			{f4\repeatTie r f-> r}
		}
		\bar "|."
    }%end relative
    \header {
    	    piece = "On the Square"
    	    composer = "Frank A. Panella"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
