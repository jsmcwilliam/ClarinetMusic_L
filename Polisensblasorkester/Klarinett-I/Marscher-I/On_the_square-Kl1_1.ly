\version "2.16.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%
#(ly:set-option 'point-and-click #t)

#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print


  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
  }}}
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
	g1~ |g2 g |a1~ |a2 a |bes\< d |f, fis |g1~\f |g4 r g,2 |c4 g c ees |g2 bes 
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
