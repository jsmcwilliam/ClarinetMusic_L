\version "2.16.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%
#(set-default-paper-size "a5" 'landscape)
%#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
  }}}
%...to here
%
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key c \major \time 2/2 
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
