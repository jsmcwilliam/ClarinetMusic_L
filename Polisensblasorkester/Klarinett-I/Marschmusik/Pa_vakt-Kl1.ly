\version "2.22.1"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Pa Vakt    
    \relative c'' { 
    	    \key bes \major \time 2/2 \clef treble
    	    \override DynamicLineSpanner.staff-padding = #2
    	    \compressEmptyMeasures
    	    \grace {f16 (g a)} <bes f>4->\ff r r2 |r4 <bes f>8-> <bes f>->
    	    <bes f>2->
    	    \grace {bes16 (c cis)} d4-> r r2 |r4 <d bes>8-> <d bes>-> <d bes>2->
    	    \grace {d16 (ees e)} <f f,>4-> r r2 |r4 r8 <f f,>8 (<ees ees,>4.
    	        <d d,>8 |<c c,>4) r r2
    	    	r <d f,>4.\f <d f,>8
    	    
    	    \repeat volta 2 {
    	    <d f,>4 r f,4. f8 |f4 r c'4. (bes8) |a1~ |a4 r ees'4. d8 
    	    c4.(d8 c4. bes8)
    	    a4-. r g-. r |f1~ |f4 r <d' f,>4. <d f,>8  |<d f,>4 r f,4. f8 
    	    f4 r <d' f,>4. (<cis f,>8) |<c f,>1~ |<c f,>4 r <a c,>4. <bes d,>8
    	    <c f,>2\< <cis e,> |<d d,> <e c> |<f c>1~\ff }
    	    \alternative {
    	    	    {<f c>4 r <d f,>4.\f <d f,>8}
    	    	    {<f c>4\repeatTie r r2}
    	    }
    	    \repeat volta 2 {
    	    r4 <d f,> r <c f,> |r <c ees,> r <ees f,> |r <d f,>8 <d f,> <d f,>4
    	    <d f,> |<d f,> <d f,> <d ees,>2 |r4 <a c,> r <bes d,> 
    	    r <bes d,> r <bes d,> |r <bes d,>8 <bes d,> <bes d,>4 <bes d,> |
    	    <bes d,> g8\mf (fis g4-.) g8 (fis
    	    g4-.)\< g8 (fis g4-.) g8 (fis |g4-.) g8 (fis g4-.) a-. 
    	    <bes f>2\f \tuplet 3/2 {f4 d g} |f2. (fis4--) |g2 <f c>4. <e c>8
    	    fes2. (<fis c>4--) |<g bes,>2 f4. e8 |f2. (fis4 |g) g8\mf 
    	    (fis g4-.)\< g8 (fis |g4-.) g8 (fis g4-.) a-. 
    	    bes-. r <bes-> ees,>2\f |<c g>-> <cis bes>-> |<cis bes>4-. r r2
    	    r <d a>4.-> (<c a>8) |<bes f>1~ }
	    \alternative {
	    	    {<bes f>4 r r2}
	    	    {<bes f>4\repeatTie r r bes8\ff bes}
	    }
	    \bar "||"
	    \key ees \major \time 2/2
	    \mark \markup {\bold "TRIO"}
	    bes2-> d4-. c-. bes4.->\trill a16 (bes) 
	    d4.->\trill c16 (d) |ees4 r r2 |
            \OneBR

	    \repeat volta 2 {
	    	    r4
	    << {a,8 (fis g4) bes-. |c-. r bes-. ees,-. |g-. bes8 (a bes4) bes8 (a
	        bes4)}
	    \\
	       {ees,8 fis ees4 ees |ees r ees g, |bes bes8 a bes4 bes8 a |bes4 }
	    >>

	    r4 r2 |r4 <g' bes,>8 (<bes ees,> <c ees,>4) <d g,> |<bes ees,> r r2 
	    r4 c,8 (d e f fis g |aes4) r r2 |r4 f!8 (g a4) <c f,> 
	    <d f,> r <c f,> <f, aes,>
	    <aes aes,> <d d,>8 (<cis cis,> <d d,>4) <d d,>8 (<cis cis,> 
	    <d d,>4) r r2 |r4 a,8 bes <c' c,>4 c, |bes' bes, bes' bes, |bes' r r2
	    r2 bes2\f ( |a bes\< |c bes)\! |<ees g,>1\>~ <ees g,>2\! c\< ( |b c\!
 	    des c) |<f aes,>1~ |<f aes,>4 r ees,4. ees8 |ees2->\<~ (ees4. d16 ees)
	    f4.-> (e16 f) fis4.-> (eis16 fis) |g4\ff r <fis-. a,>2 
	    <g g,>4\< \tuplet 3/2 {bes8 (c bes} a4 bes\! |aes!) r g r 
	    aes\< \tuplet 3/2 {bes8 (c bes} a4 bes\! |g-.) r <fis a,> r 
	    <g g,> r ees4. ees8 |ees2->~ (ees4. d16 ees) |f2->~ (f4. ees16 f)
	    g4.-> (f16 g) aes4.-> (g16 aes) |bes2-> r |r bes4.-> aes8-> 
	    g2-> <f' f,>-> |<ees ees,>1->~ |<ees ees,>4 r r2
	    }
   	   
    }%end relative
    \header { 
    	    piece = \markup {\concat {"P"\char#229" Vakt"}}
    	    composer = "Sam Rydberg"
    	}
  }%end score
