\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of score and
%					  header.
%
%comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%to here
%} 

  \score {
    % Svenska Polisens Marscher: 1. Du Gamla Du Fria    
    \relative c'' { 
    \clef treble \time 4/4 \key bes \major
    \partial 8 f8\p (|f2~\ff f8 g)\< g bes\! |bes4\> (a) f4.\!\breathe f8\mf
    \repeat volta 2 {
    f4. f8 g4 (a8) bes |bes4 g (f4.) f8\p 
    f4 c~ c8\< g' fis d\! |f!4\> (e!) c4.\! f8\mp |f4 d8 g g4 (f8) d |f4 e! f2~ 
    f8. a,16 (bes8\<) a bes4 bes\! |bes\> (a) f4.\! f'8\p (
    f2~\ff f8 g)\< g bes\! }
    \alternative {
    	    {bes4\> (a) f4.\! f8}
    	    {bes4\> (a) f2\!\fermata\bar "|."}
    	}
    }%end relative
    \header {
    	    piece = "Du Gamla du Fria"
    	    composer = ""
    	}
    \layout {ragged-last = ##t
    	}

  }%end score
