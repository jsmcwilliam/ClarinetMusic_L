\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Liberty Bell   
    \relative c'' { 
    	    \key g \major \time 6/8 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    g'4\ff (fis8 e4 ees8 |d4 cis8 c4 b8) |a b c b4 a8 |d,4 r8 r4 d8
    	    \repeat volta 2 {
    	    	g8\p r g g g g |d' r b b r g |a\< r a a r b |c4.~\> c4 a8\!
    	    	fis r fis fis eis fis |d' r c c r a |g\< r g g r a |b4.~ b4 b8
    	    	g\p r g g g g |g'r d d r b |a\< r e' e r e |e4.~ e4 e8 
    	        fis\f r fis fis eis fis |e! r e e e e |fis r g fis r g }
    	        \alternative {
    	        	{fis4 r8 c4.->}
    	        	{fis4 r8 fis4.->}
    	        }
    	    \repeat volta 2 {
    	    	    g8\ff g g e4 d8 |g4. d |e fis |d~ d4 d8 |fis g a a4 fis8
    	    	    g4. g |fis e |d8 (e fis d4) d8 |c\mf\< r c c c c |dis4. dis
    	    	    e4 e8 e e e |dis4.~->\ff dis4 dis8 |e r e c r e |g4. d 
    	            fis d }
    	    	    \alternative {
    	    	    	    {d4.~ d4 d8}
    	    	    	    {d4.~ d4 g,8}
    	    	    }
    	    \repeat volta 2 {
    	    	   \key c \major
    	    	   \mark \markup {\bold {TRIO}}
    	    	   c,4.\p\< (d |dis e) |c'8\! r c c r c
    	    	   c4.~ c4 g8 |c,4.\p\< (d |dis e) |d'8\! r d d r cis 
    	    	   d4.~ d4 b8 |b4.\mf (ais |b4) g8 (fis4 g8) |c2.~ 
    	    	   c4 g8 (fis4 g8) }
      	    	   \alternative {
   	    	   	   {g4.\< b |a fis |f!\> f |f d\!}
    	    	   	   {f!4.\< d' |c4 (g8) b4 (g8)\! |g2.~ |g4 r8 r4 r8
    	    	   	   \bar "||"}
    	    	   }
    	   r4 b8\ff b b b |a4 r8 r4 r8 |r4 b8\ff b b b |a4 r8 r4 r8 
    	   r4 b8\ff b b b |a4 a8 c c c |b4 r8 b4 r8 
    	   R2.^\markup{\normalsize\number 1} |r4 f'!8 f e d |c4 r8 r4 r8
    	   r4 f8 f e d |c4 r8 r4 r8 |r4 f8 f e d |c4 c8 c c c |d4 r8 d4-> r8
    	   R2.^\markup{\normalsize\number 1} |r4 r8 r4 ees8-> |d4-> d8-> g4-> r8
    	   r4 r8 r4 ees8-> |d4-> d8-> g4-> r8 |ees2. |e! |f!2. |f4 r8 d4.->
    	   \repeat volta 2 {
    	   	   c4.\f\< d |dis e\! |c8-> r c c r c |c4.~ c4 g8 |c4.\f\< d 
    	   	   dis e\! |d!8-> r d d r cis |d4.~ d4 b8 |b4. ais 
    	   b4 g'8 (fis4 g8) |c,4. c |c4 g'8 (fis4 g8) }
    	   \alternative {
    	   	   {g4.\< b |a fis\! |g\> f! |d b\!}
    	   	   {f'!4.\< f |e4 (c8) d4 (b8)\! |c8 g a b c d |e4 r8 g4-> r8}
    	   }
    	   \bar "|."
    }%end relative
    \header {
    	    piece = "Liberty Bell"
    	    composer = "John Philip Sousa"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
