\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
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

    % Svenska Polisens Marscher: 1. Islands in the stream   
    \relative c'' { 
    	    \key c \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-circle-barnumbers
    	    r2^\markup {\bold {Moderately Slow Rock}} r8 c\mf\< (e g) 
    	    a4-^\f\> g2.->\! |r2 r8 c,\mf\< (e g) |a4-^\f\> g2.->\! \bar "||"

%Rehearsal mark bar 5    	    
    	    \mark \default
    	    c,,1~\mp |c |c ( |c2 bes) |a1~\( |a |c2\) r8 c'\mf\< ( e g) 
    	    a4\f g2.->\> 
    	    
%Rehearsal mark bar 13    	    
    	    \mark \default
    	    c,,8\mf e e e e e e e |e4 e (c8 g4.) |c8 e e e e e e e |e4 g c aes
    	    f4 a!8 a~ a2 |b8 (a-.) a (f-.) a4 f8 (a) |g\( e e2.~ 
    	    e2\) g8\< (a c d |
    	    
%Rehearsal mark bar 21    	    
    	    \mark \default
    	    e2.\f) e8 (f | e4 d8 c c d4.) |r4 e8 ([f] e4 d8 c~ 
    	    c4 e8 d c4) c8 (g-.) |c4 a8 (e-.) g (a->) r4 |r2 r8 g-- a-. c~->
    	    c4 a8-. (g-.) a (c->) r c-. |c (a g4-^) r2
    	    
%Rehearsal mark bar 29    	    
    	    \mark \default
    	    e'1 ( |f) |f~ |f |e ( |f) |r4 e8-- c-. e-- e-. r e-. 
    	    e (c e4-^) r g8-- f~-> |f f-. f-- f-. f-- c-. r f-. |e (c e4-^) r2
    	    
%Rehearsal mark bar 39    	    
    	    \mark \default
    	    f1\mf ( |aes |g2) r8 c,\< (e g) |a4-^\f g2.->\> |f1\mf ( |aes 
    	    g2.) e4 ( |e\< e2)\! r4 
    	    
%Rehearsal mark bar 47   	    
    	    \mark \default
    	    e1\f ( |f) |f~ |f |e ( |f) |r4 e8-- c-. e-- e-. r e-. 
    	    e (c e4-^) r g8-- f~-> |f f-. f-- f-. f-- c-. r f-. |e (c e4-^) r2
    	    r2 r8 c\< (e g) |a4-^\f g2.->\> <>\! |r2 r8 c,\< (e g) 
    	    a4-^\f g2.->\fermata \bar "|." 
    }%end relative
    \header {
    	    piece = "Islands in the stream"
    	    composer = "Barry Gibb, Maurice Gibb & Robin Gibb"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
