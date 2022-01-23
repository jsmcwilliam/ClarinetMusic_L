\version "2.22.1"

% When ready to include in collection: 1. Comment out top section.
% 				       2. Create include file of relative and
%					  header.
%#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    
    	    \partial 4 
    	    r4 | r1 | r4 a'8\ff a a2 | r1 | r4 a8 a a2 | r1
    	    e1~\startTrillSpan | e1~ | e4\stopTrillSpan r r2 
    	    r2 e,8\p ( a c f) \bar "||" \break
    	    
    	    \repeat volta 2 {
    	      \bar ".|:"
    	      e8 r e r e r e r | g4. f8 ( e d c b) | a r a r a r a r 
    	      a4. c8 ( d c  bes a) | g r g r g r g r | g4. bes8 ( c b a g)
    	      f r f r f r f r | f2 f8 ( a c f) | \break
    	      
    	      e8 r e r e r e r | g4. f8 ( e d c b) | a r a r a r a r 
    	      a4. gis8\< ( a gis a b)\! | c4.\f b8 ( c b c d)
    	      e4. b8\< ( c d e f)\! | g4\ff g8 g g4 g 
    	      
    	    }
    	    
    	    \alternative {
    	    { c,4 r f,8 ( a c f)}
    	    { c4 r r2}
    	    }
    	    
    	    \repeat volta 2 {
    	     c'2\ff c | c4. d8 ( d4.) c8 (|  a1~) |  a4 r f,8 ( a c f)
    	     a2 a | a4. bes8 ( g4.) a8 (| f1~) | f4 r r2   
    	     \acciaccatura e8 d4\p cis d r8 e | f2  ( c4) a8 ( d)
    	     c2-> ( g4) g8 ( d') | c2-> ( a4) r8 c 
    	     \acciaccatura e8 d4\p\cresc cis d e | f g a bes 
    	     c r8 e,\f \afterGrace e2\startTrillSpan ( {d16[e]
    	     \stopTrillSpan}
    	    }

            \alternative {
              { f4) r r2 }
              { f4\repeatTie f8 f f4 \bar "||" \break }
            }
            
            \key bes \major \time 2/2 
            \partial 4
            \mark \markup {\bold Trio}
            \tuplet 3/2 { f8\ff ( g a } | bes4) r bes r | bes r d,4.\p ( ees8)
            f2 ( bes | a c) | bes1~ | bes4 r bes4. ( a8) | g2 ( bes | ees, g)
            f1~ | f4 r f4. ( bes8) | a1~ | a4 r f4. ( c'8) | bes1~ 
            bes4 r bes4. ( d8) | c2 a4. ( c8) | bes2 e,4. ( g8) 
            f1~ | f4 r f,2\p | ees'\cresc ees | ees g | c,1~ | c4 r a4. bes8 
            c2 c | c ees | f,1~ | f4 r f'4.\ff f8 | f1 (| f,4) r f'4. f8
            f1 (| <f f,>4)  r d'2 | bes2. bes4 | c2 d | ees1~ | ees4 r d2 | c2. c4
            d2. c4 | bes r r a | bes r r a | bes r bes r | bes2 r4 r \bar "|."        
            
    }%end relative
    
    \header {
    	    piece = "Kungl. Kronobergs Regementes Marsch"
    	    composer = "C. Latann"
    	}
    \layout {ragged-last = ##t
    	}
    	
  }%end score
