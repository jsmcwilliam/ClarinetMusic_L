\version "2.22.1"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}

  \score {
  	  
    % Svenska Polisens Marscher: 1. Svenska Flygarmarsch    
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \set Staff.instrumentName = #""
    	    \set Staff.shortInstrumentName = #""
    	    \clef treble
    a'4. \f a8 bes2 |g4. g8 a2 |f4 g e f |d a'\p (g f) |
    
    \repeat volta 2 {
    	    e4. f8 g2~    |g4 g (f e)    |f4. e8 d2~    |d4 a' (gis a) 
    	    bes4. c8 d2~  |d4 d (c bes)  |bes a8 (gis) a2~      
    	    a4 gis8( a bes a g f) |e4 e8 (f) g2~        |g4 f8( g a g f e)     
    	    d4 d8 (e) f2~         |f4  \tuplet 3/2 {a8\< (bes a)  } gis4 a \! 
    	    bes4.-. \f a8-. bes4-. g-. |a4.-. gis8-. a4-. f-.      
    	    d e f g 
    } % end repeat
    \alternative{ 
    	    {a4 a\p (g f)  } 
            {a4 a\ff gis a } 
    } %close alternatives
    
    \repeat volta 2 { %startrep 
    	    bes4. (c8) c4 a       |g4.( a8) a4 e         |f a c e               
    	    d \p \tuplet 3/2{c8( d c)  } b4 c            |bes! r e2~      
    	    e4 \tuplet 3/2{c8( d c)  } b4 c 
    	    a r d2~               |d4 a \ff gis a        |bes4.( c8) c4 a      
    	    g4.( a8) a4 e         |f a c e               |
    	    d \tuplet 3/2{c8( d c)  } b4 c 
    	    d4. cis8 d4 c         |bes a g f             |e4 r c8 cis d e
    } % end of repeat except alternate endings
    
    \alternative{ {f4 a gis a     |}
    	          {f4 f8 f f4 r   |}
                } %close alternatives

    \bar "||"     |

    \key bes \major
    \mark \markup {\bold  "TRIO"}
    \acciaccatura {f16 [g a]} bes4  \fz r r2 \bar "||" |
    \OneBR        |
    r4 f,8( \p e f4) bes |a f d' f,      |r d'8( c bes a bes c |d4) r r2 |
    r4 \tuplet 3/2{f,8( g f)  } e4 f     |d'8( cis d c bes a bes g       | 
    a4) c8( d ees f ees d|c4) r r2       |r4 f,8( e f4) c'     |bes f ees' f, |
    r ees'8( d c b c d   |ees4) r r2     |r4 \tuplet 3/2{g,8( a g  } fis4) g  |
    ees'8( d ees d c b c a               |bes4) d8( c bes a bes c        |
    d4) r r2      |r4 f,8( e f4) bes     |a f d' f,    |r d'8( c bes a bes c  |
    d4) r r2      |bes8( a bes c d cis d c             |bes c d ees f d ees f |
    g4) c,8( d ees f ees d               |c4) r r2     |r4 c8( d ees f ees d  |
    c4) c r c     |r bes8( c d ees d c   |bes4) bes r bes      |
    ees8( f ees d c d c bes              |a g f g a ees' d c   |
    bes4) c8( d ees f g a|bes4) r r2 \bar "||"         |
    r4 \f a bes c |d c bes a             | g4. fis8 g4 a       |bes r r2      |
    r4 g a bes    |c bes a g             |f4. e8 f4 g  |a c, f a         |
    bes1(         |a4) f a c             |des1(        |c4) e, f g \mf   |
    a gis8 _\markup{"cresc."} a bes4 a8 bes            | c4 b8 c d4 c8 d |
    ees4 d c bes \bar "||" |
    a4 r d4. \ff cis8    |d2 bes         |a d          |g,1~   |g4 a,( bes c  |
    d) f( e f)    |a2 g  |g a,~          |a4 r ees''4. d8      |ees2 c   |
    bes ees       |a,1~  |a4 b,( c d     |ees) g( fis g)       |bes2 a   |
    g d (  |
    d4) r d'4. cis8      |d2 bes         |a d          |g,1~   |g4 a,( bes c  |
    d2) f4. e8    |f2 aes|g1~            |g4 r bes4. a8|bes2 c,~         |
    c4 r a'4. gis8|a2 bes,~              |bes4 r g'4. fis8     |g2 g     |a f | % 118
    bes1~         |bes4 r \acciaccatura {f16 [g a]} bes4-^ r \bar "|." 
}%end relative

    \header {
    	    piece = "Svenska Flygarmarsch"
    	    composer = "Helge Damberg"
    	}
  }%end score
