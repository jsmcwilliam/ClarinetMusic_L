\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%{					  header.
#(allow-volta-hook "||")
%Comment out from here
%
#(set-default-paper-size "a4" 'portrait)
%#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

OneBR = R1^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}

  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key bes \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-numbers
    	    g4-.^\markup {\bold {Moderately}} \f bes-. d-. d-. 
    	     des8-- bes4-. c8~-> c2 |R1*2 
    	    g4-.\f bes-. d-. d-. |des8-- bes4-. c8~-> c4 des-> |g-> r r2
    	    \OneBR
    	    
%Rehearsal mark 9
	\mark 9
	R1*3 |r4 d,--\mf fis-- a-- |c1~-> |c4 r d8 c bes a |g2.-> bes4-.
	des8-- bes4-. c8~-> c2 
	
%Rehearsal mark 17
	\mark 17
	g4-.\mf^\markup {\bold {Soli}} bes-. d-. 
	d,8-- g-. |r bes-- d4-. d,-. g-. |bes-. d-. d,8-- g4-. bes8--
	d4-. d,-- fis-- a-- | c1~-> |c4 r d8 c bes a |g2. d'4-. |c2\< (d)
	
%Rehearsal mark 25
	\mark 25
	ees4->\! r r2 |\OneBR |r2 r4 c'-.\mf |g4.-> a8~-> a2 |R1*2 
	r2 r4 bes-.\mf |g4.-> fis8~-> fis2
	
%Rehearsal mark 9
	\mark 33
	g,4\f^\markup {\bold {Soli}} (bes d) 
	d,8-- g-. |r bes-- d4-. d, (g |bes d) d,8-- g4-. bes8--
	d4-. d,-- fis-- a-- | c1~-> |c4 r d8 c bes a |g2. d'4 |c4.-> d8~-> d2
	
%Rehearsal mark 9 
	\mark 41
	d,4\mf^\markup {\bold {Soli}} (e g) g-. |g8-- fis4-. a8~-> a2 
	d4 (e g) g-. |g8-- fis4-. a8~-> a2 |f,4 (g bes) bes-. |bes8-- a4-. c8~c2
	f4 (g bes) bes-. |bes8-- a4-. c8~-> c2 |d,2->\f fis4.-> b8 
	a4-. g-. fis8-- e4.-> |R1*2 |b'4.-> b8 fis4-. fis-. |b1-> 
	cis4-. cis8-- cis-. r b a4-. |d,1-> |dis4-.\ff dis8-- dis-. r cis-- b4-.
	e2-> f->
	\key c \major
	
%Rehearsal mark 59 
	\mark 59
	\repeat volta 2 {
		e1->\< |R1*3\! |r4 d2-> b4-. |d1-> |r4 e2-> c4-. }
	\alternative {
		{ees8-- c4 d8~-> d2 }
		{d4.-> e8~-> e2 \bar "||"}
	}
	
%Rehearsal mark 68 
	\mark 68	
	d4-.\f^\markup {\bold {Soli}} e-. f-. g8-- a-. |r a-- g4-. f-. e-.
	d4.-> d8~-> d2~ |d1 |c4-. d-. e-. f8-- g-. |r g-- f4-. e-. d-.
	c4.-> c8~-> c4 e-. |f4.-> e8~-> e2 
	
%Rehearsal mark 76
	\mark 76
	a,4-. c-. e-. e,8-- a-.
	r c-- e4-. e,-. a-. |c-. e-. e,8-- a4-. c8-. |e4-. e-> gis-> b~-> |b1~ 
	b4 r e,8 d c b |a4-. c-. e-. c-. |ees8-- c4-. d8~-> d2 |R1*2 
	a4-. c-. e-. c-. |ees8-- c4-. d8~-> d4 c-> |a-> r e'8\< f fis gis
	a4->\! r a,,-> r \bar "|."
 	
    }%end relative
    \header {
    	    piece = "Puttin' on the Ritz"
    	    composer = "Irving Berlin"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
