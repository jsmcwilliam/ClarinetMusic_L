\version "2.18.0"
% When ready to include in collection: 1. Comment out top section.
% 				       2. Create include file of relative and
%					  header.
%#(allow-volta-hook "||")
%Comment out from here
%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
%#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key c \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    s1

    }%end relative
    
    \header {
    	    piece = "Title"
    	    composer = "Composer"
    	}
    \layout {ragged-last = ##t
    	}
    	
  }%end score
