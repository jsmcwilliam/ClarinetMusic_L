\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Malaga   
    \relative c'' { 
    	    \key aes \major \time 2/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    R2*6^\markup {\bold {Paso doble}} |r4 r8 des'\f 
    	    c [bes aes g] \bar "||"
    	    f4. e16 (f |g8) [c, d e] |f4. e16 (f |g8) [c, d e] |f r r4 |R2*3
    	    \bar "||" |f,8\p\< f aes aes |c c ees ees |d [d des des] 
    	    c [c d e]\! |f2\f |c4 aes |c8\> (bes4.~|bes8) [g f e]\! |c\p c\< e e 
    	    g g bes bes 
    	    a [a] aes [aes] |g [g aes bes]\! |c2\f |bes4\> aes |g8 (f4.~ 
    	    f8)\! r r4 
    	    c'8\p c\cresc f f |aes aes c c |aes [aes aes aes] |aes [aes f g] 
    	    a2 |fis4 (f) |ees8 (des4.~ |des8) r bes'\f c |des8. [c16 bes8 aes] 
    	    g [f g (bes)] |c8. [bes16 aes8 g] |f [e f aes] |c2 |bes4 (aes) 
    	    g8 (f4.~ | f8) [f,\mf a c]
    	    
    	    \repeat volta 2 {
    	    \key f \major
    	    f2 |e4 (c) |d8 a4.~ |a8 r a (bes) |c [c c c] |d [c bes a] 
    	    g16 a bes4.~
    	    bes8 [g bes d] |g2 |f4 (d) |e8 bes4.~ |bes8 r bes (c) |d [d d d]
    	    e [d c bes] |a16 bes c4.~ |c8 r r4 |r8 a'16 a a8 a16 a 
    	    a8 a a a] |r f16 f f8 f16 f |f8 [f f f] 
    	    r f16 f f8 f16 f |f8 [f f f] |r a4-> aes8 ( 
    	    g) [f\f a! c] |c2 |a4 (f) |a8 (fis4.~ |fis8) [fis g a] |bes8 g4 bes8
    	    g8 e4 g8 }
    	    \alternative {
    	    	    {a8 r r4 |r8 f,\mf [a c]}
    	    	    {a'8 r r g-> |a-> r r4}
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
