\version "2.18.0"
% When ready to include in collection: 1. Comment paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

OneBR = R1^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Under den bla gula fanan    	
	\relative c''' { 
		\clef treble
		\time 2/2 \key ees \major
		\compressFullBarRests
		\set Score.markFormatter = #format-mark-box-letters
		\override DynamicLineSpanner.staff-padding = #2

	g4-^\ff r8 ees8 ees2-> |ees4-^ r8 c8 c2-> |bes4 ees ees d |bes g r g 
	
	\repeat volta 2 {
	g^^\f r8 ees' ees2~->   |ees4  g,8 (aes bes c d c) |bes4-^ r8 g' g2~->
	g4 g,8 (aes a bes c cis) |d4-^\fz r8 aes'!-. aes4-. r8 aes-.
	aes4-. aes-. aes2-- |g4^^\fz r8 g-. g4-. r8 g-. |g4-. g-. g2--
	g,4^^\f r8 ees' ees2~-> |ees4 g,8 (aes bes c d c) |bes4-^ r8 g' g2~->
	g4 g,8 (a bes c d ees) |d4 r8 d d4 bes |bes r8 ees ees4 bes
	bes d8 bes a4 a |d r r2
	}
	\repeat volta 2 {
	r4 bes8\ff (b c cis d ees |e f fis g aes4) r 
	r bes8 (a aes g ges f |e ees d des c4) r
	r c8 (cis d ees e f |fis g aes a bes4) r
	r c8 (b bes a aes g |ges f e ees d4) r
	r bes'8 (g f ees d c |bes4) r r2 | r4 ces'8 (aes ges f ees des |b4) r r2
	bes1~\startTrillSpan |bes4\stopTrillSpan r aes'2 |g1~ |g4 r r2
	}	
	\time 2/2 \key aes \major
	c,4\f^\markup {\bold "Trio"} \tuplet 3/2 {c8 (bes aes)} e'2
	c4\f \tuplet 3/2 {c8 (bes aes)} e'2 |c4 r r2 |\OneBR |c,1\p (|aes2. c4)
	ees1~ |ees2 f4 (g) |aes1~ |aes4 g (aes4. g8) |aes1 (|g) |des |bes2. des4
	f1~ |f2 g4 aes |c1~ |c4 bes (g4. ees8) |f1 (|ees) |c (|aes2. c4) |ees1~
	ees2 f4 (g) |aes1~ |aes4 g16 (aes bes c) des4. (c8) |bes1 (|e,) |f~
	f4 g (bes4. aes8) |aes1~ |aes4 c, (g'4. f8) |ees2. d4 |des!2 bes 
	aes1~ |aes4 r r2 \bar "|."
	
	\OneBR
	r8 c'\mf (des ees f g aes bes |c4) 
	\repeat unfold 3 {\acciaccatura b,8 c4} |des8 (c) c-. c-. c4 r
	c8 (aes) aes (c) c2~\startTrillSpan 
	\grace {b16[c]} c4\stopTrillSpan r r2 |\OneBR
	r8 ees, (f g aes bes c des) |ees (des) c-. bes-. des (c) bes-. aes-.
	g (ees) ees-. ees-. ees4 r |g'8 (f) ees-. des-. ees (des) c-. bes-.
	des (c) bes-. aes-. g4 r |r8 c'8 (bes aes g f ees des) 
	ees (des c bes aes g f ees) c'4 r r2 |R1*2
	r8 c\mf (des ees f g aes bes |c4) 
	\repeat unfold 3 {\acciaccatura b,8 c4} |c1~\startTrillSpan
	\grace {b16 [c]} c8\stopTrillSpan (aes bes c des ees f g) |aes4 r r2
	des,2:8-. des4 r |bes2:8-. bes4 r 
	des8 (aes) aes (des) des8 (aes) aes (des) |des4 r r2 
	c8 (aes) aes (c) c8 (aes) aes (c) |c4 r r2 
	r8 ees, (f g aes bes c des) 
	ees des bes aes 
	<<
		{ g2^\startTrillSpan_( }
		{ s4. \grace { fis16[ g])\stopTrillSpan } }
    	>>
  	aes1~ |aes4_\markup {\concat{"V"\char#228"nd!........."}} r c r\bar "|." 
	
	R1*4 
%	\pageBreak
	|c8. c16 c4 \tuplet 3/2 {c c c} |des1 
	des8. des16 des4 \tuplet 3/2 {des des des} |c1
	aes8. des16 des4 \tuplet 3/2 {des des des} |c2 aes' |g4 r r2 |R1*2
	r4 ees,8 (f g aes bes c) |des2
	<<
		{ bes2^\startTrillSpan_( }
		{ s4. \grace { a16[ bes])\stopTrillSpan } }
    	>>
    	ees4 g,^\markup {\bold "Rit........"} aes g \bar "|."
    	
    	aes1\ff ^\markup {\bold "A. Tempo"} |ees2. (aes4) |c1~ |c2 c |c1~
    	c4 c c4. c8 |c1 |des |bes |g2. (bes4) |des1~ |des2 des |ees1~ 
    	ees4 des des4. des8 |c1 |c |aes |ees2. (aes4) |c1~ |c2 c |c1~ 
    	c4 g16 (aes bes c) des4. c8 |bes1 |des2 (c) |des1~ |des4 des d4. d8
    	c1~ |c4 c c4. c8 |g2. bes4 |bes2 g |aes1~ |aes4 r c-> r
	\bar "|."
    }%end relative
    
    \header {
    	    piece = 
    \markup {\concat {"Under den bl"\char#229" gula fanan"}}
    	    composer = "W. Vidqvist"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
