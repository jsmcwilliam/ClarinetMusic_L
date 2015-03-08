% Created on Tue Aug 09 15:45:20 CEST 2011
\version "2.12.3"

\header {
	title = "Symphony No. 9 in D minor" 
 	composer = "Ludwig van Beethoven" 
 arranger = "John McWilliam" 
% meter = "in Bb" 
 opus = "Op. 125" 
 piece = "[2nd. Movement transposed from C]" 
 	instrument = "Klarinette II in Bb" 

}

\include "Globals.ly"

% \transpose d e { % transpose for Bb Klarinette
staffClarinetInBb = \new Staff {
	\time 3/4
	\tempo 2. = 116 
%	\set Staff.instrumentName = "Clarinet in Bb"
	\set Staff.midiInstrument = "clarinet"
%	\transposition hess,
	\key d \minor
	\clef treble
	
	\relative c { 	
	\Atime \Akey \AstringTempo
	\set Score.currentBarNumber = #1
	\compressFullBarRests
	\override DynamicLineSpanner #'staff-padding = #2
	\set Score.markFormatter = #format-mark-box-letters
	
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \stemDown
  		   d'''4.^\markup{ "Archi." }d,8 d4
  		   \stemNeutral
		   \unset fontSize } % return to default size 
  		\\
  		  {\once\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  		   
  		   R2._\markup{"G.P."} ^\markup{\number 1}
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   a'4.^\markup{ "Archi." }a,8 a4
  		   \unset fontSize } % return to default size
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #-4 R2.}>>
  		   
  		   R2._\markup{"G.P."} ^\markup{\number 1}
  		   
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1 
  		   \set Staff.ottavation = #"8"
  		   f'4. ^\markup{ "Timp." }
  		   f,8 f4 \ottava #0 
  		   \unset fontSize } % return to default size} 
  	        \\ 
  	          {\once\override MultiMeasureRest #'staff-position = #4 R2.}>>
  	          
	d'4.\ff d,8 d4
  	R2._\markup{\small "G.P."} ^\markup{\normalsize\number 2}

  \repeat volta 2 { % repeat volta 1.
  	\set Score.currentBarNumber = #9
  	
  	  	<<{\set fontSize = #-4  % make note heads smaller
  	  	   a''4.^\markup{ "Viol II." } a,8 a4
  	  	   d4-. e-. f-.	|e-. f-. g-.
  	  	  \unset fontSize } % return to default size
  	  \\ 
  	   	  {\override MultiMeasureRest #'staff-position = #-4 R2.*3}>>
  	   	   \revert MultiMeasureRest #'staff-position
  	
  	
  	R2.*9
  	
  	  	<<{\set fontSize = #-4  % make note heads smaller
  	  	   d'4.^\markup{ "Viol I." } d,8 d4
  	  	   a'4-. b!-. c-.	|b!-. c-. d-.
  	  	   \unset fontSize } % return to default size
  	  	\\ 
  	   	  {\override MultiMeasureRest #'staff-position = #-4 R2.*3}>>
  	   	   \revert MultiMeasureRest #'staff-position
  	
  	
  	e,,4\pp r r		|e r r	
  	<<\repeat unfold 5 {a r r}
  	  {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 5 { s2. }} >> 
           
        b!4 r r			|c r r			|g r r
        a r r			|e r r			|f r r
        d r r			|e r r			|b! r r
        c r r			|cis r r		|a r r
        cis r r			|f r r
        << \repeat unfold 12 {a,2.~}
  	  {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 12 { s2. }} >> 
           
% Rehersal mark A
	\mark \default
	a'4.\ff a,8 a4		|\repeat unfold 3 {a'a a}
	bes\f a g		|\repeat unfold 3 {a\f a a}
	bes\f a g		|f\f a a		|a\f a g
	f\f f f			|f\f d f		|e\f g g
	g\f g g			|g\f f' f		|f\f d d
	\repeat unfold 3 {g,\f g g}
	
% Rehersal mark B
	\mark \default
	g r r			|R2.*7			|g2.~\(\p\cresc
	g~			|g			|f~
	f			|e			|ees
	d\)
	
% Rehersal mark C
	\mark \default
	c4\ff (e! f8 g)		|a4-. r g-.		|f-. r e-.
	f-. r d-.		|c2 (d8 e)		|f4-. r e-.
	d-. r c-.		|d-. r b!-.		|c-. e (f8 g) 
	a4-. a-. g-.		|f-. f-. e-.		|f-. f-. d-.
	e-. c (d8 e)		|f4-. f-. e-.		|d-. d-. c-.
	d-. d-. d-.		|c4. e,8 e4		|e-. f-. g-.
	a r r			|a-. b!-. c-.		|d4. d8 d4
	d-. e-. f-.		|g r r			|g,-. c-. d-.
	
% Rehersal mark D
	\mark \default
	e\p r r			|R2.*5			|g4\(\p c,\cresc d
	e f g			|fis g a		|g b! g\)
	g,-.\f e'-. f-.		|f\f g b!		|c\f r r
	\OneBarRest		|e,\f e f		|f\f g b!
	c\f g g			|g\f g g		|c\f g e'
	d\f g, f'		|c\f g e'		|d\f g, f'
	R2.*5			|c,4.\pp c8 c4		|c r r
	f4. f8 f4		|f r r			|R2.*3_\markup {"G.P."}

    } % end repeat volta 1.
    
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Archi." }d,8 d4
  		   \unset fontSize } % return to default size 
  		\\ 
  		   {\once\override MultiMeasureRest #'staff-position = #4 R2.}>>   	
    	
    	d4.\pp d8 d4		|d r r			|ees4. ees8 ees4
    	ees r r			|R2.*3_\markup {"G.P."}
    	
   \repeat volta 2 { % repeat volta 2
   	   
  		<<{\set fontSize = #-4  % make note heads smaller
  		   ees'4.^\markup{ "Archi." }ees,8 ees4
  		   \unset fontSize } % return to default size
  		\\
  		  {\once\override MultiMeasureRest #'staff-position = #6 R2.}>> 
	
    	ees4._\markup {\italic "cresc"} ees8 ees4
	ees r r			|f4. f8 f4
    	f r r			|f4. f8 f4		|ges r r
    	ges4. ges8 ges4		|ges r r		|aes4. aes8 aes4
    	aes r r			|gis4. gis8 gis4	|a!\f r r
    	a4. a,8 a4		|\OneBarRest		|ais4.\ff ais8 ais4
    	\OneBarRest		|b!4.\ff b8 b4\fermata\bar "||"
    	
  	\BstringTempo
  	\Bkey
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1
  		   \set Staff.ottavation = #"8"
  		   \stemDown
  		   b''4.^\markup{ "Fag I." }  b,8 b4
  		   e-. fis-. g-.
  		   \ottava #0
  		   \unset fontSize }
  		\\
  	          {\override MultiMeasureRest #'staff-position = #4 R2.*2}>>
  	           \revert MultiMeasureRest #'staff-position

  	\OneBarRest

  	<<{\set fontSize = #-4  % make note heads smaller}
  	   \stemDown
  	   b,4.^\markup{ "Clar. I" } b,8 
  	   \unset fontSize } % return to default size} 
  	\\ 
	  {f''4\rest f\rest \stemUp b,,4\p}>>
  	
        \stemNeutral		|e-. dis-. e-.		|dis-. e-. fis-.
  	e g\sempK g		|g fis e		|fis e dis
  	e e e			|c' b a			|b a gis
  	r r e			|e gis a		|gis a b
  	a c c			|c b a			|b a gis
 
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1
  		   \set Staff.ottavation = #"8"
  		   fis'4.^\markup{ "Timp." } fis,8 fis4
  		   \ottava #0
  		   \unset fontSize } % return to default size
  		\\
  	          {\once\override MultiMeasureRest #'staff-position = #4 R2.}>>
 	
  	\bar "||" 
  	
% Rehersal mark E
	\mark \default 	
  	\Akey
  	f4\p g! a		|g a bes		|\OneBarRest
  	a\p g a			|g a bes		|\OneBarRest
  	a\p g f			|bes a g		|\OneBarRest
  	f \p c c		|c c c			|a' bes c
  	c_\markup {\italic "dimin."} bes a		|a bes a
  	R2.*3			|f4 g a			|a g f
  	f g f
  	
  	<<\repeat unfold 9 {a, a a}
  	 {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 9 { s2. }} >> 
  
        \OneBarRest		|r4 cis d\semppK	|cis d e
        d f f			|f e d			|e d cis
        d a' a			|a g f			|g f e
        \CstringTempo f r r	|R2.*5
        
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \stemUp
  		   g'4.^\markup{ "Viol.I" } g,8 g4
  		   c-. d-. ees-.
  		   \stemNeutral
  		   \unset fontSize } % return to default size
  		\\
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.*2}>> 
  		   \revert MultiMeasureRest #'staff-position
  	
  	R2.*6
  	
 % Rehersal mark F
	\mark \default 
	R2.*4 	
  	
	<<{\set fontSize = #-4  % make note heads smaller	
	   \stemUp ees4^\markup{ "Clar.I" } f4\rest f\rest
	   \repeat unfold 3 {ees4 f\rest f\rest} |d f\rest f\rest
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\ 
  	  {\override MultiMeasureRest #'staff-position = #-4 R2.*5}>> 
  	   \revert MultiMeasureRest #'staff-position
  	          		   
  	R2.*3
  	
  	\padText #2.5 f,4_\markup {\italic {"più cresc"}} r r
  	\OneBarRest		|f4 r r			|\OneBarRest
  	d4\f r r		|\OneBarRest
  	\padText #2.5 f4_\markup {\italic {più \bold\large f}} r r
  	\OneBarRest
  	
% Rehersal mark G
	\mark \default	
	<<{a4.\ff a,8 a4		|\repeat unfold 4 {a'4. a,8 a4}}
  	 {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 5 { s2. }} >> 
  	d4 e f			|e f g			|f e d
  	bes' a g		|f e d

  	\repeat unfold 2 {cis d e |d cis d}
  	\alternative {
  	{bes' a g |f e d}
  	{c! d ees |g a bes} 
  	} % end alternatives
  	
  	a bes c
  	bes a g			|ees\f d c		|bes\f a g
  	f'\f ees d		|c\f bes a		|a\f bes c
  	d\f ees f		|g\f a bes		|c\f d ees
  	
% Rehersal mark H
	\mark \default
	f r r			|R2.*4
	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp 
	   bes4.^\markup{ "Viol. I" } bes,8 bes4
	   bes'4. bes,8 bes4 |a'4. a,8 a4
	   bes2.~^\markup{ "Clar. I" } | bes 
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\
  		  {\override MultiMeasureRest #'staff-position = #-6 R2.*3
 		   \override MultiMeasureRest #'staff-position = #-4 R2.*2}>> 		  
  		   \revert MultiMeasureRest #'staff-position
  		  
  	          		   
  	a2.~\(\p 		|a~_\markup {\italic cresc.}
  	a			|g~
  	g			|fis_\markup {\italic dim.}
  	f!			|e\)			|R2.*5
  	
  	  	<<{\set fontSize = #-4  % make note heads smaller
  	  	   d'4.^\markup{ "Viol I." } d,8 d4
  	  	   d'4. d,8 d4 |cis'4. cis,8 cis4
  	  	   \unset fontSize } % return to default size
  	  	\\
  	          {\override MultiMeasureRest #'staff-position = #4 R2.*3}>>
  	   	   \revert MultiMeasureRest #'staff-position
  	   	  
 
 	a'2.\(\cresc 		|b!~			|b~
 	b			|a~			|a~
 	a			|g\)
 	
% Rehersal mark J
	\mark \default
	fis4\ff d (e8 fis)	|g4-. r fis-.		|e-. r d-.
	e-. r cis-.		|d2 (e8 fis)		|g4-. r fis-.
	e-. r d-.		|e-. r cis-.		|d-. d (e8 f!)
	g4-. g-. f-.		|e-. e-. d-.		|e-. e-.cis-.
	f-. d (e8 f)		|g4-. g-. f-.		|e-. e-. d-.
	e-. e-. cis-.		|f,4. f8 f4		|f g a
	bes r r			|\OneBarRest		|e4. e,8 e4
	e' f g			|a r r			|a d e
	
% Rehersal mark K
	\mark \default
	d\p r r			|\OneBarRest		|d,\p r r
	R2.*3			|bes2.~_\markup {\italic cresc.}		
	bes			|bes'4 (a bes)		|e,! (d cis)
	a-.\f d-. bes-.		|g\f e' e		|f\f r r
	\OneBarRest		|f\f d bes		|g\f e' e
	f\f a a			|a\f a a		|f\f d f
	e\f a e'		|d\f d, f		|e\f a e'
	R2.*5			|f,4. d8\semppK d4	|d r r
	d4. d8 d4		|d r r			|R2.*3_\markup {"G.P."}
	\bar "||"	
    	} % end repeat volta 2
    	
    	\alternative {
    		
    	{ 
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Archi." }d,8 d4
  		   \unset fontSize } % return to default size
  		\\
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
    	
  	f4.\pp d8 d4		|d r r			|bes'4. f8 f4
  	f r r			|bes,4. d8 d4		|f r r
  	g4. ees8 ees4		|ees r r		|R2.*3
    	}
    	
    	{ 
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Archi." }d,8 d4
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 

    	f4._\markup {\italic cresc.} f8 f4		|f r r
    	f4. f8 f4		|f r r			|g4. g8 g4
    	d r r			|cis4.\ff cis8 cis4\fermata
    	\bar "||"
    	}
    	} % end alternatives
    	
        \set Score.currentBarNumber = #396
    	R2.*6			

	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp 
	   d'4.^\markup{ "Clar. I" } d,8 d4 | g4 a bes
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\ 
  	  {\once\override MultiMeasureRest #'staff-position = #-8 R2.
  	   \once\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  	   \revert MultiMeasureRest #'staff-position
  	          		   
	
  	a4.\p\cresc a,8 a4	|\repeat unfold 3 {d e f |a4. a,8 a4}
  	d e f\bar "||"
  	
  	\DstringTempo \Dtime
  	a'\ff a, d\f d,	|a'\f a, a'\f a,	|d'1~\(\>
  	d~\!\p\bar "||"		|\Dkey
  	
  \repeat volta 2 {
  	d2. e8 fis\)		|d4 e d d,	|cis' g fis d'~\(
  	d1~			|d2. e8 fis\)	|d4 e d, d'
  	} %end repeat volta 3
  	\alternative {
  		{cis r d2~ |d1}
  		{\partial 4*2 cis4 r}
  	} %end alternatives

 	\repeat volta 2 {
  		
	<<{\set fontSize = #-4  % make note heads smaller
	   \ottava #1 
	   \set Staff.ottavation = #"8"
	   \stemDown
	   \set Score.currentBarNumber = #423
	   \slurDown
	   \partial 4*2 d4^\markup{ "Viola" } (e |fis g a b)
	   \ottava #0
   	   \stemNeutral	
	   \unset fontSize }
	   \\
   	  {\override MultiMeasureRest #'staff-position = #4 d4\rest d\rest R1}>> 
   	   \revert MultiMeasureRest #'staff-position   
  	
  	R1*2
  	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp
	   \slurUp
	   a,2^\markup{ "Viola.I" } (b4 cis |d cis d e)
	   \stemNeutral
	   \unset fontSize } % return to default size
  		  {\override MultiMeasureRest #'staff-position = #-4 R1*2}>> 
  		   \revert MultiMeasureRest #'staff-position		   

%	Remove collision control
% 	\once \override TextScript #'outside-staff-priority = ##f

% NB! cresc changed to dim due to conflicting dynamics in original

  	a,2_\markup {\italic dim} (g4\> e\!)		|d\p r cis r
  	d r r2			|R1*5
  	\padText #2 a'2_\markup {\italic dim} (bes4\> g\!)
  	fis\p r e r
  	
% Rehersal mark  L
	\mark \default
	d r r2			|R1*15
	
	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemDown
	   r2 a''4-.^\markup{ "Ob.I" } gis-. 		|a-. fis-. e-. d-.
	   \stemNeutral
	   \unset fontSize } % return to default size}
	\\
  	  {\override MultiMeasureRest #'staff-position = #-4 R1*2}>> 
  	   \revert MultiMeasureRest #'staff-position		   
  	
        R1*8
           
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp
	   r2 ^\markup{ "Clar.I" } cis~ 	|cis d	|e e 
	   \stemNeutral
	   \unset fontSize } % return to default size}
	\\
  	  {\override MultiMeasureRest #'staff-position = #-4 R1*3}>> 
  	   \revert MultiMeasureRest #'staff-position		   
	
        R1*5
        
        <<{\set fontSize = #-4  % make note heads smaller
	   \stemUp
	   e2\repeatTie ^\markup{ "Clar.I" } (g,  	|a g)
	   \stemNeutral
	   \unset fontSize } % return to default size}
	\\
  	  {\override MultiMeasureRest #'staff-position = #-4 R1*2}>> 
  	   \revert MultiMeasureRest #'staff-position		   

        e4_\markup {\italic cresc.} (g~ g fis!)
        
% Rehersal mark M
	\mark \default
        fis\f r r2		|R1*7			|r2 d~\f
        d e			|fis2. (g8 a)		|g4-. g-. fis-. fis-.
        e2 d~			| d e			|fis2. (g8 a)
        g4-. g-. fis-. fis-.
        
  	} %end repeat volta 4

	\alternative {
	{\partial 4*2 fis4 r}
	{d2\fp d~}
	} % end alternatives
	
%	{ \set Score.voltaSpannerDuration = #(ly:make-moment 4 4)
	d e			|fis2. (g8 a)
	g4-. g-. fis-. fis-.	|e2 d~_\markup {\italic cresc.}
	d e			|fis d~			|\repeat unfold 3 {d1~}
	d2 a-.~			|a g			|fis-.\f fis'-.
	e-. e-.			|fis-._\markup {\italic dim.} fis-.
	e-. e-.			|fis\p r2		|\OneBR
	r2 d~_\markup {\italic cresc.} 			|d e
	fis fis~		|fis e			|d a'~
	a a
	<<{a-.\ff a-.		|a~ a
	   a-._\markup {\italic dim.} a-.
	   a-. a-.		| \repeat unfold 4 {a a}}
	   
	  {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 8 { s1 }} >> 

	a2\sempuip (g~		|g1)			|fis2 (g~
	g1			|fis2 g~		|g1~
	g~			|g2\pp^\markup {\italic {poco rit.}} g4~ g)
	\fermata \bar "||" \break

	
	\Atime \Akey \AstringTempo
	\set Score.currentBarNumber = #531
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \stemDown
  		   d''4.^\markup{ "Archi." }d,8 d4
  		   \stemNeutral
		   \unset fontSize } % return to default size 
  		\\
  		  {\once\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  		   
  		   R2._\markup{"G.P."} ^\markup{\number 1}
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   a'4.^\markup{ "Archi." }a,8 a4
  		   \unset fontSize } % return to default size
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #-4 R2.}>>
  		   
  		   R2._\markup{"G.P."} ^\markup{\number 1}
  		   
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1 
  		   \set Staff.ottavation = #"8"
  		   f'4. ^\markup{ "Timp." }
  		   f,8 f4 \ottava #0 
  		   \unset fontSize } % return to default size} 
  	        \\ 
  	          {\once\override MultiMeasureRest #'staff-position = #4 R2.}>>
  	          
	d'4.\ff d,8 d4
  	R2._\markup{\small "G.P."} ^\markup{\normalsize\number 2}

  \repeat volta 2 { % repeat volta 1.
  	\set Score.currentBarNumber = #539
  	
  	  	<<{\set fontSize = #-4  % make note heads smaller
  	  	   a''4.^\markup{ "Viol II." } a,8 a4
  	  	   d4-. e-. f-.	|e-. f-. g-.
  	  	  \unset fontSize } % return to default size
  	  \\ 
  	   	  {\override MultiMeasureRest #'staff-position = #-4 R2.*3}>>
  	   	   \revert MultiMeasureRest #'staff-position
  	
  	
  	R2.*9
  	
  	  	<<{\set fontSize = #-4  % make note heads smaller
  	  	   d'4.^\markup{ "Viol I." } d,8 d4
  	  	   a'4-. b!-. c-.	|b!-. c-. d-.
  	  	   \unset fontSize } % return to default size
  	  	\\ 
  	   	  {\override MultiMeasureRest #'staff-position = #-4 R2.*3}>>
  	   	   \revert MultiMeasureRest #'staff-position
  	   	   
  	e,,4\pp r r		|e r r	
  	<<\repeat unfold 5 {a r r}
  	  {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 5 { s2. }} >> 
           
        b!4 r r			|c r r			|g r r
        a r r			|e r r			|f r r
        d r r			|e r r			|b! r r
        c r r			|cis r r		|a r r
        cis r r			|f r r
        << \repeat unfold 12 {a,2.~}
  	  {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 12 { s2. }} >> 
           
% Rehersal mark N
	\mark \default
	a'4.\ff a,8 a4		|\repeat unfold 3 {a'a a}
	bes\f a g		|\repeat unfold 3 {a\f a a}
	bes\f a g		|f\f a a		|a\f a g
	f\f f f			|f\f d f		|e\f g g
	g\f g g			|g\f f' f		|f\f d d
	\repeat unfold 3 {g,\f g g}
	
% Rehersal mark O
	\mark \default
	g r r			|R2.*7			|g2.~\(\p\cresc
	g~			|g			|f~
	f			|e			|ees
	d\)
	
	c4\ff (e! f8 g)		|a4-. r g-.		|f-. r e-.
	f-. r d-.		|c2 (d8 e)		|f4-. r e-.
	d-. r c-.		|d-. r b!-.		|c-. e (f8 g) 
	a4-. a-. g-.		|f-. f-. e-.		|f-. f-. d-.
	e-. c (d8 e)		|f4-. f-. e-.		|d-. d-. c-.
	d-. d-. d-.		|c4. e,8 e4		|e-. f-. g-.
	a r r			|a-. b!-. c-.		|d4. d8 d4
	d-. e-. f-.		|g r r			|g,-. c-. e-.
	e\p r r			|R2.*5
	
% Rehersal mark P
	\mark \default
	g4\(\p c,\cresc d
	e f g			|fis g a		|g b! g\)
	g,-.\f e'-. f-.		|f\f g b!		|c\f r r
	\OneBarRest		|e,\f e f		|f\f g b!
	c\f g g			|g\f g g		|c\f g e'
	d\f g, f'		|c\f g e'		|d\f g, f'
	R2.*5			|c,4.\pp c8 c4		|c r r
	f4. f8 f4		|f r r			|R2.*3_\markup {"G.P."}

	} % end repeat volta 1.
	
	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Archi." }d,8 d4
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
    		
    	d4.\pp d8 d4		|d r r			|ees4. ees8 ees4
    	ees r r			|R2.*3_\markup {"G.P."}
    	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   ees'4.^\markup{ "Archi." }ees,8 ees4
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #6 R2.}>> 
	
    	ees4._\markup {\italic "cresc"} ees8 ees4
	ees! r r		|f4. f8 f4
    	f r r			|f4. f8 f4		|ges r r
    	ges4. ges8 ges4		|ges r r		|aes4. aes8 aes4
    	aes r r			|gis4. gis8 gis4	|a!\f r r
    	a4.\f a,8 a4		|\OneBarRest		|ais4.\ff ais8 ais4
    	\OneBarRest		|b!4.\ff b8 b4\fermata\bar "||"
    	
  	\BstringTempo
  	\Bkey
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1
  		   \set Staff.ottavation = #"8"
  		   \stemDown
  		   b''4.^\markup{ "Fag I." } b,8 b4
  		   e-. fis-. g-.
  		  \ottava #0
  	          \stemNeutral
  	          \unset fontSize }
  	       \\ 
  	          {\override MultiMeasureRest #'staff-position = #4 R2.*2}>>
		   \revert MultiMeasureRest #'staff-position
  	
  	\OneBarRest

  	<<{\set fontSize = #-4  % make note heads smaller}
  	   \stemDown
  	   b,4.^\markup{ "Clar. I" } b,8 
  	   \unset fontSize } % return to default size} 
  	\\ 
	  {f''4\rest f\rest}>>
	  
	\stemUp b,,4\p
  	\stemNeutral
  	
  	
  	\unset fontSize 	|e-. dis-. e-.		|dis-. e-. fis-.
  	e g\sempK g		|g fis e		|fis e dis
  	e e e			|c' b a			|b a gis
  	r r e			|e gis a		|gis a b
  	a c c			|c b a			|b a gis
 
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1
  		   \set Staff.ottavation = #"8"
  		   fis'4.^\markup{ "Timp." } fis,8 fis4
  		   \ottava #0
  	           \stemNeutral
  		   \unset fontSize } % return to default size
  		\\ 
  	          {\once\override MultiMeasureRest #'staff-position = #4 R2.}>>
		   
  	\bar "||" 
  	
% Rehersal mark Q
	\mark \default  	
  	\Akey
  	f4\p g! a		|g a bes		|\OneBarRest
  	a\p g a			|g a bes		|\OneBarRest
  	a\p g f			|bes a g		|\OneBarRest
  	f \p c c		|c c c			|a' bes c
  	c_\markup {\italic "dimin."} bes a		|a bes a
  	R2.*3			|f4 g a			|a g f
  	f g f
  	
  	<<\repeat unfold 9 {a, a a}
  	 {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 9 { s2. }} >> 
  
        \OneBarRest		|r4 cis d\semppK		|cis d e
        d f f			|f e d			|e d cis
        d a' a			|a g f			|g f e
        \CstringTempo f r r	|R2.*4
        
  		<<{\set fontSize = #-4  % make note heads smaller
  		   g'4.^\markup{ "Clar.I" }g,8 g4	|d' e e
  		   \unset fontSize } % return to default size} 
  		\\ 
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.*2}>> 
  		   \revert MultiMeasureRest #'staff-position
    	
  	R2.*7  
 % Rehersal mark R
	\mark \default	
	R2.*4
  		
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp 
	   ees4^\markup{ "Clar. I" } r r
	   \repeat unfold 3 {ees4 r r} |d r r
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\ 
  	  {\override MultiMeasureRest #'staff-position = #-4 R2.*5}>> 
  	   \revert MultiMeasureRest #'staff-position		   
  	
  	\OneBarRest

  	<<{\set fontSize = #-4  % make note heads smaller
  	   \ottava #1
  	   \set Staff.ottavation = #"8"
  		   d'4.^\markup{ "Cor.I,II" } d,8 d4
  		   \ottava #0
  		   f,4.^\markup{ "Cor.III,IV" } f,8 f4
  		   \unset fontSize } % return to default size} 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #6 R2.
  		   \once\override MultiMeasureRest #'staff-position = #4 R2.}>>

  	\padText #2.5 f'4_\markup {\italic {"più cresc"}} r r
  	\OneBarRest		|f4 r r			|\OneBarRest
  	d4\f r r		|\OneBarRest
  	\padText #2.5 f4_\markup {\italic {più \bold\large f}} r r
  	\OneBarRest
  	
% Rehersal mark S
	\mark \default	
	<<{a4.\ff a,8 a4		|\repeat unfold 4 {a'4. a,8 a4}}
  	 {\set countPercentRepeats = ##t
           \override PercentRepeat #'transparent = ##t
           \override PercentRepeatCounter #'staff-padding = #1
           \repeat percent 5 { s2. }} >> 
  	d4 e f			|e f g			|f e d
  	bes' a g		|f e d

  	\repeat unfold 2 {cis d e |d cis d}
  	\alternative {
  	{bes' a g |f e d}
  	{c! d ees |g a bes} 
  	} % end alternatives
  	
  	a bes c
  	bes a g			|ees\f d c		|bes\f a g
  	f'\f ees d		|c\f bes a		|a\f bes c
  	d\f ees f		|g\f a bes		|c\f d ees
  	
% Rehersal mark T
	\mark \default
	f r r			|R2.*4
	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp 
	   bes4.^\markup{ "Viol.I" } bes,8 bes4
	   bes'4. bes,8 bes4 |a'4. a,8 a4
	   bes2.~^\markup{ "Clar.I" } | bes
	   \stemNeutral		   
  	   \unset fontSize } % return to default size
  	\\ 
  	  {\override MultiMeasureRest #'staff-position = #-4 R2.*5}>>		  
  	   \revert MultiMeasureRest #'staff-position

	
  	a2.~\(\p_ 		|a~_\markup {\italic cresc.}
  	a			|g~
  	g			|fis_\markup {\italic dim.}
  	f!			|e\)			|R2.*8
 	a2.\(\cresc 		|b!~			|b~
 	b			|a~			|a~
 	a			|g\)
 	
% Rehersal mark U
	\mark \default
	fis4\ff d (e8 fis)	|g4-. r fis-.		|e-. r d-.
	e-. r cis-.		|d2 (e8 fis)		|g4-. r fis-.
	e-. r d-.		|e-. r cis-.		|d-. d (e8 f!)
	g4-. g-. f-.		|e-. e-. d-.		|e-. e-.cis-.
	f-. d (e8 f)		|g4-. g-. f-.		|e-. e-. d-.
	e-. e-. cis-.		|f,4. f8 f4		|f g a
	bes r r			|\OneBarRest		|e4. e,8 e4
	e' f g			|a r r			|a d e
	d\p r r			|\OneBarRest		|d,\p r r
	R2.*3
	
% Rehersal mark V
	\mark \default	
	bes2.~_\markup {\italic cresc.}		
	bes			|bes'4 (a bes)		|e,! (d cis)
	a-.\f d-. bes-.		|g\f e' e		|f\f r r
	\OneBarRest		|f\f d bes		|g\f e' e
	f\f a a			|a\f a a		|f\f d f
	e\f a e'		|d\f d, f		|e\f a e'
	R2.*5			|f,4. d8\semppK d4	|d r r
	d4. d8 d4		|d r r			|R2.*3_\markup {"G.P."}
    	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Archi." }d,8 d4
  		   \unset fontSize } % return to default size
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #-4 R2.}>> 

    	f4.\cresc f8 f4		|f r r
    	f4. f8 f4		|f r r			|g4. g8 g4
    	d r r			|cis4.\ff cis8 cis4\fermata
    	\bar "||"
 	
  	<<{\set fontSize = #-4  % make note heads smaller
  	   a''4._\markup{ "Viol I." } a,8 a4	|d e f
  	   \unset fontSize } 
  	\\
  	  {\override MultiMeasureRest #'staff-position = #-4 R2.\Coda R2.}>> 
  	   \revert MultiMeasureRest #'staff-position

  	 R2.*4
  	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp 
	   d4.^\markup{ "Clar. I" } d,8 d4 | g4 a bes
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\ 
  	  {\override MultiMeasureRest #'staff-position = #-8 R2.*2}>> 
  	   \revert MultiMeasureRest #'staff-position
  	          		   
  	a4.\p\cresc a,8 a4	|\repeat unfold 3 {d e f |a4. a,8 a4}
  	d e f\bar "||"
  	
  	\DstringTempo \Dtime
  	a'\ff a, d\f d,		|a'\f a, a'\f a,	|\bar "||"		
  	\Dkey  
  	d'1~\fp\(		|d~ d2. e8 fis\)	|d4 e d d,
  	cis' g fis d'~\(	|d1~			|d2. e8 fis\)	
  	R1_\markup{"G.P."} ^\markup{\large\bold"1"}
  	a4\ff a, d\f d,		|a'\f a, a'\f a,	|d r r2\fermata\bar "|."

  	%} %end transpose for Bb Clarinett
  		   
  } % end music

} % end staff


\score {
	<<
		\staffClarinetInBb
	>>
	
	\midi {
	}

  \layout {
  }
}

\paper {
}

%{ Tips:-
1. using the number pad press Alt 0249 for "ù"  	
%}
