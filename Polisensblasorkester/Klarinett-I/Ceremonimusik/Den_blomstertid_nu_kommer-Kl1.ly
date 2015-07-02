\version "2.18.0"
% When ready to include in collection: 1. Comment out paper, score.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Psalm 425 - Den blomstertid nu kommer    
    \relative c''' { 
    	    \key g \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 4*1
    	    b4--( ^\markup {\upright\concat {  "F" \char#246 "rspel"}} \mf     b a g fis      | % 1
    	    g2 g4-- r | % 2
    	    R1*2 |
  	    r4 b d d | % 5
    	    c c) b d, ( | % 6
    	    e fis g2 | % 7
    	    g fis | % 8
     	    g1~ | % 9
   	    g2.\fermata)
   	    
    	    \repeat volta 2 {
    	    	    b4 ^\markup {\upright  "Koral"} \mf      | % 11
    	    	    b a g fis   | % 12
    	    	    g2 g4 \breathe b      | % 13
    	    	    d d c c     | % 14
    	    	    b2. \breathe }
      
    	    d4       | % 16
    	    e d c b  | % 17
    	    a2 a4 \breathe b     | % 18
    	    c c b b  | % 19
    	    a2. \breathe a4     | % 20
    	    b a g fis| % 21
    	    e2 e4 \breathe d    | % 22
    	    e g g fis| % 23
    	    g1\fermata         | % 24
    	    \bar "|."| % 26
    }%end relative
    
    \header {
    	    piece = "PSALM 425 - Den blomstertid nu kommer"
    	    composer = "Trad."
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score

