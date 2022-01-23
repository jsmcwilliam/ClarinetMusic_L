\version "2.22.1"

% When ready to include in collection: 1. Comment out top section with \Include file(s)
%                                      2. \midi section if present
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Florentiner Marsch (Grands marcia italiano)    
    \relative c'' { 
    	    \key f \major \time 2/4 
    	    \tempo 4 = 100
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    \partial 8 r8
    \mark \markup {\bold  "Tempo di Marcia"}
    R2*6  | 
    \grace{\stemUp c16 [( d e ) ]  } \stemNeutral f8\ff r 
    \grace{\stemUp a,16 [( bes ) ]  } \stemNeutral c8 r |
    \grace{\stemUp c,16 [( d e ) ]  } \stemNeutral f8 r r4\fermata |
    R2*3 |
    r4 r8 a'16\f (bes | c8) f,16 (g a8) d,16 (e | f8) d-. d4-. |
    c16\mf\< (cis d cis c\> cis d e | f8\!) r r4 |
    
    \repeat volta 2 {
    	a16-.\mf a-. a-. a-.
    	\repeat unfold 4 {a16-.} | a8-.\< [f-. g-. gis-.] | 
    	a-.\> [bes-. a-. f-.\!] | 
    	\repeat unfold 3 {a4 (a16\< bes c d\!)} | c8 c16 (bes) g8 fis |
    	a (g) r4 |
    	\repeat unfold 8 {bes16-.} | bes8-.\< [a-. bes-. d-.] |
    	bes-.\> [fis-. a-. g-.\!] | g4 bes16\< (c d e\!) |
    	\repeat unfold 2 {bes4 bes16\< (c d e\!)} | e8 d16 (c) bes8 gis | a4 r |
    	
    	\repeat unfold 8 {a16-.} | a8-.\< [f-. g-. gis-.] | 
    	a-.\> [bes-. a-. f-.\!] | 
    	\repeat unfold 3 {a4 (a16\< bes c d\!)} | c8 c,16 (b) c8 d | 
    	e\< (c\!) r4 |
    	
    	g'16-.\<\f g-. g-. g-. \repeat unfold 4 {a16-.} |
    	\repeat unfold 4 {b16-.} \repeat unfold 4 {c16-.} | b8\! [a g e] |
    	\repeat unfold 3 {g4 g16\< (a b c\!)} | d8 d16 d d8 e  |
    	
    	 
    } %end repeat
    
    \alternative {
    	{c8 r r4}
    	{c8 r r4\bar "||"}
    } %end alternatives
    
 	r8 a16\ff a a8 a | r a r a | r8 a16 a a8 a | r a r c | r d16 d d8 d |
 	r d r d | r cis16 cis cis8 cis | r cis r cis | r cis16 cis cis8 cis | 
 	r cis r cis |r d16 d d8 d | r d r d | r cis r cis | r cis r cis |
 	r cis16\< cis cis8 cis | r c! r c\! | r8 a16 a a8 a | r a r a | 
 	r8 a16 a a8 a | r a r c | r d16 d d8 d | r d r d | r e16 e e8 e | r e r e |
 	r b!16 b b8 b | r b! r b | r cis16 cis cis8 cis | r cis r cis | 
 	r b16 b b8 b | r b r b | a r r4 | R2^\markup{\normalsize\number 1} \bar "||"

 	a16-.\mf a-. a-. a-.
    \repeat unfold 4 {a16-.} | a8-.\< [f-. g-. gis-.] | 
    a-.\> [bes-. a-. f-.\!] | 
    \repeat unfold 3 {a4 (a16\< bes c d\!)} | c8 c16 (bes) g8 fis |
    a (g) r4 |
    \repeat unfold 8 {bes16-.} | bes8-.\< [a-. bes-. d-.] |
    bes-.\> [fis-. a-. g-.\!] | g4 bes16\< (c d e\!) |
    \repeat unfold 2 {bes4 bes16\< (c d e\!)} | e8 d16 (c) bes8 gis | a4 r |
    
    \repeat unfold 8 {a16-.} | a8-.\< [f-. g-. gis-.] | 
    a-.\> [bes-. a-. f-.\!] | 
    \repeat unfold 3 {a4 (a16\< bes c d\!)} | g,8 g16 (f) e8 f | a\< (f\!) r4 |
    c'16-.\ff c-. c-. c-. \repeat unfold 4 {c-.} | c8 [bes a c] | bes [a g d] |
    g4 f16 (e g f) | \repeat unfold 3 {c'16-.} r \repeat unfold 3 {d16-.} r |
    c16-.\< \repeat unfold 2 {c-.} r \repeat unfold 3 {a-.} r |
    \repeat unfold 7 {c-.} c-.\! | a8-.\ff a16-. a16-. a8-. r \bar "||" 
    
    \time 2/4 \key bes \major 
    \mark \markup {\bold  "TRIO"}
    d,,8\f [r16 d] d8 ees-^ | d-^ [r16 d] d8 bes-^ | d8-^ [r16 d] d8 g-^ |
    f4.-^ bes'8\p | f8. g16 f8 ees | d8. ees16 f8 d | bes d f, c' | 
    bes^\markup {meno mosso} r r4 | R2*2 \pageBreak
    
    \repeat volta 2 {
    \bar ".|:"
    \acciaccatura f8 d'2\pp^\markup {con eleganza} ( | c4 bes) | bes2~ | 
    	bes4\< a | c2\> ( | bes4 g\!) | g2~ | g4 f | e2\< ( | a4\> g\!) | g2 ( | 
    	c,4) ees!8\< (f | g2\! | f4) ees8\> (d | f2~\! | f4) f | d'2 ( | 
    	c4 bes) | bes2~ | bes4 a | c2 ( | bes4 g) | g2~ | g4 f | bes2 ( | 
    	e,4) g8 (a) | bes2 ( | f4) d8 (g) | f4 (d~ | d f)   	
    } %end repeat
    
    \alternative {
    	{bes,2~ | bes8 r f'4\pp}
    	{bes,2~ | bes8^\markup {Solo} f'16\pp g\< a bes c cis\!  }
    } %end alternatives

	\repeat volta 2 {
		\repeat unfold 4 {\acciaccatura cis8 d} | d16 (ees f ees) d8 ees | f4 d |
		f f16\<(g a bes\!) | a8-. [r16 g-.] f8-. ees-. | 
		d16-. ees-. f8~ f16 ees d f | ees8 [d c b] | 
		c-. f,16-.f-. f-. f-. f'-. ees-. |
		\repeat unfold 4 {\acciaccatura cis8 d} | d16 (ees f ees) d8 ees | f4 d |
		f f16 (e f g) | a8 [a a a] |
		
	} %end repeat
	
	\alternative {
		{a16 (g f g) a8 bes | a\> [r16 g] f8 e\! | d [f\< (e\> f\!)]}
		{a16 (g f g) a8 bes | c8-.\< c16-. c-. c-. c-. c-. c-.\! \bar "||" }
	} %end alternative

		f8-. c16-^\f c-^ f,8-^ ges16-.\ff ges-. \bar "||" | 	
		f8-.^\markup {Risoluto} c16-. c-. ees8-. f16-. f-. | 
		des8-. a'16-. a-. bes8-. des!16-. des-. |c8-. a16-. a-. bes8-. c-. |
		ges8. (e16 f8) ges!16-. ges-. |f8-. c16-. c-. ees!8-. f16-. f-. | 
		des8-. a16-. a-. bes8 des16-. des-. | c8-. a16-. a-. bes8-. ges-. |
		f8. (e16 f8) ges16-. ges-. | c8-^ ges16 ges f8 e | 
		f8. (e16 f8) ges16-. ges-. | c8-^ ges16 ges f8 e |
		f8. (e16 f8) ges16-. ges-. | f8._\markup {cresc.} (e16 f8) ges8-. |
		f8. (e16 f8) ges8-. |
		f'2~\startTrillSpan\< | f2\stopTrillSpan\!^\markup {Rit...} \bar "||"|

		d'2->\fff_\markup {con entusiasmo} | c4-> bes-> | bes2->~ |bes4 a-> |
		c2-> | bes4-> g-> | g2->~ | g4 c,-> | e2 ( | a4) g | g2 ( | c,4) ees8 (f)|
		g2 ( | f4) ees8 (d) | f2~ | f4 f | d'2->| c4-> bes-> | bes2->~ |
		bes4 a-> | c2-> | bes4-> g-> | g2->~ | g4 f-> | bes2 ( | e,4) g8 (bes) |
		d2 ( | bes4) d,8 (ees) | f4\< ges~ | ges f\! | bes2~\< |
		bes4 bes8-^ bes16-^\! r\fermata \bar "|."
		
    }%end relative
    
    \header {
    	    piece = "Florentiner Marsch
    	    "
    	    composer = "J. Fucik, Op. 214"
    	}
    	
%    \midi {}
    
  }%end score

% a \char#229 A \char#197       o
% a \char#228    A \char#196 	e
% o \char#246 O \char#214	oe