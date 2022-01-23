\version "2.22.1"

% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%}
%...to here

  \score {

    % Svenska Polisens Marscher: 1. Fanvakten    
    \relative c'' { 
    	\clef treble \key bes \major \time 2/2
    	\compressEmptyMeasures
    	
    	g'4\ff r bes2->~ |bes4 r r2 |r a4-> r |bes-> r f4.--\p bes8
        \repeat volta 2 {
    	    d4 r d2~-> |d4 r bes4.-- d8 |f4 r f2~-> |f4 r f4.-- g8
    	    f4 r c2~-> |\tuplet 3/2 {c4\< c, d} \tuplet 3/2 { ees f g\!} 
    	    f4 r d'4.--\f c8 |bes4 r f4.--\p bes8 |d4 r d2~-> |d4 r bes4.-- d8
    	    f4 r f2~-> |f4 r f,4.--\f g8 |a4. (g8 f4. g8 |a4) bes c d |bes r a r}
    	    \alternative {
    	    	    {bes4 r f4.--\p bes8}
    	    	    {bes4\ff bes4 a4. bes8}
    	    }
    	    \repeat volta 2 {
    	    	  g1 |r4 bes a4. bes8 |f1 |r2 f8\p (g) a bes |c4 r b r
    	    	  c r cis r |d1~\< |d4\ff bes4 a4. bes8 |g1
    	    	  r4 bes a4. bes8 |f1 |r4 d\mf (bes g') |f\< f8 g a4 a8 bes
    	    	  c4 c8 d ees4 f |bes,1~\ff }
    	    	  \alternative {
    	    	  	  {bes4 bes a4. bes8}
    	    	  	  {bes4 \repeatTie r r2}
    	    	  }
    	    \bar "||"

    	    \key ees \major \time 2/2
%    	    \phrasingSlurDown
	    \mark \markup {\bold {Trio}}
    	    \acciaccatura { bes16[c d] } ees4\ff r r2
    	    \OneBR
    	    \repeat volta 2 {
    	    	 r4 bes,8\p (c d4) ees8 (f |g4) r r2 |r4 ees8 (f) g4 g8 (aes) 
    	    	 bes4 r r2 |R1*2 |r4 f8\> (g aes4) bes8 (aes |f4\!) r r2 
    	    	 r4 bes,8 (c d4) d8 (ees |f4) r r2 |r4 d8 (ees f4) f8 (g
    	    	 aes4) r r2 |R1*2 |r4 ees8\> (f g4) f8 (ees |bes4\!) r4 bes2\f (
    	    	 g'1~ |g4 f ees f |ees1~ |ees4) d (c d) |c4. (bes8 c4. d8
    	    	 ees4.\<) f8 ( \tuplet 3/2 {g4 aes bes) } |c1~\! 
    	    	 c4\mf \tuplet 3/2 {c8 (d c)} b4\< c |c r aes r |g\! r f r
    	    	 ees\f r8 c' bes2~ |bes4\ff \tuplet 3/2 {bes8 (c bes)} a4 bes
    	    	 \tuplet 3/2 {d4 c bes} aes4 g |f r bes r |ees, r ees' r8 ees
    	    	 }
    	    	 \alternative {
    	    	 	 {ees4 r r2}
    	    	 	 {ees4 r r2}
    	    	 }
    	    \bar "|."
    }%end relative
    \header {
    	    piece = "Fanvakten"
    	    composer = "K. Ekstrand"
    	}
  }%end score
