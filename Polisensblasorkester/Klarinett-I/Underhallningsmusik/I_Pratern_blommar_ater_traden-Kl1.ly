\version "2.22.1"

% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. I Pratern blommar \char #229ter tr\char#228den   
    \relative c'' {
    	    \clef treble \key f \major \time 3/4
    	    \mark \markup {\bold\box {Moderato}}
    	    r2 c,4\f |f,8 (a c f a c |f c a f c a) |g (bes c e g bes | e2) r4
    	    aes2\mf (des4) |des2. |g,2\>^\markup {Rit......} (e4 
    	    g2.)\fermata
    	    \repeat volta 2 {
    	    	    \time 2/4
    	    	    c8.\!\p^\markup {\bold {Allegretto}} bes16 bes8 a |c8 c c4
    	    	    d8. c16 c8 bes\< |d2 |e,8.\f d16 e8. d16 |bes8 bes bes4
    	    	    e8. d16 e8. d16\>^\markup {Rit......} |a'2 
    	    	    c8.\p bes16 bes8 a |c8 c c4
    	    	    e8. d16 d8 c |e2\< |e8\mf c e c | e c g4 
    	    	    a8\< a b (b |c4.) r8 |d16\f^\markup {4 slag......} (e) d-. e-. d8-. e-. 
    	    	    c4. d,16 (e\< |f8 ees\> des aes')\! |\bar "||"
    	    	    \time 3/4
    	    	    \mark \markup {\bold\box {Lento}}
    	    	    c2.~^\markup {Rit......} 
    	    	    c2 c,,4\p^\markup {A Tempo} ( |a'4. bes8 c4) 
    	    	    c4. \(bes8 a4
    	    	    c2. ( |g2)\) c,4 ( |bes'4. c8 d4) |d4. \(c8 bes4 |d2.~ 
    	    	    d2\) e4\mf \( |f e d |c bes a |c2. ( |g2)\) bes4\f \( 
    	    	    d bes d |e^\markup {Rit.......} c e |a,2.~\> |a2\) c4\mf\!
    	    	    (a'4.^\markup {A Tempo} bes8 c4) |c4. \(bes8 a4 
    	    	    c2. 
    	    	    (g2)\) c,4 ( |bes'4. c8 d4) |d4. \(c8 bes4  |d2.~( |d2)\) e4
    	    	    (f2 e4
    	    	    d2 a4 |c2.  |bes4) r d\f ( |f^\markup {Rit......} d bes
    	    	    a) a-- c\fermata }
    	    	    \alternative {
    	    	    	    {f,8 (a, c f a c |f4) r r}
    	    	    	    {c2. |g4--^\markup {Rit.....} g-- f-- 
    	    	    	    a2.\fermata}
    	    	    }
    	    	    \bar "|."
    }%end relative
    \header {
    	    piece = 
    \markup {\concat {"I Pratern blommar "\char#229"ter tr"\char#228"den"}}
    	    composer = "Robert Stoltz"
    	}
  }%end score
