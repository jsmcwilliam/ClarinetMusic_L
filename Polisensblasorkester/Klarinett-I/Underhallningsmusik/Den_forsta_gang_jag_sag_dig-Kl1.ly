\version "2.22.1"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}

  \score {

    % Svenska Polisens Marscher: 1. Den forsta gang jag sag dig   
    \relative c'' { 
    	    \key bes \major \time 2/2 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 4 bes'4^\markup {\bold {Moderato}}\f ( |g a bes c |d f, bes d) 
    	    c1~ |c |bes4^\markup {\bold {T:o di Bossa Nova}} r r2 |r r4 f,8 (f' 
    	    c2.) r4 |r2 r4 d4\p ( 
    	    
%Rehearsal mark A
	   \mark \default
	   \repeat volta 2 {
	   d4 d f d |c2 bes4) g' ( |g g bes g |f2.) bes4 ( |g fis g a 
	   bes a bes g |c1) |r2 r4 d, ( |d4 d f d |c2 bes4) g' ( |g g bes g 
	   f2.) g4 ( |a c f, d |c g' bes a |f1~) |f2. r4
	   
%Rehearsal mark B
	   \mark \default
	   R1*3 |r2 r4 <f' f,>\mf ( |ees d c ees |d c bes a |g a bes d 
	   c2 f,4) r
	   
%Rehearsal mark C
	   \mark \default
	   R1*3 |r2 bes->\f ( |g4 a bes c | d f, bes d) |c1 ( }
	   \alternative {
	   	   {bes2)\> r |r r4 f,8 (f' |c2.) r4 |r2 r4
{\once \override Slur.control-points = #'((1 . 3) (3 . 4.6) (3 . 3.6) (4 . 4))
                   d4\p( <>)} }
	   	   {bes'2\repeatTie r |r r4 f,8 (f' |c2.) r4 |R1}
	   }
	   \bar "||"
%Rehearsal mark D
	   \mark \default
	   \key c \major
	   r2 d\p |d1 ( |e2 dis | e2.) c'4\mf ( |c b a b |a gis g e 
	   e f fis a |a2 g) \breathe |g4-. g2-- r4
	   
%Rehearsal mark E
	   \mark \default
	   R1*4 |g4--\f g2-- c4 ( |a b c d |e g, c e) |d1 ( | c2) r |r2 r4 e, ( 
	   e e g e |d2 c4) c (
	   g'1~)_\markup {Rit.......} |g~ |g2~ g4\fermata r \bar "|."
    }%end relative
    \header {
    	    piece = \markup {\concat {"Den f"\char#246"rsta g"\char#229"ng jag s"\char#229"g dig"}}
    	    composer = \markup {\concat {"B. Sj"\char#246"berg"}}
    	}
  }%end score
