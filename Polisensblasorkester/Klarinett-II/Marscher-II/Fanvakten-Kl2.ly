\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%}
%...to here

  \score {

    % Svenska Polisens Marscher: 1. Fanvakten    
    \relative c'' { 
    	\clef treble \key bes \major \time 2/2
    	ees4\ff r g4.-> (f16 e |f4) r r2 |r ees4-- r |d r d4.\p f8
        \repeat volta 2 {
    	    bes4 r bes2~-> |bes4 r d,4. f8 |bes4 r bes2~-> |bes4 r f4. g8
    	    f4 r c2~-> |\tuplet 3/2 {c4\< c d} \tuplet 3/2 { ees f g} 
    	    f4\! r f4.\f ees8 |d4 r d4.\p f8 |bes4 r bes2~-> |bes4 r d,4. f8
    	    bes4 r bes2~-> |bes4 r f4.\f g8 |ees1~ |ees4 ees ees f |d r ees r}
    	    \alternative {
    	    	    {d4 r d4.\p f8}
    	    	    {d4\ff f4 f4. f8}
    	    }
    	    \repeat volta 2 {
    	    	  ees1 |r4 g ees4. g8 |d1 |r2 f8\p g a bes |<a ees>4 r <a ees> r
    	    	  <a ees> r <a ees> r\< |<bes~ d~>1 |<bes d>4\ff f4 f4. f8 |ees1
    	    	  r4 g ees4. g8 |d1 |r4 d\mf (bes g') |f\< f8 g a4 f8 g
    	    	  a4 a8 bes c4 a\! |f1~\ff }
    	    	  \alternative {
    	    	  	  {f4 f f4. f8}
    	    	  	  {f4 \repeatTie r r2}
    	    	  }
    	    \bar "||"

    	    \key ees \major \time 2/2
    	    \phrasingSlurDown
    	    \acciaccatura { d16[ ees f] } g4\ff^\markup {\bold {Trio}} r r2
    	    r bes,,\mp (
    	    \repeat volta 2 {
    	    	 g'1~ |g4 f ees f |ees1~ |ees4) d (c d)|c4. (bes8 c4. d8
    	    	 ees4.) f8\< \( \tuplet 3/2 {g4 aes bes\!\)} |c2.\> (bes8 aes
    	    	 \phrasingSlurUp
    	    	 f4)\! r bes,2 \(aes'1~ |aes4 g f g |f1~ |f4\) ees (d ees)
    	    	 d4. (c8 bes4. c8 |d4.\<) ees8 (f4. fis8)\! |g2.\> (f!8 ees
    	    	 bes4\!) r bes'2\f ( |g'1~ |g4 f ees f |ees1~ |ees4) d (c d)
    	    	 c4. (bes8 c4. d8 |ees4.)\< d8 \( \tuplet 3/2 {ees4 f g\!\)}
    	    	 f1~ |f4 \tuplet 3/2 {c8\mf (d c)} b4 c\< |f r f r |c r c r
    	    	 ees\f r8 g g2~ |g4\ff \tuplet 3/2 {bes8 (c bes)} a4 bes
    	    	 \tuplet 3/2 {f4 ees d} c bes |aes r d r |bes r g' r8 g }
    	    	 \alternative {
    	    	 	 {g4 r bes,,2\mp}
    	    	 	 {g'4 r r2}
    	    	 }
    	    \bar "|."
    }%end relative
    \header {
    	    piece = "Fanvakten"
    	    composer = "K. Ekstrand"
    	}
    \layout {ragged-last = ##t
    	}

  }%end score
