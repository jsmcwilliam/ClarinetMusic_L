\version "2.18.0"
% When ready to include in collection: 1. Comment out version, paper, score 
%					  and book.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 14) % set staff-size when ready to print

OneBR = R1^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Karlskrona (Chefsmarsch)    
    \relative c'' {
    	  \key c \major \time 2/2 \clef treble
    	  \override DynamicLineSpanner.staff-padding = #2
    	  \compressFullBarRests
    	  g'4.\f g8 fis (g) a g |c4. c8 b (c) d c |e2 d |c4 r8 g,\p fis (g) a g
    	  
    	  \repeat volta 2 {
    	        e'4 r8 e e2~ |e4. c8 b (c) d c |g'4 r8 g g2~ 
    	        g4. g8 fis (g) a g
    	        f!4\mf\< r8 f (d4) r8 d ( |b4) r8 b (a'4) r8 a ( 
    	        g4) r8 g (e4) r8 e 
    	        (c4.)\! g8\p fis (g) a g |e'4 r8 e e2~ |e4. c8 b (c) d c 
    	        a'4 r8 a a2~ |a4. a8 gis (a) c a |g4\mf\< r8 g (e4) r8 e ( 
    	 	b'4) r8 b (dis,4) r8 dis ( |e4)\! r8 e,\f dis (e) g fis }
    	        \alternative {
    	        	{e4 r8 g8\p fis (g) a g }
    	        	{e4 g'8\ff g g4 g}
    	        }
    	        
    	        \repeat volta 2 {       
    	        \repeat percent 2 {r4 b r b} |r b8 b b4 b |r c8 c c4 c
    	        \repeat percent 2 {r4 gis r gis} |r4 gis8 gis gis4 gis
    	        r a8 a a4 a |a4\p r8 d, (a'2) |r4 \tuplet 3/2 {d,8 (e d)} cis4 d
    	        g r8 c, (g'2) |r4 \tuplet 3/2 {c,8 (d c)} b4 c |f\cresc r8 b, (f'2)
    	        a4 r8 b, (a'2) |g4 r8 c (g2~) |g4\f \tuplet 3/2 {d8 (e d)} cis4 d
    	        a'4 r8 d, (a'2) |r4 \tuplet 3/2 {d,8 (e d)} cis4 d |g r8 c, (g'2)
    	        r4 \tuplet 3/2 {c,8 (d c)} b4 c |f r8 f f2 |b4 r8 b b2 |c1~ }
    	        \alternative {
    	        	{c4 g8\ff g g4 g}
    	        	{c4\repeatTie r4 \grace {g16 (a b)} c4 r }
    	        }
    	  \key f \major 
    	  \repeat volta 2 {
    	  	  \OneBR
    	  	  r4 f,8\p^\markup {\bold "TRIO"} (g) a4 bes
    	  	  c8 (bes) a-. g-. a4 r |f8 (e) d e f4 r
    	  	  r \acciaccatura e8 f4 f f |r \acciaccatura gis8 a4 a a
    	  	  r c,8 (d) e4 f |g8 (f) e d e4 r
    	  	  \OneBR |r4 e8 (f) g4 a |bes8 (a) g f g4 r |g8 (f) e d e4 r
    	  	  r \acciaccatura dis8 e4 e e |r \acciaccatura fis8 g4 g g 
    	  	  r b,8 (c) d4 e |f r^\markup {div.}
  	  	  << {
    	  	       g8\< (a bes b)\! |c2.\f (a4) |f'1 |e2. (d4) |a1 |cis2. (a4)
    	  	  g'1 |f2. (e4) |d1 }
    	  	  \\
    	  	     { 
    	  	       g,,8 (a bes b) |c2. (a4) |f'1 |e2. (d4) |a1 |cis2. (a4)
    	  	     g'1 |f2. (e4) |d1 }
    	  	  >>
    	  	  
    	  	  \ottava #1 f'2~ f8-. e-. f-. e-. |f4 e f4. g8 |a1 |a,\ottava #0 
    	  	  c~ c4 b bes4. g8 |f1~
    	  	   }
    	  	  \alternative {
    	  	  	  {f4 r \acciaccatura b8 c2->}
    	  	  	  {f,4 r f r}
    	  	  }
    	  	  \bar "|."
    	  }%end relative
    	  
    \header {
    	    piece = "Karlskrona (Chefsmarsch)"
    	    composer = "V. Widqvist"
    	}
	\layout {
		indent = #0
%  		line-width = #150
%  		ragged-last = ##t
  		}
  }%end score
