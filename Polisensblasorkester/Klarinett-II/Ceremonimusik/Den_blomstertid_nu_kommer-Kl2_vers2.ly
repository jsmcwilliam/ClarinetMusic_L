\version "2.22.1"
% When ready to include in collection: 1. Comment out paper, score.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "../../../Includes/Polis_format.ily"

%}
%...to here

  \score {

    % Svenska Polisens Marscher: 1. Psalm 425 - Den blomstertid nu kommer    
    \relative c'' { 
    	    \key g \major \time 4/4 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    r2 r4^\markup {\concat { "F" \char#246 "rspel"}} \mf a4 |b e d2   
    	    d2.\fermata
 
    
    	    \repeat volta 2 {
    	    	    g4 ^\markup {"Koral"} \mf   |fis e d2~   
    	    	    d4 c b \breathe g'      | % 13
    	    	    a g~ g8 e fis4      | % 14
    	    	    g2. \breathe }
      
    	    g4      | % 16
    	    g2 e8( fis) g4  | % 17
    	    a4( e) fis \breathe g      | % 18
    	    g fis g2      | % 19
    	    fis2. \breathe a4      | % 20
    	    g fis e d~      | % 21
    	    d c b \breathe a      | % 22
    	    b e d2      | % 23
    	    d1\fermata       | % 24
    	    \bar "|."     | % 26
    }%end relative
    
    \header {
    	    piece = "PSALM 425 - Den blomstertid nu kommer"
    	    composer = "Trad."
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score

