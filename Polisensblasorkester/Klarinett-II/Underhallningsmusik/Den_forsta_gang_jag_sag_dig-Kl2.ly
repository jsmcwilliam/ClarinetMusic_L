\version "2.16.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%}
%...to here

  \score {

    % Svenska Polisens Marscher: 1. Den forsta gang jag sag dig   
    \relative c'' { 
    	    \key bes \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 4 r4^\markup {\bold {Moderato}} |g'1\f ( |f2 g4 bes) 
    	    a (gis2 g!4) |g4 (ges2 f4 |f)\>^\markup {\bold {T:o di Bossa Nova}}
    	    r r2 |r r4 f,8 (f' |c2.) r4 |r2 r4 d4\p ( 
    	    
%Rehearsal mark A
	   \mark \default
	   \repeat volta 2 {
	   d4 d f d |c2 bes4) g ( |g g bes g |f2.) bes4 ( |g fis g a 
	   bes a bes g |c1) |r2 r4 d ( |d4 d f d |c2 bes4) g ( |g g bes g 
	   f2.) g4 ( |a c f d |c g bes a |f1~) |f2. r4
	   
%Rehearsal mark B
	   \mark \default
	   R1*3 |r2 r4 bes'\mf ( |bes a g a |g fis f! d |d ees e g |g2 ees4) r
	   
%Rehearsal mark C
	   \mark \default
	   R1*3 |r2 f2->\f |g1 ( |f2 g4 bes) |a (aes g ges }
	   \alternative {
	   	   {f2)\> r |r r4 f,8 (f' |c2.) r4 |r2 r4 
	   	   {\once \override Slur
                #'control-points = #'((1 . 3) (3 . 4.6) (3 . 3.6) (4 . 4))
                   d4\p( <>)} }
	   	   {f2\repeatTie r |r r4 f,8 (f' |c2.) r4 |R1}
	   }
	   \bar "||"
%Rehearsal mark D
	   \mark \default
	   \key c \major
	   r2 b\p |b (bes4 b! |c1 |d2 c4) a'\f ( |a g f gis |g! f e cis 
	   c! d e fis |f!2 b,) |dis4-- dis2-- r4
	   
%Rehearsal mark E
	   \mark \default
	   R1*4 |e4--\f e2-- r4 |a1 ( |g2 a 4 c) |b (bes a aes | g2) r |R1 |c, (
	   bes2.) c4 ( |g'1~)_\markup {Rit.......} |g~ |g2~ g4\fermata r \bar "|."
    }%end relative
    \header {
    	    piece = \markup {\concat {"Den f"\char#246"rsta g"\char#229"ng jag s"\char#229"g dig"}}
    	    composer = \markup {\concat {"B. Sj"\char#246"berg"}}
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
