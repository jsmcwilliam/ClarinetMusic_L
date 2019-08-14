\version "2.18.0"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}


  \score {

    % Svenska Polisens Marscher: 1. Kong Fredrick Honnormarch    
    \relative c'' { 
    	    \key c \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	     
    	    R1*2           |c'4.->\ff (b16 c) c4.-> (d16 c) |b4->  b8 b b4 r   |
    	    R1*2  	   |e4.-> (f16 e) d4.-> (e16 d)     |c4->  r r2        |
    	    
   	    \repeat volta 2 {r r4 e,8\f (g  |c4) r r2       |r r4 g8 (c        |
    	    e4) r8 \times 2/3 {c16 c c } \times 2/3 {c4 c c }                  |
%            e4) r r r |
    	    b4 r8 b b4 b   |b b b b        |c-> b8 (d) c4 a |g r r2            |
    	    r r4 e8 (g)    |c4 r r2        |r r4 g8 (c      |
    	    e4) r8 \times 2/3 {c16 c c  } \times 2/3 {c4 c c  }                |
%            e4) r r r |
            c4 r8 a a4 c   |b  d d r8 cis16 (d)             |c!2 c4.  a16( c)  |
    } % end of repeat except alternate endings
    	   \alternative {        
    	   	{b4->  r r2| }
    	   	{b4->  r r2| }
    } %close alternatives
  
    \key es \major
    
    \repeat volta 2 {  
    	    aes2->  aes->   |aes2.->  aes4-> |g->  bes ees c  |bes r r2        |
    	    r aes8-.\f aes-.  aes-.  aes-.   |aes4-.  r r2    |
    	    r g8-.  g-.  g-.  g-. 	     |g4-.  r r2      |aes->  aes->    |
    	    aes2.->\ff  aes4->               |g bes ees c     |bes4 g( f ees)  |
    } % end of repeat except alternate endings
     	    \alternative{
    	    	{c'2-> c->  |bes4-> g8-.  c-.  bes  (g)  ees-.  c-.            |
    	    	bes'4-. r d2->\trill         |\acciaccatura {c16 d} ees4 r r2  |
    	    	}
    	    	{ d,4 r8 b' b4 b             |b b g b         |
    	    	c gis8 (a) c4 c->	     |b->  r r2 \bar "||"              |
    	    	}
    	    } %close alternatives
    	    
    \key c \major 
    r2 r4 e,8( g   |c4) r r2       |r r4 g8( c     |
    e4) r8 \tuplet 3/2{c16 c c  } \tuplet 3/2{c4 c c  }       |b4 r8 b b4 b    |
    b b b b        |
    c-> b8 (d) c4 a|g r r2         |r r4 e8( g     |c4) r r2  |r r4 g8( c      |
    e4) r8 \tuplet 3/2{c16 c c  } \tuplet 3/2{c4 g c  }       |c2->  c->       |
    c4->  r r2     |r f,->         |e4 e8 e e4 r  \bar "||"   |

    \key f \major 
    \time 2/2 
    \mark \markup {\bold  "TRIO"}
    a4-> \ff  r r2 |R1*3           |\bar "||"      |a, \p     |c2 d            |
    a4.( g8 f4. g8)|a1             |a2.( c4)       |d( f e4. d8)               |
    bes4 g8( c e4) c8( e           |g4) r r2       |bes,1     |d2( e)          |
    bes4._( a8 g4. a8)             |bes1           |c,2.( d4) |e( f g4. gis8)  |
    a2.( d4)       |
    c( bes g4. gis8)               |a1             |c2( d)    |a4.( g8 f4. g8) |
    a1             |a2.( c4)       |d( f e4. d8)   |a'4 e,8\< (a cis4) a8( cis |
    e4) r bes'4.-> ( \f a8)        |g2.( f4)       |des2( f)  |
    c4 a8( c f4) c8( f             |a4) a,( \p e'4. d8)       |c2.( b4)        |
    bes!2 e,       |
    f4 g8 (a bes c d e             |
    f4) r r2 \bar "||"             |
   
    d'2->  \ff cis->               |d4  (c!8 bes a4) r8 d16 (e)                |
    d4 cis a d     |cis cis8 cis cis4 r            |f2->  e-> |c4 bes aes r    |
    f' e c f       |e e8 e e4 r    |
    r des8 des des4 r              |r c8 c c4 r    |r aes->  aes->  aes->      |
    g4->  r r2 \bar "||"           | 

    a,1 \ff ^\markup {\upright  "Grandioso"}       |c2( d)    |a4.( g8 f4. g8) |
    a1             |a2.( c4)       |d( f e4. d8)   |bes1~     |bes2. r4        |
    bes1           |
    d2( e)         |
    bes4.( a8 g4. a8)              |   bes1        |c,2.( d4) |e( f g4. gis8)  |
    a2.( d4)       |c( bes g4. gis8)               | a1       |c2( d)          |
    a4.( g8 f4. g8)|a1             |      a2.( c4) |d( f e4. d8)               |
    a'1~           |a4 r bes4.-> ( a8)             |g2.( f4)  |des2( f)        |
    c1~            |c4 a( e'4. d8) |c2.( b4)       |bes2 e,   |
    f4 g8 (a bes c d e             |f4) r a->\fz r \bar "|."
%}   
    }%end relative
    \header {
    	    piece = \markup {\concat 
    	    {"Kong Fredrick den 9'e Honn" \char #246 "rmarch"}}
    	    composer = "Kai Neilsen"
    	}
  }%end score
