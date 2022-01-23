\version "2.22.1"

% When ready to include in collection: 1. Comment out paper, score.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'relative-includes #t) 
#(set-default-paper-size "a5" 'landscape)

\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Psalm 425 - Den blomstertid nu kommer    
    \relative c''' { 
    	    \key g \major \time 4/4 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    r2 r4 d,^\markup {\upright\concat {  "F" \char#246 "rspel"}}|
    	    e g g fis| g2.\fermata

    	    \repeat volta 2 {
    	    	    b4 ^\markup {\upright  "Koral"} \mf      |
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
  }%end score

