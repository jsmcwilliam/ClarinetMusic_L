\version "2.22.1"

% When ready to include in collection:	1. Comment out top section with \Include file(s)
%{					2. \midi section if present.
%Comment out from here
%
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    f4.\f e8 d4 cis |d bes' a g |f r bes2 |a4 r r a8\p a
    	    
    	    \repeat volta 2 {
    	    	    a4 a r a8 a |a4 a r a8 a |a4 a a a |bes2. bes8 bes 
    	    	    bes4 bes r bes8 bes |bes4 bes r bes8 bes |bes4 bes a gis
    	    	    a2 r4 a8 a |a4 a r a8 a |a4 a r a8 a |a4 a a a |g2 r4 b8 b
    	   	    b4 a r a8 a |a4 g r g8 g |f4 a g f }
    	    \alternative {
    	    	    {e2 r4 a8\p a}
    	    	    {e4 r r2}
    	    }
    	    
    	    \repeat volta 2 {
    	    	    a2.\f (e4) |f f (a f) |e4. bes'8 bes4 bes | bes1 |bes2. (e,4)
    	    	    f e bes' (e,) |f4.a8 a4 a |a1 |a2. (c,4) 
    	    	    ees-. (ees-. ees-. ees-.) | d4. g8 g4 g |gis2. gis4 |a r r2 
    	    	    \OneBR |bes4 r bes r }
    	    \alternative {
    	    	    {a\fz r r2}
    	    	    {a4 a8 a a4 r \bar "||"}
    	    }
    	    
    	    \key bes \major
    	    \mark \markup {\bold TRIO}
    	    R1*2 
    	    
    	    \repeat volta 2 {
    	    	    d,2-.\p (d4-. d-.) |d2-.~ d-. |ees1 ( |a) 
    	    	    ees2-. (ees4-. ees-.) |ees2-.~ ees-. |d1 ( |g) 
    	    	    bes4->\fz r a8 r g r |fis4 r g8 r bes r |a2 fis4. g8 |g1
    	    	    a2 fis4. g8 |g1 |g2 e4. f8 |f1 |f2 (bes4 fis) |g2 bes |a1
    	    	    a |f2 (a4 fis) |g2 a |f!1 |f |r2 bes4.\f bes8 |bes2 a4 aes
    	    	    g2. f4 |c'2 fis, |f!2. f4 |c'2. f,4 |bes r 
    	    	    \afterGrace a2\trill { g16[ a] } |bes4 bes8 bes bes4 r 
    	    	   
    	    }
    }%end relative
    \header {
    	    piece = "Wien Bleibt Wien"
    	    composer = "Johann Schrammel"
    	}
  }%end score
