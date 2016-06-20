\version "2.18.0"
% When ready to include in collection: 1. Comment out version, paper, score 
%					  and book.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Karlskrona (Chefsmarsch)    
    \relative c'' {
    	  \key c \major \time 2/2 \clef treble
    	  \override DynamicLineSpanner.staff-padding = #2
    	  \compressFullBarRests
    	  b2\f b |c g' |c b |c4 r8 g, fis (g) a g
    	  \repeat volta 2 {
    	        c4 r8 c c2~ |c4. c8 b (c) d c |e4 r8 e e2~ |e4. g8 fis (g) a g
    	        f!4 r8 d (b4) r8 b ( |g4) r8 g (f'4) r8 f ( |e4) r8 e (c4) r8 g 
    	        ( |e4.) g8 fis (g) a g |c4 r8 c c2~ |c4. c8 b (c) d c 
    	        c4 r8 c c2~~ |c4. c8 b (c) e c |b4 r8 b (g4) r8 g ( 
    	 	b4) r8 b (a4) r8 a ( |g4) r8 e dis (e) g fis }
    	        \alternative {
    	        	{e4 r8 g8 fis (g) a g }
    	        	{e4 g'8\ff g g4 g}
    	        }
    	        \repeat volta 2 {       
    	        \repeat percent 2 {r4 g r g} |\repeat percent 2 {r g8 g g4 g}
    	        \repeat percent 2 {r4 e r e} |\repeat percent 2 {r4 e8 e e4 e}
    	        f4\p r8 d (f2) |r4 \tuplet 3/2 {d8 (e d)} cis4 d
    	        e r8 c (e2) |r4 \tuplet 3/2 {c8 (d c)} b4 c |d\cresc r8 b (d2)
    	        f4 r8 b (f2) |e4 r8 c (e2~) |e4\f \tuplet 3/2 {d8 (e d)} cis4 d
    	        f4\p r8 d (f2) |r4 \tuplet 3/2 {d8 (e d)} cis4 d |e r8 c (e2)
    	        r4 \tuplet 3/2 {c8 (d c)} b4 c |d r8 d d2 |f4 r8 f f2 |e1~ }
    	        \alternative {
    	        	{e4 g8\ff g g4 g}
    	        	{e\repeatTie r4 e r \break}
    	        }
    	  \key f \major 
    	  \mark \markup {\bold "TRIO"}
    	  \repeat volta 2 {
    	  	  c,2.\p (a4 |f'1) |e2. (d4 |a2) f4 (g
    	  	  a) r c2 ( |d4) r d2 ( |bes1~) |bes |bes2. (g4 |e'1) |d2. (c4
    	  	  bes2) g4 (a |bes) r d2 (e4) r e2 ( |c1~\<) |c |a'~\f |a |a
    	  	  c |e |cis |d2. (e4) |f1 |d2~ d8 cis d e |f4 e f4. g8 |f1
    	  	  f |e~ |e4 e e4. c8 |a1~ }
    	  	  \alternative {
    	  	  	  {a4 \acciaccatura g'!8 c2.->}
    	  	  	  {a,4 r a r}
    	  	  }
    	  	  \bar "|."
    	  }%end relative
    	  
    \header {
    	    piece = "Karlskrona (Chefsmarsch)"
    	    composer = "V. Widqvist"
    	}
	\layout {
  		ragged-last = ##t
  		}
  }%end score
