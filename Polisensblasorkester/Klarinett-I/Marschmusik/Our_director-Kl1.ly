\version "2.18.0"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Our Director   
    \relative c'' { 
    	    \key c \major \time 6/8 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 8 r8 |R2.*2 |r8 g'\ff a b e d |c4 r8 g4\f c8
    	    
    	    \repeat volta 2 {
    	    e8 [r e~] \grace f e dis e |c [r c~] \grace d c b c |g a b c d dis
    	    e4.~ e8 d c |b4 (f'8) f4 (e8) |e d cis d4. |c8 (e) d c b a  
    	    g4 r8 g4.-> |e'8 [r e~] \grace f e dis e |c [r c~] \grace d c b c 
    	    g a b c d dis |e4.~ e8 e (e) |d4\ff d16 d d8 b g |d g b d4 r8
    	    \afterGrace d,2.\trill { cis32[ (d)] } }
    	    
    	    \alternative {
    	    	    {g4 r8 g4.->}
    	    	    {g4 r8 r4 r8}
    	    }

    	    \repeat volta 2 {
    	    	    g2.~\ff\startTrillSpan |g~ |g~ 
    	    	    \afterGrace g\stopTrillSpan {fis16 [(g)]} 
    	    	    b4\f b16 b b8 c cis |d2. |c4 c16 c c8 d dis |e4 r8 r4 r8
    	    	    g,2.~\startTrillSpan |g~ |g~ 
    	    	    \afterGrace g\stopTrillSpan {fis16 [(g)]}
    	    	    f'4 a,8 a e' d |c4 g8 g d' c |b a g f' e d }
    	    	     
    	    	    \alternative {
    	    	    {c4 r8 r4 r8}
    	    	    {c4 c16 c c4 r8 \bar "||"}
    	    	    }
    	    	    
    	  \key f \major
    	  \mark \markup {\bold TRIO}
    	  \grace {c16 (d e)} f4->\ff r8 f4-> r8 
    	  f4-> r8 \mark \markup { \musicglyph #"scripts.coda" } r4 r8
    	  R2.*7 
    	  r4\mf \mark \markup { \musicglyph #"scripts.coda" } r8
    	  <c a>4._\markup {1'a Kl }^\markup {Solo Kl}
	  
    	  \repeat volta 2 {
    	  	  
    	  << {
          c2.~ |c4 b8 (c4 d8) |c2. ( |a) |d ( |e4. d) |c2.~ |c |bes ( |c4. bes)
    	  a2.\< ( |c) |b4.\f f' |e d |c4 r8 r4 r8 |r4 r8 c4.-> |c2.~\mf 
    	  c4 b8 (c4 d8) |c2. ( |a) |d ( |e4. d) |c2.~ |c }
    	  \\
    	     {
    	  a2.~ |a4 gis8 (a4 bes8) |a2. ( |f) |bes ( |c4. bes) |a2.~ |a |g ( 
    	  a4. g) |f2. ( |a) |g4. a |g f |e4 r8 r4 r8 |r4 r8 c'4. |a2.~ 
    	     a4 gis8 (a4 bes8) |a2. ( |f) |bes ( |c4. bes) |a2.~ |a }
    	  >>
    	     	  
    	  f' ( |e4. d) |c2. ( | f,4. bes) |a2. |g | }

    	  \alternative {
    	  	  {f2.~ |f4 r8 <c' a>4.->}
    	  	  {f,2.~ |f4 r8 r4 \bar "|."}
    	  }   	  
    }%end relative
    \header {
    	    piece = "Our Director"
    	    composer = "F. E. Bigelow"
    	}
  }%end score
