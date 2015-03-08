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

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. National Emblem   
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \set countPercentRepeats = ##t
    	    \appoggiatura { c16[ d e] } f4->\fff r a2~-> |a8 g a bes c4 g->
    	    f-> r f2~-> |f8 e f g a4 f |e2-> f-> |g-> a-> |e2-> f-> 
    	    g4-> f-> bes2-> |a4-> r r2 |R1^\markup{\normalsize\number 1} 
    	    \bar "||"
    	    \repeat volta 2 {
    	    f2:8^\markup {....} f4 r |a r8 f (a4) r8 f |a4 a a2 |f8 (g gis a) a2 
    	    f2:8^\markup {....} f4 r |a r8 f (d4) r8 b ( |c4) c b2 
    	    e8 (f fis g) e2 |g2:8^\markup {....} g4 r8 g ( |bes4) bes bes2
    	    f2:8^\markup {....} f4 r8 f ( |a4) a a2 |f2:8^\markup {....} f4 d 
    	    e8f g2-> e4 |d8 e f2 f4 }
    	    \alternative {
    	    	    {e4 r e2}
    	    	    {e4 r f4. (e8) \bar "||"}
    	    }
    	    \repeat volta 2 {
    	    g4 (f e f |c a g f) |f'\p r f2:8^\markup {....} |f e4. g8 
    	    f4 r f2:8^\markup {....} f2 e4. (f8 |g1~) |g4 r g4. (fis8) 
    	    a4\> (g fis g\! |e c bes g) |g'4 r g2:8^\markup {....} | g2 fis4. a8 
    	    g4 r g2:8^\markup {....} |g e4. g8 |f1~ |f4 r f4.\f (e8) |g4 (f e f 
    	    c a g f) |f' r f2:8^\markup {....} |f2 g4. f8 
    	    a4 r a2:8^\markup {....} |a2 a4. a8 |bes4 f bes2~ |bes1 |gis->\ff 
    	    a2-> g!-> |f->ees-> |d-> gis-> |a4-> r r2 |r2 b4 bes
    	    a1~ }
    	    \alternative {
    	    	    {a4 r f4. (e8)}
    	    	    {a4\repeatTie r r2}	    
    	    }
    	    \key bes \major \time 2/2    	    
    	    \repeat volta 2 {
    	    d,4-.\f^\markup {\bold {TRIO}} r d-. r 
     	    \repeat percent 6 {d-. r d-. r} |d r ees r |d r d r |d r d r |d,1~
    	    d4 fis a4. d8 |fis1~ |fis2 e!4. d8 |a'4 r fis2~ |fis e!4. d8\p\<
    	    fis1~ |fis |r8 g,\ff a b c d ees f! 
    	    g4 \tuplet 3/2 {ees8 (f ees)} d4. c8 |d4 r bes'2~ |bes1 
    	    r8 d,, e fis g a b c |d4 \tuplet 3/2 {c8 (d c)} bes!4. a8 |bes4 r d2~
    	    d1 |r8 ees, f g a bes c d |ees4 a, bes4. c8 |d1~ |d4 f e4. f8
    	    r e, f g a bes c d |ees!4 ees ees2 |d4 bes,8 d f bes d f d4 r r2 
    	    }   	    
    }%end relative
    \header {
    	    piece = "National Emblem"
    	    composer = "E. E. Bagley"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
