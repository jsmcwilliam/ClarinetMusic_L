\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Malaga   
    \relative c'' { 
    	    \key aes \major \time 2/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    R2*6^\markup {\bold {Paso doble}} |r4 r8 des\f 
    	    c [bes aes g] \bar "||"
    	    f4. e16 (f |g8) [c, d e] |f4. e16 (f |g8) [c, d e] |f r r4 |R2*3
    	    \bar "||" |f8\p\< f aes aes |aes aes c c |aes [aes aes aes] 
    	    c [c d e] |c2\f |aes4 f |g2~\> |g8 [g f e] |c\p\< c e e |e e g g 
    	    e [e e e] |e [g aes bes] |g2\f |f4\> e |d8 (c4.~ |c8) r r4 
    	    aes'8\p aes\cresc c c |f f aes aes |f [f f f]\! |f [f d e] 
    	    f2 |ees!4 (des!) |c8 (bes4.~ |bes8) r bes c |des8. c16 bes8 aes 
    	    g [f g (bes)] |c8. bes16 aes8 g |f [e aes c] |e2 |des4 (c) |a2~
    	    a8 [f\mf a c]
    	    
    	    \repeat volta 2 {
    	    \key f \major
    	    c2 |c4 (a) |a8 f4.~ |f8 r f (g) |a [a a a] |bes [a g f] |e16 f g4.~
    	    g8 [e g bes] |d2 |d4 (bes) |bes8 g4.~ |g8 r g (a) |bes [bes bes bes]
    	    c bes a g |f16 g a4.~ |a8 r r4 |r8 ees'16 ees ees8 ees16 ees 
    	    ees8 [ees ees ees] |r d16 d d8 d16 d |d8 [d d d] 
    	    r des16 des des8 des16 des |des8 [des des des] |r c4-> c8 ( 
    	    bes) [f\f a c] |a'2 |a4 (f) |fis8 (c4.~ |c8) [c d fis] |g8 d4 g8
    	    e8 c4 e8 }
    	    \alternative {
    	    	    {f8 r r4 |r8 f,\mf [a c]}
    	    	    {f8 r r e-> |f-> r r4}
    	    }
    	    \bar "|."
\override Staff.KeySignature.break-visibility = #all-invisible
\override Staff.Clef.break-visibility = #all-invisible
\cadenzaOn
      \stopStaff
      
         \once \override TextScript.extra-offset = #'( 4 . -3.5 )
         | s1*0^\markup {\center-column { D.C. \line {ad lib.}}} 

        
        % Increasing the unfold counter will expand the staff-free space
        \repeat unfold 4 {
          s4 s4
          \bar ""
        }
        
        \break
     \startStaff
   \cadenzaOff

    }%end relative
    \header {
    	    piece = "Malaga"
    	    composer = "Josef Rixner"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
