\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
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
	    b'4--\p b-- b-- |fis2 fis4 |gis4 (e) gis |fis2\breathe fis4 
	    b2 (fis4) |fis4\< (b) dis | e2.\> ( |dis2)\!\breathe cis4
	    b4-- b-- b-- |fis2 fis4 |gis4 (e) gis |fis2\breathe fis4 
	    fis4\< (b) dis |fis4.\! (e8) dis4-- |cis2.\> ( }
	    \alternative {
	    	    {b2.)\!}
	    	    {b2.\repeatTie\cresc\bar "||"}
	    }
	    
%Rehearsal mark B
	\mark \default
	g'2.~\(\f |g4 e8 d e4\) |g2.~\( |g4 e8 d e4\) |r8 g,\noBeam (a [c] e g)
	g-. [g-.] e-. [e-.] c-. c-. |d ([f] e [d] b a) |gis ([e] gis [b] e4) 
	r8 a,\noBeam c ([a]) e' ([c]) |b ([g] e [g] b4) |g'2.~\( |g4 e8 d e4\) 
	g2.~ |g4. (f8) e4-- |d8 (g,) g' (g,) g' (g,) | c2. | f4 (e ees 
	d2.) \bar "||"
	\key g \major
	g,2.~\mf |g |e |c'8 ([a]) e' ([c]) a ([c]) |e4 (a,2) |fis4 (e d) 
	r4 c' (e) |d8 ([b] g [e] d [b]) |g4^\markup {Soli} (a b) |a (g fis)
	e (c') c |c2 r4 |e,4 (c') b |a (b c) |d2.~ |d2 r4 |R2.*4 |fis2. |gis |a
   	r4 g (fis) |g8 ([d]) b' ([g]) d' ([b]) |g'2\breathe b,8\p (c) 
	
%Rehearsal mark C
	\mark \default
	d4-- d (b) |c-- c-- a8 (b) |c4-- c (a) |b2 g8 (a) |b4-- b (g)
	a-- a-- fis8 (g) |a4-- a (fis) |g2 r4 |R2.*8 |\bar "||" |R2.*3 
	r8^\markup {Soli} d'8\mf\noBeam (e [fis]_\markup {Rit..} b [a])
	
	
%Rehearsal mark D
	\mark \default
	g4 (a b |a g fis) |e (c'4.) c8-- |c2.\breathe |e,4 (c' b |a g fis) 
	e2. ( |d2) r4 |g4 (a4. b8 |a4 g fis) |e \((c'4) c |c2.\)\breathe 
	a4 (b c)
	b (c4.) d8-- |c4 (d e) |e, (g fis) |g2.~->\pp  |g~\> |g\fermata\!
	\bar "|."
    }%end relative
    \header {
    	    piece = "Ge Mig en Dag (Ta mig till Havet)"
    	    composer = ""
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
