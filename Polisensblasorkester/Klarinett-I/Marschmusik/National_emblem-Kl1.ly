\version "2.18.0"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. National Emblem   
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \set countPercentRepeats = ##t
    	    \override TupletBracket.direction = #UP
    	    
    	    \appoggiatura { c'16[ d e] } f4->\ff r f,2~-> |f8 g a bes c4 cis->
    	    d-> r d,2~-> |d8 e f g a4 d-> |c,4. (b16 c) d4.-> (cis16 d) 
    	    e4.-> (d16 e) f4.-> (e16 f) |g4.-> (fis16 g) a4.-> (gis16 a) 
    	    bes4-> b-> c8 cis d e |f4-> r r2 |R1^\markup {\normalsize\number 1} 
    	    
    	    \repeat volta 2 {
    	    a,2:8\f^\markup {....} a4 r8 a ( |c4) r8 a (c4) r8 a ( |d4) d c4. a8
    	    f8 (g gis a) c,2 
    	    a'2:8^\markup {....} a4 r8 a ( |c4) r8 a (b4) r8 f ( |e4) e g4.-> f8 
    	    e (f fis g) c,2 |bes'2:8^\markup {....} bes4 r8 bes ( 
    	    e4) e \times 2/3 {e8 (f e} d4)
    	    a2:8^\markup {....} a4 r8 a ( |d4) d \times 2/3 {d8 (e d} c4)
    	    g2:8\ff^\markup {....} g4 b |c8 d e2-> c4 |b8 c d2-> d4 }
    	    \alternative {
    	    	    {c4 r c2}
    	    	    {c4 r f,4. (e8)}
    	    }
    	    
    	    \repeat volta 2 {
    	    g4\> (f e f |c a g f\!) |a'\p r a2:8^\markup {....} |a g4. bes8 
    	    a4 r a2:8^\markup {....} |a2 g4. a8 |bes1~ |bes4 r g4.\f (fis8) 
    	    a4\> (g fis g |e c bes g)\! |bes'4\p r bes2:8^\markup {....} 
    	    bes2 a4. c8 
    	    bes4 r bes2:8^\markup {....} |bes g4. bes8 |a1~ |a4 r f4.\f (e8) 
    	    g4\> (f e f |c a g f)\! |a'\p r a2:8^\markup {....} |a2 g4. f8 
    	    f4 r f2:8^\markup {....}\cresc |f2 g4. f8 |f4 d f2~ |f1 |r4 d'\ff e f 
    	    c2 cis |d a |bes e4. d8 |c4 r r2 |r2 d4 e
    	    f1~ }
    	    \alternative {
    	    	    {f4 r f,4.\f (e8)}
    	    	    {f'4\repeatTie r r2}	    
    	    }
    	    \key bes \major \time 2/2   
 	    \mark \markup {\bold {TRIO}}
    	    \repeat volta 2 {
    	    bes,4-.\f r bes r 
     	    \repeat percent 6 {bes r bes\mf r} |bes r a r |bes r bes r |bes r bes r 
     	    d,,1~\f
    	    d4 fis a4. d8 |fis1~ |fis2 e!4. d8 |a'4 r fis2~ |fis e!4. d8\p\<
    	    fis1~ |fis |r8 g,\ff a b c (d) ees f! 
    	    g4 \tuplet 3/2 {ees'8 (f ees)} d4. c8 |f4 r d2~ |d1 
    	    r8 d, e fis g (a) b c |d4 \tuplet 3/2 {c8 (d c)} bes!4. a8 
    	    bes4 r g2~
    	    g1 |r8 ees f g aes (bes) c d |ees4 a,! bes4. c8 |d1~ |d4 f, e4. f8
    	    r8 e f g a (bes) c d |ees!4 f \afterGrace a,2\trill_( {g16 a)} 
    	    bes4 bes,,8 d f bes d f |bes4 r r2 
    	    }   	    
    }%end relative
    \header {
    	    piece = "National Emblem"
    	    composer = "E. E. Bagley"
    	}
  }%end score
