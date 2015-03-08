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

    % Svenska Polisens Marscher: 1. Beatrice Aurore   
    \relative c'' { 
    	    \key bes \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 4 d4\f^\markup {\bold {Modito}} ( |f4.) f8 f2~ 
    	    f4 g (bes8 a g f |a4. f8) f2~ |f2. f4~
    	    f^\markup {\bold {T:o di Bossa Nova}} r r2 |r r4 d\mf (
    	    
%Rehearsal mark A
	    \mark \default
    	    \repeat volta 2 {
    	    	    f4.) f8 f4 f |f (g bes g) |a4. (f8) f4 f |f2. f4 ( |a c2 a4
    	    	    bes g a f) |g-- (g-- g-- g-- |g2.) d4 ( 
    	    	    
%Rehearsal mark B
	    \mark \default   	    	    
    	    	    f4.) f8 f4 f |f (g bes g) |a4. (f8) f4 f |f2. f4 ( 
    	    	    a c2 a4 |bes g a f) |g-- (g-- g-- g-- |g2.) r4
    	    	    
%Rehearsal mark C
	    \mark \default
    	    r2 aes2~\f |aes1 |g2 (aes |g4 ges f2) |r2 a!~ |a1 |g~ |g2. d4\mf (

%Rehearsal mark D
	    \mark \default
	    f4.) f8 f4 f |f (g bes g) |a4. (f8) f4 f |f2. f4 ( |a c2 a4
    	    bes g a f) |g-- (g-- g-- g-- }
    	    \alternative {
    	    	    {g2) r |R1 |r2 r4 
    	    	    {\once \override Slur.control-points = #'((1 . 3) (3 . 4.6) (3 . 3.6) (4 . 4))
                    d4\mf( <>)} }
    	    	    {g2\repeatTie r \bar "||"}    	    
    	    }
    	    
%Rehearsal mark E
	    \mark \default
	    \key c \major
    	    R1*3 |r2 r4 a,\p ( |d e d c |a b c a) |b (d a d |g,2.) r4 
    	    
%Rehearsal mark F
	    \mark \default
    	    r2 d'\f ( |g fis) |f! (e |f2.) g4 |f (g a f |g e f d) 
    	    e-- (e-- d-- dis-- |e2) r |R1 |r2 g-> |a1~ |a2.\fermata r4
    	    \bar "|."
    }%end relative
    \header {
    	    piece = "Beatrice-Aurore"
    	    composer = "Mj. Caesarman"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
