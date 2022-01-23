\version "2.22.1"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key bes \major \time 2/2 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \override TupletBracket.direction = #UP
    	    R1*4
    	    <c'-> f,>4\ff f,8 f f4 <d'-> f,> |<c-> f,>4 f,8 f f4 <d'-> f,> 
    	    <c-> f,> f,8 f f4 f
    	    
    	   << {f2\> (bes4.) bes8\f}
    	   \\
    	      {f2 (f4.) f8} 
    	   >>
 
    \repeat volta 2 {
   	    <a~ f~>1 |<a f>4. g8 f4. ees8 |d1~ |d2 d'4. d8 
    	    
    	    << {d1~ d4. c8 bes4. a8 |g1 ( |g2)  }
    	    \\
    	       {a1~ |a4. fis8 d4. d8 |d1 | g2} >>
    	       
    	   g4.-> g8 |g2-> bes->
    	   << {ees2->\< g-> |f1->\ff~ |f4 }
    	   \\
    	      {ees2 g,2 |f1~ |f4 }
    	   >>
    	      	      
    	  r4 r2 |r4 a8 a a4 a | r a r a |r bes8 bes bes4 bes |r bes\f g4.-> g8
    	  g2->\< bes->\! |ees-> <g-> g,> |bes,2.\ff (a8 g |f4) r8 f f4.\mf\< f8 }
    	  
    	  \alternative {
    	  {f4 f8 f\! f4 <d'-> f,> |<c-> f,> f,8 f f4 <d'-> f,> 
    	  <c-> f,> f,8 f f4 f |f2\> (bes4. bes8\!)}
    	  {f4 g a bes |c r8 b (c4.->d8 |ees4) r d r |ees e,8 (f g a bes c}
    	  }

    	  \repeat volta 2 {
    	  d4\ff) r a-> c-> |bes-> r d,4. (a'8) |g1~ |g4 f8\mf (g a bes c cis 
    	  d2->)\< d |d d |\times 2/3 {d4\ff c b} c2~ |c4 r 
    	  << {bes2->~ |bes4 r a2->~ |a4. r8 g4. ( bes8) |a1~ |a4 r bes2->~ 
    	      bes4 r a2->~ |a4. }
    	  \\
    	     {ees2~\mf |ees4 r ees2~ |ees4. r8 c4. (ees8) |ees1~ |ees4 r ees2~
    	      ees4 r ees2~ |ees4. }
    	  >>

	  r8 f4. (a8) |g1~ |g4 e8\< (f g a bes c |d4\ff) r a-> c-> 
	  bes-> r d,4. (a'8) |g1~ |g4 f8 (g a bes c cis) 
	  << {d2-> c-> |bes-> a->}
	  \\
	     {\set fontSize = #-4 
	     f2_\markup {III} ees\< |d c\!
	     \unset fontSize}
	  >>
 
	  \times 2/3 {a'4\ff g fis} g2~ |g4 r g2\mf\< ( |c1~) |c2\! g\< ( 
	  bes1~) |bes2\! f\< ( |a4-> g\! f2~ |f) <d'-> a>2 ( |bes1~) }
%{	  << {d2 ( |bes1~)}
	  \\
	     {a2 ( |bes1~)}
	  >> } %}
	  \alternative {
	  	  {bes4 e,8\< (f g a bes c\!)}
	  	  { bes4\repeatTie r r2 \bar "||"}
	  }

	  \key ees \major \time 2/2
	  \mark \markup {TRIO}
	  ees4\f r ees r |ees r r2
	  
	  \repeat volta 2 {
	  	  bes4\mf r \tuplet 3/2 {bes g bes} |bes r c r 
	  	  bes r \times 2/3 {bes g bes} |\times 2/3 {ees bes ees} ees r
	  	  bes4 r \times 2/3 {bes g bes} |bes r bes r 
	  	  bes4 r \times 2/3 {bes g bes} |\times 2/3 {ees bes ees} f2->
	  	  ees4 r \times 2/3 {c g c} |ees r ees r |d r \times 2/3 {d b d}
	  	  b r \times 2/3 {d b! d} |c r \times 2/3 {c g c} |ees r g, r 
	  	  b\f g8 g g4 g8 g |bes!4\< bes8 bes \times 2/3 {bes4 c d} 
	  	  ees1~\ff 
	  	  ees4 r8 d-. ees4-> r8 d-. |ees1 |bes2-> \times 2/3 {bes4 c d}
	  	  ees1-> |d2->~ \times 2/3 {d4 c d} |ees1->~ |ees4 r c2 |f1->~ 
	  f4 r8 ees d4-> r8 c |bes4 r <ees-> ces>2 |bes-> aes-> |g1-> |bes-> }
	  \alternative {
	  	  {ees4 r ees r |ees r r2}
	  	  {ees1~ |ees4 r r2 \bar "|."}
	  }


    }%end relative
    \header {
    	    piece = "Kungl. Vaxholms Kustartilleriregementets Marsch"
    	    composer = "Sam Rydberg"
    	}
  }%end score
