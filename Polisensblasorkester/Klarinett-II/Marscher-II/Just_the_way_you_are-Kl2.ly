\version "2.18.0"
% When ready to include in collection: 1. Comment out version, paper, score 
%					  and book.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Just the way you are   
    \relative c'' { 
    	    \key c \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-circle-barnumbers
    	    r4^\markup {\bold {Moderate rock}} c8--\mf (aes~ aes2) 
    	    r4 c8-- (f~ f) e~ e4 |r4 c8-- (aes~ aes2) |r4 c8-- (f~ f) e~ e4 
    	    
%Rehearsal mark 5
	\mark \default
	\repeat volta 2 {
	g,1\mf ( |fis |f! |e2.) r4 |a1 ( |aes2.) c,8-- (e~ |e2) r8 a (c e
	d2-- d8-- bes~ bes4) 
	
%Rehearsal mark 13
	\mark \default
	c2. (a4 |aes aes2) aes4 ( |c1) |b4 (c2.) }
	\alternative {
		{r4 r8 e, (a4 g |fis2. fis8-- f!~ |f2) f\< |a a4 a\! }
		{r4 r8 a f2 ( |a f)} 
	}
	r4 c'8-- (aes~ aes2) |r4 c8-- (f~ f) e~ e4 |r4 c8-- (aes~ aes2) 
	e'2 (bes) |
	
%Rehearsal mark 27
	\mark \default
	f2.\mf a4 ( |f2. d8-- e~ |e2.) g8-- (e~ |e2.) e4 |f1 |b2. (b8-- b~\<
	b1 |a) <>\!
	
%Rehearsal mark 35
	\mark \default
	r4 ees\f (aes c |f, ees d f8-- g~ |g2.) f8-- (e!~ |e1) |f2. ees4 ( 
	d c bes aes8-- g~ |g2) a! |a' a
	
%Rehearsal mark 43
	\mark \default
	g g ( |fis1) |f! ( |e) |a ( |aes |c) |d4-- d8-- (bes~ bes2) 
	
%Rehearsal mark 51
	\mark \default
	c2.\mf ( a4 |aes aes2) aes4 ( |c1) |b2 c |r4 r8 a\f f2 |a (f) 
	
%Rehearsal mark 57
	\mark \default
	r4 c'8-- (aes~ aes2) |r4 c8-- (f~ f) e~ e4 |r4 c8-- (aes~ aes4) d8-- (e~~
	e4~\< e8) r8 r4\! \bar "|."
	
    }%end relative
    \header {
    	    piece = "Just the way you are"
    	    composer = ""
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
