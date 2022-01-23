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
    	    \key ees \major \time 4/4 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    
    	    ees'4-.\ff r d4.-> c8 |bes4 g-. ees-. g-. |
    	    bes-. bes8 (c bes4) bes8 (c\> |bes1->)
    	    
    	    \repeat volta 2 {
    	    	bes4->\p (g8) r r2 |r4 g\< (aes bes) |<bes-. g>\! r <bes-. g> r
    	    	<ees g,>1-> |bes4-> (g8) r r2 |r4 g (aes g) |bes-. r bes-. r 
    	    	aes1-> |aes4-> (f8) r r2 |r4 f (g aes) |bes-> (g8) r r2
    	    	r4 g (a g) |f-> (bes) r g-. |a-> (f) r c'-. |bes1~ |bes4 r r2
    	    	bes4-> (g8) r r2 |r4 g\< (aes bes) |bes-.\! r bes-. r
    	    	ees1-> |bes4-> (g8) r r2 |r4 g (aes g) |bes-. r bes-. r 
    	    	aes1-> |aes4-> (f8) r r2 |r4 c' (d c) |ees-> (bes) r2 
    	    	r4 bes (aes g) |f-> (c') r ees,-. |d-> (bes') r bes |ees,1~ 
    	    	ees4 r r2
    	    	}
    	    \repeat volta 2 {
    	    	c'4-.\ff c8 (d ees4) ees-. |ees1~-> |ees4 c8 (d) ees (d c b)
    	    	c1 |r4 c-. r c-. |r c-. r c-. |r c8 c c4 c |c r ees2->
    	    	ees4 c8 (b c2~) |c4 r c2-> |c4-. r8 c b (c b c |c4) r r2
    	    	c4-. c8 (d) ees2-> |b4 c8 (b) b2->
    	    }
    	    \alternative {
    	    	    {r4 c8 (d ees4) g,-. |c-. r r2 }
    	    	    {c4-. r r2\> |bes1-> \bar "||" }
    	    }
    	    
    	    	bes4->\p (g8) r r2 |r4 g\< (aes bes) |<bes-. g>\! r <bes-. g> r
    	    	ees1-> |bes4-> (g8) r r2 |r4 g (aes g) |bes-. r bes-. r 
    	    	aes1-> |aes4-> (f8) r r2 |r4 f (g aes) |bes-> (g8) r r2
    	    	r4 g (a g) |f-> (bes) r g-. |a-> (f) r c'-. |bes1~ |bes4 r r2
    	    	bes4-> (g8) r r2 |r4 g\< (aes bes) |bes-.\! r bes-. r
    	    	ees1-> |bes4-> (g8) r r2 |r4 g (aes g) |bes-. r bes-. r 
    	    	aes1-> |aes4-> (f8) r r2 |r4 c' (d c) |ees-> (bes) r2 
    	    	r4 bes (aes g) |f-> (c') r ees,-. |d-> (bes') r bes |ees,1~ 
    	    	ees4 r c'8-.\pp c-. c-. c-. 
%\pageBreak
    	    	
    	    	\repeat volta 2 {
    	    	\key aes \major \time 4/4
    	    	\mark \markup {\bold {TRIO}}
    	    	c4^\markup {\italic {sempre staccato}} r
    	    	c8-. c-. c-. c-. |c4 r ees r |f-> ees ees2~-> |ees4 r c8 c c c
    	    	b4 r c8-. c-. c-. c-. |aes4 r aes r |aes-> (g) g2~->
    	    	g4 r bes8 a bes c |des4 r c r |ees\> r des r\! 
    	    	a-> (bes) bes2~-> |bes4 r g8 g g g |bes4 r aes r |c r bes r
    	    	bes-> (aes)aes2~-> |aes4 r c8-. c-. c-. c-. 
    	    	c4 r c8-. c-. c-. c-. |c4 r ees r |f (ees) ees2~-> 
    	    	ees4 r ees8 ees ees ees |c4 r c8 c c c |aes4 r a r 
    	    	bes-> (f) f2~-> |f4 r f8\cresc e f g |f4 r f8 e f g |aes4 r b r
    	    	c (f) ees2~ |ees4 r c8\f ces bes aes |g4 r g8 aes a bes
    	    	ees4 r g, r |aes1~ 
    	    	}
    	    	\alternative {
    	    		{aes4  r c8\pp c c c }
    	    		{aes4 r r2 \bar "|." }
    	    	}
  
    }%end relative
    
    \header {
    	    piece = "Colonel Bogey"
    	    composer = "Kenneth J. Alford"
    	}
    	
  }%end score
