\version "2.16.0"
% When ready to include in collection: 1. Comment out paper, score.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%}
%...to here

  \score {

    % Svenska Polisens Marscher: 1. Psalm 425 - Den blomstertid nu kommer    
    \relative c'' { 
    	    \key g \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 4*1
    	    b4( ^\markup {\upright  "Förspel"} \mf     b a g fis      | % 1
    	    g8 fis e4) d2~(      | % 2
    	    d8 e fis g a4 a      | % 3
    	    g g fis2~      | % 4
    	    fis4) e'( d2      | % 5
    	    e~ e8) d c( b      | % 6
    	    c2 b4 c      | % 7
    	    d1~      | % 8
    	    d~      | % 9
    	    d2.\fermata ) 
    
    	    \repeat volta 2 {
    	    	    g4 ^\markup {\upright  "Koral"} \mf      | % 11
    	    	    fis e( d2~   | % 12
    	    	    d4 c) b \breathe g'      | % 13
    	    	    a g~( g8 e) fis4      | % 14
    	    	    g2. \breathe }
      
    	    g4      | % 16
    	    g2 e8( fis) g4  | % 17
    	    a4( e) fis \breathe g      | % 18
    	    g fis g2      | % 19
    	    fis2. \breathe a4      | % 20
    	    g fis e d~(      | % 21
    	    d c) b \breathe a      | % 22
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

