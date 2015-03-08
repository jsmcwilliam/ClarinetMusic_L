\version "2.18.2"
% When ready to include in collection: 1. Comment paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

OneBR = R1^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Under den bla gula fanan    	
	\relative c'' { 
		\clef treble
		\time 2/2 \key ees \major
		\compressFullBarRests
		\set Score.markFormatter = #format-mark-box-letters
		\override DynamicLineSpanner #'staff-padding = #2

	bes'4-^\ff r8 ees ees2-> |g,4-^ r8 c c2-> |bes4 c g' f |ees r4 r2 
	
	\repeat volta 2 {
	bes,4-^\f r8 g'8 g2~-> |g4  bes,8 (c d ees f fis |g4-^) r8 bes bes2~->
	bes4 ees,8 (f fis g aes a) |bes4-^\fz r8 d-. d4-. r8 c-.
	c4-. bes-. bes2-- |bes4^^\fz r8 d-. d4-. r8 c-. |c4-. bes-. bes2--
	bes,4^^\f r8 g' g2~-> |g4 bes,8 (c d ees f fis) |g4-^ r8 bes bes2~->
	bes4 g8 (a bes c d ees) |d4 r8 f f4 d |ees r8 fis fis4 ees
	d f!8 d c4 d |bes r r2
	}
	\repeat volta 2 {
	r4 bes,8\ff (b c cis d ees |e f fis g aes4) r 
	r bes8 (a aes g ges f |e ees d des c4) r
	r c8 (cis d ees e f |fis g aes a bes4) r
	r c8 (b bes a aes g |ges f e ees d4) r
	r bes'8 (g f ees d c |bes4) r r2 | r4 b'8 (aes fis f ees des |b4) r r2
	bes1~\startTrillSpan |bes4\stopTrillSpan c8 (d! ees f g aes) 
	bes1 \startTrillSpan |\acciaccatura {a16 [bes]} ees4\stopTrillSpan r r2

	}	
	\time 2/2 \key aes \major
	 
	\acciaccatura {ees,16 [f g]} aes4\f^\markup {\bold "Trio"} 
	\times 2/3 {c8 (bes aes)} g2
	\acciaccatura {ees16 [f g]} aes4 
	\times 2/3 {c8 (bes aes)} g2 | \acciaccatura {ees16 [f g]} aes4 r4 r2
	\OneBR \bar "|."
	
	c,,1\p (|aes2. c4)
	ees1~ |ees2 f4 (g) |aes1~ |aes4 g (aes4. g8) |aes1 (|g) |des |bes2. des4
	f1~ |f2 g4 aes |c1~ |c4 bes (g4. ees8) |f1\< (|ees)\> |c\! (|aes2. c4) 
	ees1~
	ees2 f4 (g) |aes1~ |aes4 g16 (aes bes c) des4. (c8) |bes1 (|e,) |f~
	f4 g (bes4. aes8) |aes1~ |aes4 c, (g'4. f8) |ees2. d4 |des!2 bes 
	aes1~ |aes4 r r2 \bar "|."
	
	r8 aes'\p (bes c des ees f g |aes4) 
	\repeat unfold 4 {\acciaccatura g8 aes4}
	\repeat unfold 3 {\acciaccatura d,8 ees4}
	f8 (ees) ees-. ees-. ees4-. r 
	ees8 (c) c (ees) ees2\startTrillSpan
	\acciaccatura {d16 [ees]} aes4\stopTrillSpan r r2 
	
	r8 ees, (f g aes bes c des) |ees1\startTrillSpan
	\acciaccatura {d16 [ees]} g8\stopTrillSpan (f) ees-. des-. f (ees) des-.
	c-.
%	g'8 (f) ees-. des-. ees (des) c-. bes-.
	bes (g) g-. g-. g4 r |bes'8 (aes) g-. f-. g (f) ees-. des-.
	f (ees) ees-. ees-. ees4 r | r8 ees' (des c bes aes g f)
	ees1\startTrillSpan \acciaccatura {d16 [ees]} aes4\stopTrillSpan r r2
	\OneBR
	r8 aes,\mf (bes c des ees f g |aes4) 
	\repeat unfold 4 {\acciaccatura g8 aes4}
	\repeat unfold 3 {\acciaccatura d,8 ees4} |ees1\startTrillSpan	
	\acciaccatura {d16 [ees]} aes8\stopTrillSpan c, (des! ees f g aes bes
	c4) r r2^\markup {div.}
	<<
	{bes2:8-. bes4 r |g2:8-. g4 r 
	aes8 (f) f (aes) aes8 (f) f (aes) |aes4 r r2 }
	\\
	{f2:8-. e4 r |des2:8-. c4 r 
	f8 (des) des (f) f8 (des) des (f) |f4 r r2 }
	>>
	ees8 (c) c (ees) ees8 (c) c (ees) |ees4 r r2 
	r8 g, (aes bes c des ees f)
	ees1\startTrillSpan 
	\acciaccatura {d16 [ees]} aes4\stopTrillSpan 	
	\repeat unfold 3 {\acciaccatura d,8 ees4}
	aes r \acciaccatura {ees16 [f g]} aes4 r
	\bar "|." 
	
	R1*4 
%	\pageBreak
	<<
	{ees'8.^\markup {div.} ees16 ees4 \times 2/3 {ees ees ees} |e1 
	ees!8. ees16 ees4 \times 2/3 {ees ees ees} |e1
	f8. f16 f4 \times 2/3 {f f f} |ees2 b |bes!4 }
	\\
	{ees,8. ees16 ees4 \times 2/3 {ees ees ees} |e1 
	ees!8. ees16 ees4 \times 2/3 {ees ees ees} |e1
	f8. f16 f4 \times 2/3 {f f f} |ees2 b |bes!4 }
	>>
	r r2 |R1*2
	r4 ees8 (f g aes bes c) |des2
	<<
		{ bes2^\startTrillSpan_( }
		{ s4. \grace { a16[ bes])\stopTrillSpan } }
    	>>
    	ees4 g,^\markup {\bold "Rit........"} aes des, \bar "|."
    	
    	c1\ff ^\markup {\bold "A. Tempo"} |aes2. (c4) |ees1~ |ees2 f4 (g) |aes1~
    	aes4 g aes4. g8 |aes1 |g |des |bes2. des4 |f1~ |f2 g4 aes |c1~ 
    	c4 bes g4. ees8 |f1 |ees |c |aes2. (c4) |ees1~ |ees2 f4 g |aes1~ 
    	aes4 g16 (aes bes c des4. c8) |bes1 |e, |f1~ |f4 g bes4. aes8
    	aes1~ |aes4 c, g'4. f8 |ees2. d4 |des!2 bes |aes1~ 
    	aes4 r \acciaccatura {ees'16 [f g]} aes4
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
