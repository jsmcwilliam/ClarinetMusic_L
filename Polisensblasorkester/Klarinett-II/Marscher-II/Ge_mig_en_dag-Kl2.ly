\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "|")
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Ge mig en dag    
    \relative c' { 
    	    \key c \major \time 3/4
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    R2.*16
    	    
%Rehearsal mark A
	\mark \default
	\repeat volta 2 {
	    fis2.\p |fis |fis4 (e) dis |cis (dis) e |fis2. |fis2\< (b4) 
	    cis2\! (b4~\> |b ais2)\! |gis2. |fis2 fis4 |fis (e) dis |cis (dis) e
	    fis\< (b) b |dis4.\! cis8 b4-- |b\((ais2)\> }
	    \alternative {
	    	    {b2.\)\!}
	    	    {b2.\<\repeatTie\bar "||"}
	    }
	    
%Rehearsal mark B
	\mark \default
	g'2.~\(\f |g4 e8 d e4\) |g2.~\( |g4 e8 d e4\) |r8 g,\noBeam (a [c] e g)
	g-. [g-.] e-. [e-.] c-. c-. |d ([f] e [d] b a) |gis ([e] gis [b] e4) 
	r8 a,\noBeam c ([a]) e' ([c]) |b ([g] e [g] b4) |g'2.~\( |g4 e8 d e4\) 
	e2. |e4. (d8) c4-- |d2. ( |c) \bar "||"
	<g ees>4^\markup {div.} (<fis d> <f cis> |<e c!>2.) \bar "||"
	\key g \major
	d2.~\mf |d |c |a'8 ([e]) c' ([a]) e ([a]) |c4 (fis,!2) |d4 (c2) 
	r4 g' (c) |b8 ^\([g] d ([e] d [b])\) |g4^\markup {Soli} (a b) |a (g fis)
	e (c') c |c2 r4 |e,4 (c') b |a (b c) |d2.~ |d2 r4 |R2.*4 |d2.\mf |e |e
   	r4 e (d) |g8 ([d]) g ([d]) b' ([g]) |b2\breathe b8\p (c) 
	
%Rehearsal mark B
	\mark \default
	\repeat volta 2 {
		d4-- d (b) |c-- c-- a8 (b) |c4-- c (a) |b2 g8 (a) |b4-- b (g)
	a-- a-- fis8 (g) |a4-- a (fis) }
		\alternative {
			{g2 b8\pp (c)}
			{g2 r4}
		}
		R2.*3 
		r8^\markup {Soli} c8\mf\noBeam (c [d]_\markup {Rit..} fis [fis])
	\bar "||"
	
%Rehearsal mark C
	\mark \default
	e4 (fis g |fis e d) |c (a'4.) a8-- |a2. |c,4 (a' fis |fis e d) 
	c2. (b2) r4 |e4 (fis4. g8 |fis4 e d) |c (a'4.) a8-- |a2. |fis4 (fis a)
	gis (gis4.) b8-- |a4 (b c) |c, (e d) |e2.~-> |e~\> |e\fermata\!
	\bar "|."
    }%end relative
    \header {
    	    piece = "Ge Mig en Dag"
    	    composer = ""
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
