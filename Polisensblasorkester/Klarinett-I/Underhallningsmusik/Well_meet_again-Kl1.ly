\version "2.18.0"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key g \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    r4 a8\f (a'~ a2) |b,8(c) \times 2/3 {e8 ( g b} d4) r 
    	    r2 d8-- b-- a16 (g fis e 
    	    d4) r \times 2/3 {fis\mf^\markup {Soli} (e ees} \bar "||"
    	    
%Rehearsal mark A
	\mark \default
	d2) (cis4 d |dis2 d4 dis |e2) dis4-- (e8 c'~ |c2.) b8\( (c) |b4. a8 a4 g 
	g (fis2 g4) | a1~ |a2\) \times 2/3 {a4 (fis e} |d2) (cis4 d |dis2 d4 dis 
	e2) dis4--( e8 c'~ |c2.) b8 \( (c) |b4. a8 a4 g |g e b' b |g1~ 
	g4\) r r2 |g1\p\glissando ( |g,) |r2 \times 2/3 {d'4 c b} |a2. r4 |R1*3
    	r8\f^\markup {Soli} fis' (e fis a fis e ees) |d2 (cis4 d dis2 d4 dis 
    	e2) dis4-- (e8 c'~ |c2.) b8\( (c) |b4. a8 a4 g |g e b' b |g1~\) 
    	g4 g,--\f g-- g-- \bar "||"
    	
%Rehearsal mark B
	\mark \default
	\key c \major
	g2 (fis4 g) |gis2 (g4 gis) |a2 ( gis4 a |f'2.) e8 (f) |e4-- d-- d-- c--
	c-- b-- b-- c-- |d1~ |\times 2/3 {d4 e d} \times 2/3 {b4 a aes} 
	g2 (fis4 g) |gis2 (g4 gis) |a2 (gis4 a |f'2.) e8 (f) |e4-- d-- d-- c--
	c (a) e'-- e-- |c1~ |c4 r r2 |\OneBR |r2 r4 c8.\mf (gis16) 
	a8 c e d~ d2~ |d2.
	<< {\set fontSize = #-4  % make note heads smaller
	    e8.^\markup {\concat { {"Fl" \char #246 "jt/Oboe"}}} f16
	    fis8. e16 fis8 e~ e4 d8. e16 |fis8. e16 fis8 e~ e4 d8 (e
	    g2 f4 e |d2)
	    \unset fontSize  % return to default size
           }
	\\
	   {r4 \override MultiMeasureRest #'staff-position = #-4 R1*3 r2	   	   
	    \revert MultiMeasureRest #'staff-position
	   }>>
	d8--\f b--a--aes-- |g\((c e g) fis4 g |gis2 g4 gis\) |a2 (gis4 a)
	r8 a, (cis g') f (g) e (f) |e4 (d) d (c) 
	c\( \acciaccatura { b16 [bes] } a4\) e'-- e8 (c~ |c2) g4-- (gis8 a~ 
	a2) b'\fermata \bar "|."
    } %end relative
    \header {
    	    piece = "We'll meet again"
    	    composer = "Ross Parker"
    	}
  }%end score
