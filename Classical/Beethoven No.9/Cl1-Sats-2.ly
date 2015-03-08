% Created on Tue Aug 16 10:35:10 CEST 2011
\version "2.12.3"

\header {
	title = "Symphony No. 9 in D Minor" 
 	composer = "Ludwig van Beethoven" 
 	arranger = "John McWilliam" 
 	opus = "Op. 125" 
 	piece = "[2nd. Movement transposed from C]" 
 	instrument = "Klarinette I in Bb" 

}

%\include "svenska.ly"
\include "Globals.ly"

staffClarinetInBb = \new Staff {
%	\time 3/4
%	\tempo 2. = 116 
%	\set Staff.instrumentName = "Clarinet in Bb"
	\set Staff.midiInstrument = "clarinet"
%	\transposition hess,
%	\key d \minor
	\clef treble
%	\transpose d e { % transpose for Bb Klarinette
		
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
  		  {\once\override MultiMeasureRest #'staff-position = #-6 R2.}>>
  		   
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
  	  	   a''4.^\markup{ "Viol I." } a,8 a4
  	  	   d4-. e-. f-.	|e-. f-. g-.	|f-. e-. d-.
  	  	   \unset fontSize } % return to default size
  	  	\\ 
  	   	  {\override MultiMeasureRest #'staff-position = #-4 R2.*4}>>
  	           \revert MultiMeasureRest #'staff-position
  	
  	d4\pp r r		|a r r			|b r r
  	c r r			|bes! r r		|f r r
  	cis r r			|d r r			|a' r r
 	
        \once \override DynamicText #'X-offset = #-9.2 a4\semppK r r
        
        e r r 			|e' r r			|cis r r
        d r r			|g r r			|d r r
        d r r			|\repeat unfold 4 { e r r }
        d r r			|a r r			|a r r
        d r r			|a r r			|b r r
        a r r			|e r r			|a r r
        a r r			|a r r
        
        <<{a2.~\cresc		|\repeat unfold 11 { a2.~}}
        	{\set countPercentRepeats = ##t
        	 \override PercentRepeat #'transparent = ##t
        	 \override PercentRepeatCounter #'staff-padding = #1
        	 \repeat percent 12 { s2. }} >> 
        	
% Rehersal mark A
%	\once \override TextScript #'outside-staff-padding = #3
        \mark \default
        a'4.\ff a,8 a4
        d e f			|e f g			|f e d
        d\f d d			|f\f e d		|cis\f d e
        d\f cis d		|d\f d d		|f\f e d
        cis\f d e		|a,\f a b		|b\f b d
        e\f d c!		|b\f c d		|c\f a' a
        a\f g f			|e\f d c		|g'\f f e
  	g\f f e
  
% Rehersal mark B
	\mark \default
	d r r			|R2.*9
	a2.~ \p \( \cresc	|a			|aes
	g~			|g~			|g~ \)
	
% Rehersal mark C
	\mark \default
	c2\ff (d8 e)		|f4-. r e-.		|d-. r c-.
	d-. r b-.		|e,2 (f8 g)		|a4-. r g-.
	f-. r e-.		|f r d			|e c'-. (d8 e)
	f4-. f-. e-.		|d-. d-. c-.		|d-. d-. b-.
	c-. e, (f8 g)		|a4-. a-. g-.		|f-. f-. e-.
	f-. f-. b-.		|e,4. e8 e4		|e-. f-. g-.
	a r r			|a-. b-. c-.		|d4. d8 d4
	d-. e-. f-.		|g r r			|g,-. c-. d-.
	
% Rehersal mark D
	\mark \default
	e r r			|R2.*5			|g,4 \p ( \cresc c, d
	e f g			|fis g a		|g d' c)
	g-. e'-. a,-.		|f'\f d d		|e\f r r 
	\OneBarRest
	g,4\f e' a,		|f'\f d d		|e\f g g
	g\f g g			|e\f c g'		|f\f d g
	e\f c g'		|f\f d g		|g,,\pp ( a b
	c d e			|f e f			|g a b
	c) r r			|e,4.\pp e8 e4		|a r r
	a4. a8 a4		|a r r			|R2.*3
	_\markup{"G.P."}
 } % end repeat volta 1.

  	<<{\set fontSize = #-4  % make note heads smaller
	   d4._\markup{ "Viol I." } \stemDown c,8 c4
	   \stemNeutral
           \unset fontSize } % return to default size 
        \\ 
          {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
  	   
  	f4.\pp f8 f4		|g r r			|g4. g8 g4
  	g r r			|R2.*3_\markup{\small "G.P."}  	
  	
\pageBreak
  	
  \repeat volta 2 { %repeat volta 2.
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \stemDown
  		   ees'4._\markup{ "Viol I." }ees,8 ees4
  		   \stemNeutral
  		   \unset fontSize } % return to default size
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
  	
  	\cresc g4. g8 g4	|aes r r		|aes4. aes8 aes4
  	aes r r			|bes!4. bes8 bes4	|bes r r
  	bes4. bes8 bes4		|ces r r
  	ces4. ces8 ces4		|ces r r		|cis4. cis8 cis4	
  	cis4\f r r		|a'4.\f a,8 a4		
  	\OneBarRest
  	ais4.\ff ais,8 ais4		|\OneBarRest
  	bes'4.\ff b,8 b4\fermata \bar "||" 
  	

  	
  	\BstringTempo
  	\Bkey
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1
  		   \set Staff.ottavation = #"8"
  		   \stemDown
  		   b''4._\markup{ "Fag I." } b,8 b4
  		   e-. fis-. g-. fis-. g-. a-.
  		   \ottava #0
  	           \stemNeutral
  		   \unset fontSize } % return to default size
  		\\ 
  	          {\override MultiMeasureRest #'staff-position = #4 R2.*3}>>
  	           \revert MultiMeasureRest #'staff-position
  		   
  	
  	
  	b,4.\p b,8 b4		|e-. fis!-. g-.		|fis-. g-. a-.
  	g b b\sempK		|b a g			|a g fis
  	gis e' e		|e d c			|d c b
  	e4. e,8 e4		|a b c			|b c d
  	c e e			|e d c			|d c b
  	
  	
  	<<{\set fontSize = #-4  % make note heads smaller
  	   \ottava #1
  	   \set Staff.ottavation = #"8"
 	   fis'4. ^\markup{ "Timp." } fis,8 fis4
           \ottava #0 
           \unset fontSize } % return to default size
        \\ 
   	  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>>
   	   \bar "||"
   	   
% Rehersal mark E 	
  	\Akey
  	\mark \default
  	a4\p bes! c		|bes c d		
  	\OneBarRest
  	c4 e f			|e f g
  	\OneBarRest
  	c,4\p bes a		|d c bes
  	\OneBarRest
  	a4\p c c		|c c c			|f g a\dim
  	a g f		|f g f				|R2.*3
  	d4 e f			|f e d			|d e d
  	<<{\repeat unfold 3 {a a a}	
  		 a\pp a a 	|\repeat unfold 5{a a a}}
        	{\set countPercentRepeats = ##t
        	 \override PercentRepeat #'transparent = ##t
        	 \override PercentRepeatCounter #'staff-padding = #1
        	 \repeat percent 9 { s2. }} >> 
        a4. a,8 a4\semppK	|d e f		 	|e f g
        f a a			|a g f			|g f e
        f f' f			|f e d			|e d cis\CstringTempo
  	d r r 	 		|R2.*3
        
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   g4.^\markup{ "Viol II." }g,8 g4
  		   \unset fontSize } % return to default size
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  	
        g'4.\pp g,8 g4		|d' r r			|g4. g,8 g4\semppK
   	d bes'! bes		
   	<<\repeat unfold 5 {bes bes bes}
   		{\set countPercentRepeats = ##t
        	 \override PercentRepeat #'transparent = ##t
        	 \override PercentRepeatCounter #'staff-padding = #1
        	 \repeat percent 5 { s2. }} >> 

% Rehersal mark F 	
  	\mark \default
  	f'4\pp r r		|\OneBarRest
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1
  	           \set Staff.ottavation = #"8"
  	           \stemDown
  		   bes4.^\markup{ "Cor. III" }bes,8 bes4
  		   d'4.^\markup{ "Cor.I" } d,8 d4
  		   \stemNeutral
  		   \ottava #0
  		   \unset fontSize } % return to default size 
  		\\ 
  		 {\override MultiMeasureRest #'staff-position = #4 R2.*2}>> 
  		   \revert MultiMeasureRest #'staff-position
  	
  	ees4\pp r r		|\repeat unfold 3 {ees r r}
  	d _\markup  {\null \lower #2 \italic "cresc."}r r |R2.*3
  	d4 _\markup {\null \lower #2 \italic "più cresc."} r r		
  	\OneBarRest		|a4 r r			|\OneBarRest
  	f r r			|\OneBarRest
  	a _\markup {\null \lower #2 {\italic {"più" \bold\large "f"}}} r r
  	\OneBarRest		
  	
% Rehersal mark G 	
  	\mark \default  	
  	a4.\ff a,8 a4		|\repeat unfold 3 {a'4. a,8 a4}	
  	a''4. a,8 a4		|d e f			|e f g
  	f e d			|\repeat unfold 2 {bes' a g |f e d |cis d e
  	d cis d}		|c! d ees		|g a bes
  	a bes c			|bes a g		|ees\f d c
  	bes\f a g		|f'\f ees d		|c\f bes a
  	a,\f bes c		|d\f ees f		|g\f a bes
  	c\f d ees		
  	
% Rehersal mark H	
  	\mark \default 
  	f r r			|\OneBarRest		|g,2.~\p\(\<
  	g			|a			|bes~\>
  	bes			|a\)\!			|bes~\p\(
  	bes			|a4\) r r		|\OneBarRest
  	b2.~\( _\markup  {\null \lower #2 {\italic {\bold "p"} "cresc."}}		
  	b			|bes!
  	a~ _\markup {\null \lower #2 \italic "dim."}			
  	a~			|a\)			|R2.*3
  	
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   e'4.^\markup{ "Viol I." }e,8 e4	|e'4. e,8 e4
  		   \unset fontSize} 
  		\\ 
  		  {\override MultiMeasureRest #'staff-position = #4 R2.*2}>> 
  		   \revert MultiMeasureRest #'staff-position
  		   
  	R2.*2
  	
		<<{\set fontSize = #-4
		   cis'4.^\markup{ "Viol II." }cis,8 cis4
		   \unset fontSize } % return to default size
		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 

  	\cresc
  	a''2. \( 		|b~			|b~
  	b			|a~			|a~
  	a			|g\)
  	
% Rehersal mark J	
  	\mark \default
	fis4\ff d,4 e8 (fis)	|g4-. r fis-.		|e-. r d-.
	e-. r cis-.		|fis2 (g8 a)		|b!4-. r a-.
	g-. r fis-.		|g-. r e-.		|d-. d' (e8 f!)
	g4-. g-. f-.		|e-. e-. d-.		|e-. e-. cis-.
	f-. f, (g8 a)		|bes!4-. bes-. a-.	|g-. g-. f-.
	g-. g-. e-.		|f4. f8 f4		|f g a
	bes r r			|\OneBarRest		|e4. e,8 e4
	e' f g			|a r r			|a, d e
	
% Rehersal mark K	
  	\mark \default
  	fis\p r r		|\OneBarRest		|d\p r r
  	R2.*3			|\cresc g,4 (f ees)	|ees' (f g)
  	e! (f g)		|g, (f e)		|d-.\f f-. bes-.
  	g\f e' cis		|d\f r r		|\OneBarRest
  	a\f d bes		|g e' cis		|d a' a
  	a a a			|d,\f f, a 		| g\f e' a
  	f\f f, a		|g\f e' a		|\OneBarRest
  	g, \pp cis\( e~		|e2.~			|e4 g, e\)
  	d r r			|d'4. f,8 f4\semppK	|f r r
  	f4. f8 f4		|f r r			|R2.*3_\markup{"G.P."}
  	\bar "||"
  } % end repeat volta 2
  
  \alternative { % 2:1 & 2:2
  	{ % 2:1.
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Viol I." }d,8 d4
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
  	
  	d'4.\pp f,8 f4		|f r r			|d'4. bes8 bes4
  	bes r r			|d,4. bes'8 bes4	|bes r r
  	bes4. g8 g4		|g r r			|R2.*3_\markup{"G.P."}
  	} % end 2:1. 
 
  	{ % 2:2.
  	\set Score.currentBarNumber = #388
%  	\set Score.voltaSpannerDuration = #(ly:make-moment 3 4)

	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Viol I." }d,8 d4
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
  		   
  	  	} % end 2:2
	} % end alternatives and repeat volta 2
	
\pageBreak
	  	\cresc a'4. a8 a4	|a r r		|a4. a8 a4
	bes r r			|bes 4. bes 8 bes4	|g r r
	e4.\ff e8 e4\fermata 

  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   a'4.^\markup{ "Viol I." }a,8 a4	|d e f
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.*2}>> 
  		   \revert MultiMeasureRest #'staff-position
  	
	
  	d4.\pp d,8 d4		|g a bes		|R2.*2
  	d4.\pp d,8 d4		|g a bes		
  	\cresc a'4.^\markup {\italic "stringendo il tempo"} a,8 a4
  	d e f			|\repeat unfold 3 {a4. a,8 a4 | d e f}
  	\bar "||"
  	
  	\DstringTempo \Dtime
  	a\ff a, d\f d,		|a'\f a, a''\f a,	|d1~\>
  	d2\p e			|\bar "||"		|\Dkey 
  	
  	\repeat volta 2 { % repeat volta 3
  	\bar "|:" fis2. (g8 a)	|g4 g fis fis		|e2 d~
  	d e			|fis2. (g8 a)		|g4 g fis fis
  	} % end repeat volta 3 
  	
  	\alternative { % 3:1 & 3:2
  		{e r d2~ 	|d  e} % end 3:1
		{\partial 4*2 e4 r} % end 3:2	
  	} % end alternatives and repeat volta 3
  	
  	\repeat volta 2 { % repeat volta 4
	\set Score.currentBarNumber = #423
		
	
	<<{\set fontSize = #-4  % make note heads smaller
	   \partial 4*2
	   \ottava #1
	   \set Staff.ottavation = #"8"
	   \stemDown
	   cis4 ^\markup{ "Viola, Vcllo" } (d		|e4 fis g a)
	   \ottava #0
	   \stemNeutral 
	   \unset fontSize } % return to default size}
	\\
   	  {\partial 4*2 d4\rest d4\rest
   	   \once\override MultiMeasureRest #'staff-position = #4 R1} >>		 
   	   
	|R1*2
	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp
	    a,2^\markup{ "Viol I." } (b4 cis		|d cis d e)
	   \stemNeutral
	   \unset fontSize }  % return to default size 
	\\
	  {\override MultiMeasureRest #'staff-position = #-4 R1*2}>>
	   \revert MultiMeasureRest #'staff-position

	
	\padText #2 a,2_\markup {\italic dim} (b4\> g\!)|fis\p r e r
	d fis'^\markup{"Solo"} _\markup{"dolce"} (d cis	|d e fis g)		|e r r2			|\OneBR
	a,1~\(_\markup {\null \lower #2 \italic "cresc."}		
	a~			|a2 b4\> g\!\)
	fis\p r e r		
	
% Rehersalmark  L	
  	\mark \default
  	d r r2			|R1*15		
  	

	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp
	   r2^\markup{ "Ob. I" } a''4-. g! 		|a-. fis-. e-. d-.
	   cis-. b-. a-. g'!
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\ 
	 {\override MultiMeasureRest #'staff-position = #-4 R1*3}>>
	  \revert MultiMeasureRest #'staff-position

	
	R1*5
	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp
	   cis,4\repeatTie ^\markup{ "Ob. I" } (a) b' (ais |b g! e d  
	   cis4 a)
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\
	  {\override MultiMeasureRest #'staff-position = #-4 R1*2 r2}>>
	   \revert MultiMeasureRest #'staff-position

	cis2~\p cis d		
	
	<<{\repeat unfold 6 {e e~}}
          {\set countPercentRepeats = ##t
        	 \override PercentRepeat #'transparent = ##t
        	 \override PercentRepeatCounter #'staff-padding = #1
        	 \repeat percent 6 { s1 }} >> 

	e2 g,			|a g~_\markup {\null \lower #2 \italic "cresc."}			
	g4 e'~ e d

% Rehersalmark M	
  	\mark \default
  	d\f r r2		|R1*5
  	

	<<{\set fontSize = #-4  % make note heads smaller
	   \stemUp
	   fis2.^\markup{ "Viol. I" } (g8 a)		|g4-. g-. fis-. fis-.
	   e4 r
	   \stemNeutral
	   \unset fontSize } % return to default size
	\\ 
	  {\override MultiMeasureRest #'staff-position = #-4 R1*2 r2}>>	 
	   \revert MultiMeasureRest #'staff-position

				
  	\partial 4*2 d2~\f   	|d  e			|fis2. (g8 a)
  	g4-. g-. fis-. fis-.	|e2 d~			|d  e
  	fis2. (g8 a)		|g4-. g-. fis-. fis-.	

  	} % end repear volta 4	
	\alternative { % alternatives 4:1 & 4:2
		{\partial 4*2 d4 r} %end alternative 4:1
		{\set Score.currentBarNumber = #491 
		 d,2\fp d~}         %end alternative 4:2
	} %end alternatives
		
	d e			|fis2. (g8 a)		|g4 g fis fis
	e2 d~ _\markup {\null \lower #2 \italic "cresc."}
	d e			|fis d~			|\repeat unfold 3 {d1~}
	d2 fis~			|fis g 			|a\f-. fis-.
	e-. e-. 		|fis-._\markup {\null \lower #2 
	\italic "dim."} fis-.
	e-. e-.			|fis\p\cresc d~		|d e
	fis d'~			|d e 			|fis fis~
	fis e			|d a'~			|a g
	fis-.\ff fis-.		|e-. e-.
	fis-._\markup {\null \lower #2 \italic "dim."} fis-.
	e-. e-.			|fis fis		|e e
	fis fis			|e e 
	d\( b~_\markup {\null \lower #2 \italic {"sempre più" {\bold "p"}}}
	b1\)			|a2\( b~		|b1\)
	a2\( b~			|b1~			|b\)
	bes2~\pp^\markup {\null \lower #2 \italic "poco ritard."} 
	bes4~ bes\fermata \bar "||"
	
\pageBreak	

% Section 1	
	\Atime \Akey \AstringTempo

  		<<{\set fontSize = #-4  % make note heads smaller
  		   \stemDown
  		   d'4.^\markup{ "Archi." }d,8 d4
  		   \stemNeutral
		   \unset fontSize } % return to default size 
  		\\
  		  {\once\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  		   
  		   R2._\markup{"G.P."} ^\markup{\number 1}
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   a'4.^\markup{ "Archi." }a,8 a4
  		   \unset fontSize } % return to default size
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #-6 R2.}>>
  		   
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
  	  	   a''4.^\markup{ "Viol I." } a,8 a4
  	  	   d4-. e-. f-.	|e-. f-. g-.	|f-. e-. d-.
  	  	   \unset fontSize } % return to default size
  	  	\\ 
  	   	  {\override MultiMeasureRest #'staff-position = #-4 R2.*4}>>
  	           \revert MultiMeasureRest #'staff-position
  	           
  	d4 r r			|a r r			|b r r
  	c r r			|bes! r r		|f r r
  	cis r r			|d r r			|a' r r
 	
        \once \override DynamicText #'X-offset = #-9.2 c4\semppK r r
        
        e, r r 			|e' r r			|cis r r
        d r r			|g r r			|d r r
        d r r			|\repeat unfold 4 { e r r }
        d r r			|a r r			|a r r
        d r r			|a r r			|b r r
        a r r			|e r r			|a r r
        a r r			|a r r

        <<\repeat unfold 12 { a2.~}
        	{\set countPercentRepeats = ##t
        	 \override PercentRepeat #'transparent = ##t
        	 \override PercentRepeatCounter #'staff-padding = #1
        	 \repeat percent 12 { s2. }} >> 
        	
% Rehersal mark N
%	\once \override TextScript #'outside-staff-padding = #3
        \mark \default
        a'4.\ff a,8 a4
        d e f			|e f g			|f e d
        d\f d d			|f\f e d		|cis\f d e
        d\f cis d		|d\f d d		|f\f e d
        cis\f d e		|a,\f a b		|b\f b d
        e\f d c			|b\f c d		|c\f a' a
        a\f g f			|e\f d c		|g'\f f e
  	g\f f e
  
% Rehersal mark O
	\mark \default
	d r r			|R2.*9
	a2.~ \p \( \cresc	|a			|aes
	g~			|g~			|g~ \)
	
% Rehersal mark P
	\mark \default
	c2\ff (d8 e)		|f4-. r e-.		|d-. r c-.
	d-. r b-.		|e,2 (f8 g)		|a4-. r g-.
	f-. r e-.		|f-. r d-.		|e-. c' (d8 e)
	f4-. f-. e-.		|d-. d-. c-.		|d-. d-. b-.
	c-. e, (f8 g)		|a4-. a-. g-.		|f-. f-. e-.
	f-. f-. b-.		|e,4. e8 e4		|e-. f-. g-.
	a r r			|a-. b-. c-.		|d4. d8 d4
	d-. e-. f-.		|g r r			|g,-. c-. d-.
	e r r			|R2.*5	
		
	g,4 \p ( \cresc c, d
	e f g			|fis g a		|g d' c)
	g-.\f e'-. a,-.		|f'\f d d		|e\f r r 
	\OneBarRest
	g,4\f e' a,		|f'\f d d		|e\f g g
	g\f g g			|e\f c g'		|f\f d g
	e\f c g'		|f\f d g		|g,,\pp ( a b
	c d e			|f e f			|g a b
	c) r r			|e,4.\pp e8 e4		|a r r
	a4. a8 a4		|a r r			|R2.*3
	_\markup{\small "G.P."}
 } % end repeat volta 5 (Section 1).
 
\pageBreak
 	
  	<<{\set fontSize = #-4  % make note heads smaller
	   d4.^\markup{ "Viol I." } \stemDown c,8 c4
	   \stemNeutral
	   \unset fontSize } % return to default size 
	\\ 
   	   {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
  	
  	f4.\pp f8 f4		|g r r			|g4. g8 g4
  	g r r			|R2.*3_\markup{\small "G.P."}  	

  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   ees'4.^\markup{ "Viol I." }ees,8 ees4
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #4 R2.}>> 
  		    
  	\cresc g4. g8 g4		|aes r r	|aes4. aes8 aes4
  	aes r r			|bes4. bes8 bes4	|bes r r
  	bes4. bes8 bes4		|ces r r
  	ces4. ces8 ces4		|ces r r		|cis4. cis8 cis4	
  	cis4\f r r		|a4.\f a,8 a4		
  	\OneBarRest
  	ais4.\ff a8 a4		|\OneBarRest
  	bes'4.\ff b8 b4\fermata \bar "||" 
  	
  	\BstringTempo
  	\Bkey
  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   \ottava #1
  		   \set Staff.ottavation = #"8"
  		   \stemDown
  		   b'4.^\markup{ "Fag I." } b,8 b4
  		   e-. fis-. g-. fis-. g-. a-.
  		   \ottava #0
  	           \stemNeutral
  		   \unset fontSize } % return to default size
  		\\ 
  	          {\override MultiMeasureRest #'staff-position = #4 R2.*3}>>
  	           \revert MultiMeasureRest #'staff-position
  		   
  	
  	
  	b,4.\p^\markup {"Solo"} b,8 b4			|e-. fis-. g-.		
  	fis-. g-. a-.
  	g b b\semppK		|b a g			|a g fis
  	gis e' e		|e d c			|d c b
  	e4. e,8 e4		|a b c			|b c d
  	c e e			|e d c			|d c b
  	
  	
  	<<{\set fontSize = #-4  % make note heads smaller
  	   \ottava #1
  	   \set Staff.ottavation = #"8"
 	   fis'4. ^\markup{ "Timp." } fis,8 fis4
 	   \ottava #0
	   \unset fontSize } % return to default size 
   	\\
	   {\once\override MultiMeasureRest #'staff-position = #4 R2.}>>
	 
	\bar "||"
  	
 
% Rehersal mark Q 	
  	\Akey
  	\mark \default
  	a4\p bes! c		|bes c d		
  	\OneBarRest
  	c4 e f			|e f g
  	\OneBarRest
  	c,4\p bes a		|d c bes
  	\OneBarRest
  	a4\p c c		|c c c			|f g a\dim
  	a g f		|f g f				|R2.*3
  	d4 e f			|f e d			|d e d
  	<<{\repeat unfold 3 {a a a}	
  		 a\pp a a 	|\repeat unfold 5{a a a}}
        	{\set countPercentRepeats = ##t
        	 \override PercentRepeat #'transparent = ##t
        	 \override PercentRepeatCounter #'staff-padding = #1
        	 \repeat percent 9 { s2. }} >> 
        a4. a,8 a4\semppK	|d e f		 	|e f g
        f a a			|a g f			|g f e
        f f' f			|f e d			|e d cis\CstringTempo
  	d r r 	 		|\OneBarRest

  	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   a4.^\markup{ "Viola" } a,8 a4	|d e f
  		   g'4.^\markup{ "Viol. II" }g,8 g4
  		   \unset fontSize } % return to default size
  		\\
  		  {\override MultiMeasureRest #'staff-position = #4 R2.*2
  		   \once\override MultiMeasureRest #'staff-position = #6 R2.}>> 
  	
  	
        g'4.\pp^\markup {"Solo"} g,8 g4			|d' r r
   	g4. g,8 g4\semppK	|d bes'! bes		
   	<<\repeat unfold 5 {bes bes bes}
   		{\set countPercentRepeats = ##t
        	 \override PercentRepeat #'transparent = ##t
        	 \override PercentRepeatCounter #'staff-padding = #1
        	 \repeat percent 5 { s2. }} >> 

% Rehersal mark R 	
  	\mark \default
  	f'4\pp r r		|R2.*3
    	ees4\pp r r		|\repeat unfold 3 {ees r r}
  	d _\markup  {\null \lower #2 \italic "cresc."}r r |R2.*3
  	d4 _\markup {\null \lower #2 \italic "più cresc."} r r		
  	\OneBarRest		|a4 r r			|\OneBarRest
  	f\f r r			|\OneBarRest
  	a _\markup {\null \lower #2 {\italic {"più." \bold "f"}}} r r
  	\OneBarRest		
  	
% Rehersal mark S 	
  	\mark \default  	
  	a4.\ff a,8 a4		|\repeat unfold 3 {a'4. a,8 a4}	
  	a''4. a,8 a4		|d e f			|e f g
  	f e d			|\repeat unfold 2 {bes' a g |f e d |cis d e
  	d cis d}		|c! d ees		|g a bes
  	a bes c			|bes a g		|ees\f d c
  	bes\f a g		|f'\f ees d		|c\f bes a
  	a,\f bes c		|d\f ees f		|g\f a bes
  	c\f d ees		
  	
% Rehersal mark T	
  	\mark \default 
  	f r r			|\OneBarRest		|g,2.~\p\(\<
  	g			|a			|bes~\>
  	bes			|a\)\!			|bes~\p\(
  	bes			|a4\) r r		|\OneBarRest
  	b2.~\( _\markup  {\null \lower #2 {\italic {\bold "p"} "cresc."}}		
  	b			|bes!
  	a~ _\markup {\null \lower #2 \italic "dim."}			
  	a~			|a\)			|R2.*8
  	
\pageBreak
  	
 	\cresc
  	a'2. \( 		|b~			|b~
  	b			|a~			|a~
  	a			|g\)

% Rehersal mark U	
  	\mark \default		|fis4\ff d, (e8 fis)	|g4-. r fis-.
  	e-. r d-.
	e-. r cis-.		|fis2 (g8 a)		|b!4-. r a-.
	g-. r fis-.		|g-. r e-.		|d-. d' (e8 f!)
	g4-. g-. f-.		|e-. e-. d-.		|e-. e-. cis-.
	f-. f, (g8 a)		|bes!4-. bes-. a-.	|g-. g-. f-.
	g-. g-. e-.		|f4. f8 f4		|f g a
	b r r			|\OneBarRest		|e4. e,8 e4
	e' f g			|a r r			|a, d e
  	fis\p r r		|\OneBarRest		|d\p r r
  	R2.*3
  	
% Rehersal mark V	
  	\mark \default  	
  	\cresc g,4 (f ees)	|ees' (f g)
  	e! (f g)		|g, (f e)		|d-.\f f-. bes-.
  	g\f e' cis		|d\f r r		|\OneBarRest
  	a\f d bes		|g e' cis		|d a' a
  	a a a			|d,\f f, a 		| g\f e' a
  	f\f f, a		|g\f e' a		|\OneBarRest
  	g, \pp cis\( e~		|e2.~			|e4 g, e\)
  	d r r			|d'4. f,8 f4\semppK	|f r r
  	f4. f8 f4		|f r r			|R2.*3_\markup{"G.P."}
	            
	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   d'4.^\markup{ "Viol I." }d,8 d4
  		   \unset fontSize } % return to default size 
  		\\ 
  		  {\once\override MultiMeasureRest #'staff-position = #-8 R2.}>> 
  	
 
	\cresc a'4. a8 a4	|a r r			|a4. a8 a4
	bes r r			|bes 4. bes 8 bes4	|g r r
	e4.\ff e8 e4\fermata 	|\bar "||"

  	<<{\set fontSize = #-4  % make note heads smaller
  	   a'4._\markup{ "Viol I." } a,8 a4	|d e f
  	   \unset fontSize } 
  	\\
  	  {\override MultiMeasureRest #'staff-position = #-4 R2.\Coda R2.}>> 
  	   \revert MultiMeasureRest #'staff-position
 
  	 d4.\pp d,8 d4		|g a bes

 	
  		<<{\set fontSize = #-4  % make note heads smaller
  		   a'4.^\markup{ "Viol I." }a,8 a4	|d e f
  		   \unset fontSize } % return to default size 
  		\\
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.*2}>> 
  		   \revert MultiMeasureRest #'staff-position
  	
	
  	
  	d4.\pp d,8 d4		|g a bes		
  	\cresc a'4.^\markup {\italic "stringendo il tempo"} a,8 a4
  	d e f			|\repeat unfold 3 {a4. a,8 a4 | d e f}
  	\bar "||"
  	
  	\DstringTempo \Dtime
  	a\ff a, d\f d,		|a'\f a, a''\f a,	|\Dkey
  	d1~\fp			|d2 e			|fis2. (g8 a)
  	g4 g fis fis		|e2 d~			|d e
  	fis2. (g8 a)		|R1_\markup{"G.P."} ^\markup{\bold "1"}
  	a4\ff a, d\f d,		|a'\f a, a''\f a,	|d r r2\fermata 
  	\bar "|."	

	} % end music
%} % end transpose
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


