\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. On the Square   
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    d2->\ff cis-> |a4.^> cis8 d4 a |a2 d4 d |e r bes2->
    	    
%Rehearsal mark A
	\mark \default
	\repeat volta 2 {
	c4\mf c r c8 c |c4 c r c8 c |a4 a r d8 d|f2. f4 |g2 g4 g |g8 g g2 g4
	a2 a4 a |f8 f f2 g4 |a-. r8 a a4 a |g4 g2 a4 |a-. r8 a a4 a |g g2 r4
	g8 g g2 c,4 |d8\< d d2 f4 |e\ff r g-> r }
	\alternative {
		{R1}
		{r4 f\ff (e d)}
	}

%Rehearsal mark B
	\mark \default
	\repeat volta 2 {
	dis4-> (e8) r e2->~ |e4 e (d c) |cis-> (d8) r d2->~ |d4 a' a f 
	f-. r f-. r |e-. r e-. r |a-. r a2->~ |a4 f (e d) |dis-> (e8) r e2-.~
	e4 e (d c) |cis-> (d8) r d2->~ |d4 a' a f |f-. r f-. r |e-. r e-. r 
	c1->~ }
	\alternative {
		{c4 f (e d)}
		{c4 r f,2\p}
	}	

%Rehearsal mark C
	\mark \default
	\repeat volta 2 {
	\key bes \major
	d'1~^\markup {\bold {TRIO}} |d2 d |f1~ |f2 f |f\<\( f |d (e8\fz)\) r8 r4
	a,1~ |a4 r f2\p |ees'1~ |ees2 ees |ees1~\< |ees2 f |a\! \(a 
	ees2 (f8)\) r r4 |d1~ |d4 r f,2\p
	
%Rehearsal mark D
	\mark \default
	d'1~ |d2 d |f1~ |f2\< f |f f\! |d d |g1~\f |g4 r g,2 |c4 g c ees |g2 bes 
	bes ees, |f bes |g,1~\> |g2 a\! |bes1~ }
	\alternative {
		{bes4 r f2}
		{bes4\ff bes a g}
	}
	
%Rehearsal mark E
	\mark \default
	\repeat volta 2 {
		ees'4->~ ees8 r ees2->~ |ees4 ees ees ees |d->~ d8 r d2->~
		d4 d d bes |bes'-. r bes-. r |a-. r a-. r |d,-. r d2->~ 
		d4 bes a g |ees'->~ ees8 r ees2->~ |ees4 ees ees ees 
		d->~ d8 r d2->~ |d4 d d bes |bes'-. r bes-. r |a-. r a-. r 
		d,1~ }
		\alternative {
			{d4 bes a g}
			{d'4\repeatTie r d-> r}
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
