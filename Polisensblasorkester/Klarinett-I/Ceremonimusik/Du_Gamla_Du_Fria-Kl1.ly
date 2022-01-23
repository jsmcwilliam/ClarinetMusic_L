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
    % Svenska Polisens Marscher: 1. Du Gamla Du Fria    
    \relative c'' { 
    \clef treble \time 4/4 \key bes \major
    \partial 8 f8\p |bes8.\f\< a16 bes8 c\! d bes ees8. d16 |c2\> (bes4)\!
    \breathe r8 d\mf
    \repeat volta 2 {
    d4 (bes8) bes bes4 (c8) d |d4 c8 (bes) a4. c8\p 
    c4 a8\< bes c a\! d8. bes16 |g2\> (f4.)\! f8\mp |bes4 bes8 c a4 a8 bes
    g8. (f16) g8 a f4. f,8 
    bes8. a16 bes8 c d bes ees8. d16 |c2 (bes4.\p) f'8\ff 
    bes8.\< a16 bes8 c\! d bes ees8. d16 |c2.\> (bes4)\! }
    }%end relative
    
    \header {
    	    piece = "Du Gamla du Fria"
    	    composer = ""
    	}
  }%end score
