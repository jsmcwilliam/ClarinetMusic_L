\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \time 2/2 \key f \major \clef treble
    	    \override DynamicLineSpanner.staff-padding = #2
    	    \compressFullBarRests
    	    R1*2 |c'4->\ff r r2 |r a\mf 
   	    \repeat volta 2 {
    	    g2 f |e d |c4 r8 a' c2~ |c d2 |c4 r8 g c2~ |c4 b,8 (c\< d e f g\!)
    	    a2.\> f4 |c2\!\breathe a' |g f |e d |e4 r8 c g'2~ 
    	    g4 g,8 a (b\< c d e\!) |g2.\f \tuplet 3/2 {f8 (g f} |e4) f-. a4. b8 
    	    c1~ 
    	    }
  	    \alternative {
    	    	    {c4 r a2\mf}
    	    	    {c4 r r2}
 	    }
 	    \repeat volta 2 {
 	    \repeat percent 2 {r4 c\f r c} |r c8 c c4 c |c r r2
 	    \repeat percent 2 {r4 d r d} |r d8 d d4 d 
 	    d r bes8\f (a bes a |g4) r f-. r |e-. r d-. r |c2. (f4) 
 	    c2 a'8 (bes c d) |c2. (bes4) |bes2 bes8 (c d e) |f2. (c4) 
 	    a2 g4.\p a8 |bes4 r c\cresc r 
	    d r e, r |f2~ (f8 e f g)\! |aes2.->\ff r4 |r b8-> b-> b4-> r
	    r c8-> c-> c4-> e8 d |c4 cis-> d-> e->  
 	    }
 	    \alternative {
 	    	    {f-> r r2}
 	    	    {f4 f,8 f f4 r}
 	    }
    \break
    \key bes \major
    \time 2/2
    \acciaccatura {f16 [g a]} bes4\ff^\markup {\bold TRIO} r bes r |bes r r2
    \repeat volta 2 {
    	    \set countPercentRepeats = ##t
    	    \repeat percent 15 {f4\f r f r} |f r f2
    	    d'1~ |d4 a bes4. g8
    	    \set countPercentRepeats = ##f
    	    f1~ |f4 a (bes d) |f,2 bes |f fis | a1 ( |g2) g }
    	    \alternative {
    	    	    {c1~ |c4 bes a4. g8 |f1~ |f4 d (bes g')
    	    	     f2-> ees4.-> (f16 ees)|d2-> c4.-> d16 (c) |bes1~ |bes4 r r2}
    	    	    {c'1~ |c4\> b c4. cis8\!  |d1~\f |d4 bes (d, g)
    	    	     f2.. e16-. f-. |g4.->\< ( fis16 g) a4.-> ( g16 a)\!
    	    	     bes1~\fff |bes4-> r r2}
    	    }
    \bar "|."

    }%end relative
    \header {
    	    piece = "Svensk Polismarsch"
    	    composer = \markup {\concat {"P. Grundstr" \char#246 "m"}}
    	}
  }%end score
