% Created on Fri Oct 21 12:00:29 CEST 2011
\version "2.14.2"

\header {
	title = "Konzert Nr.1 f-Moll" 
	subtitle = "fur Klarinette und Orchester" 
 	composer = "Carl Maria von Weber" 
 	arranger = "Bezeichnet von W. Schreinicke" 
 	opus = "Op. 73" 
 	instrument = "Klarinette in B" 
 	copyright = "VEB Breitkopf & Hartel Musikverlag, Leipzig, 1954, 1979" 
 	tagline = "Edition Breitkopf Nr. 1540" 

}

%\include "svenska.ly"
\include "globals.ly"



staffClarinetInBb = \new Staff {

	\set Staff.midiInstrument = "clarinet"
	\clef treble
	\relative c' { 
		\Atime \Akey \AstringTempo
		\compressFullBarRests
		\set Score.markFormatter = #format-mark-box-letters
		\override DynamicLineSpanner #'staff-padding = #2
		\override BreathingSign #'text = \markup {
			\musicglyph #"scripts.caesura.straight"}
%		\textLengthOn  % Cause notes to space out to accommodate text
		s2. % invisible rest
		\clef "bass^15"
		\set Score.currentBarNumber = #1
		<<{\set fontSize = #-4  % make note heads smaller
		   \stemDown \slurDown		
  		   f2^\markup{ "Vcll., K.-B." }aes8.-. (aes16)
  		   c8 a8\rest a-. a8\rest f-. a8\rest | e!4-. c' a4\rest
  		   d-> (c)a4\rest 
  		   \stemNeutral
		   \unset fontSize } % return to default size 
  		\\
  		  {\override MultiMeasureRest #'staff-position = #4 R2.*4}>> 
  		   
  		  R2.*6 | R2.^\fermataMarkup
  		  \clef treble
  		  <<{\set fontSize = #-4  % make note heads smaller
		   \stemUp \slurUp		
  		   g'2^\markup{ "Viol.I, Fl.I" }bes8.-. (bes16-.)
  		   d4-. bes-. (g-.)
  		   \stemNeutral
		   \unset fontSize } % return to default size 
  		\\
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.*2}>> 
  		  R2.*6
  		  
% Rehersal mark A
        \mark \default
        
        R2.*18
        
% Rehersal mark B

        \mark \default
        
        R2.*4
        <<{\set fontSize = #-4  % make note heads smaller
		\stemUp \slurUp		
  		g,2^\markup{ "Viol.I" }bes8.-. (bes16-.)
  		d4-. bes-. a 	| g e'-. r
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #-4 R2.*3}>> 
  		 \OneBarRest
  		
  		<<{\set fontSize = #-4  % make note heads smaller	
  		fis4^\markup{ "Viol.I" } d r
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  		\OneBarRest 
  		\bar "||" 
  		\break % force new line
  		
  		\mark Solo
  		bes'2.^\markup {\bold "Tempo poco ritenuto"}\p 
  		\(\padText #2 fis2_\markup {\center-align \italic "con duolo"} 
  		g4\< 		 |d2-> \acciaccatura {f8} ees8.\> d16 | d2\!\) r4
  		c'2\p (fis,4	 |a2 c,4	        |bes2->\< d8\> c16 bes
  		bes2\!) r4
  		bes'4--\p \(fis g\<|d4.-> \acciaccatura {f8} ees8\> d4\!\) 
  		bes'4--\mf \(fis g\< |d4.-> \acciaccatura {f8} ees8\> d4\!\)
  		g-> (c,8) r r4   |r r8 fis\mf\< (g) a-. |bes2\f\> (cis,8)\! r
  		\OneBarRest
  		
  		d4~\p^\markup {\italic {accelerando poco a poco}} 
 		\set tupletSpannerDuration = #(ly:make-moment 1 4)
  		\times 2/3 {d8 ([bes a] g\<) bes-. (d-.\!)}
  		ees4~ (ees16 c a g \times 2/3 {fis8) ees'-. (d-.)}
  		d4~\p\< \times 2/3 {d8 ([bes a] g) bes-. (d-.\!)}
  		ees4~ (ees16\cresc c a g \times 2/3 {fis8\<) ees'-. d-.\!}

% Rehersal mark C
        \mark \default  		
  		
  		g8->\mf (fis16) r bes8->\< (a16) r d8-> (c16\! r)
  		ees4..\f \breathe fis,16
  		  << { fis4^\trill_( }
  		     { s8. s32 \grace { e!16[ fis]) } } >>
  		g8->\< (a-> bes-> b!-> c-> cis->\!)
  	        d16\f (c! bes a g fis ees d c bes a g
       	        fis8\noBeam) \breathe 
  	        c''16 a fis8.\< d16
        	\times 4/6 {c (a fis d c a\>)}
  		g2.^\markup {\italic {a tempo \line{ ten.}}}
  		R2. *2\!
  		c''2_\markup {\concat { \dynamic p} \italic {dolce}} 
  		\(fis,4\< \acciaccatura {fis8} a4--\> g8\!\) r r4
  		R2.*2
  		fes2\pp (fis,,4-.	|g2.~)^\markup {\italic morendo}		
  		g4 r r 			|R2.^\fermataMarkup
  		\clef "bass^8"
  		
% Rehersal mark D
        \mark \default 

        	<<{\set fontSize = #-4  % make note heads smaller
		   \stemUp \slurUp		
  		   des'2^\markup{ "Vcll., K.-B." }f8.-. (f16)
  		   a4-. f-. d-.
  		   \stemNeutral
		   \unset fontSize } % return to default size 
  		\\
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.*2}>> 

  		  \clef treble  
  		  bes'2.\<\p^\markup {\italic {con anima}}
  		  aes'2( g8.\> f16)	|\acciaccatura {g8} f8--\! (ees4.) r4
  		  \OneBarRest
  		  bes2.\p
  		  aes'2\< (g8.\! f16)	|\acciaccatura {g8} f8-- (ees4.) r4
  		  \OneBarRest
  		  f2.~\mf\<		|f8 c'_\markup {espr.}\> (bes aes g f)
  		  d4~ \times 2/3 {d8\!\( [f-- ees] d ees f}	|ees2.\)
  		  r8 a,!8\< (bes-. d-. ees-. f-.)\!
  		  \>ges2-- (a,4\!	|bes4.) \breathe f8\< 
  		  \acciaccatura {c'8} bes16 [(a bes c)]\!
  		  des2->~ (c8.) bes16	|bes4.\f bes'16-. \(a-. a (g) g-. (f-.)
  		  f (e!) e-. (d-.)_\markup {\italic perdendosi} d (c) c-. b!-. 
  		  d-- (c g-.) a-.	|f2\) 
        
  		  <<{\set fontSize = #-4  % make note heads smaller
		   \stemUp \slurUp		
  		   \partial 4 f4^\markup{ "Viol.I" } f-> f-> f->	
  		   d2^\markup {"Viol.I, Fl."} 
  		   
  		   	<< { a'4^\trill_( }
  		   	   { s8. s32 \grace { g16[a]) } } >>
  		  
  		   bes2 b!4		|c2 f8. ees16		|c8. (d16) c4 r
  		   
  		   \stemNeutral
		   \unset fontSize } % return to default size 
  		\\
  		  {r4
  		  \override MultiMeasureRest #'staff-position = #-6 R2.
% Rehersal mark E
        \mark \default
  		  \override MultiMeasureRest #'staff-position = #-4 R2.*4}>> 
  		  
  		  bes'2_\markup {\dynamic f \italic {con anima}} (a8 g
  		  	f4. e!8\noBeam ees d16-. c-.)	
  		  bes4. a8 \acciaccatura {c8} bes16 (a bes c)	|d2-> (c8) r
  		  c'2\f (bes8-- a--	|g4. f8\noBeam e! ees16-. d-.)
  		  c4. \(b!8\noBeam 
  		  \once\override Script #'extra-offset = #'(2.0 . 0) 
  		  c8.\turn f16 cis2\p (d8)\) r
  		  f4.->\f^\markup {\italic {con tutta forza}} d8 (bes) f 
  		  d4-> bes-> f->	|g2.->
  		  bes''2~ bes8\breathe e,,,! 
  		  f4. g16-. a-. bes-.\mf c-. d-. ees!-.
  		  f-. g-. a-. bes-. c-.\< d-. ees-. f-. g-. a-. bes-.\! c-.
  		  d2.~\f
  		  
 % Rehersal mark F
        \mark \default 		  
  		  d8.\breathe d16 d8. d16 d8. d16
  		  d2.~\>\(		
  		  d4\!_\markup {\dynamic p \italic {dolce}} 
  		  c8 [bes->] bes-. a16 g 
  		  g8\) r f2~\< \(		
  		  f4~\!\p f16_\markup{\italic{poco rall.}}e! ees d 
  		  \acciaccatura{f8} ees16 d ees c\)\breathe 
  		  \times 2/3 {bes8_\markup {\italic {lusingando e con espr.}}
  		  	[(d f-.)] e! [(f\< d] bes'--\>) a-. (g-.)\!
  		  f--\( [(e! g] f-.) [e ees-.]\) d--\((ees c-.)
  		  bes\)\breathe d-.(f-.)\< 
  		  	e! [(f d] bes'--)\> a-. (g-.)\! 
  		  f--\([(e! g] f-.)[e ees-.]\) d--(ees c-.)
 		  bes8\cresc\breathe d-. (f-.) 
 		  	e! [(f d] aes'--) g-. (f-.)
 		  ees! (g f-. ees-. [d-.) c-.] (bes'-. a!-. g-.)
 		  f (a) a-. (a-. [a-. a-.)] a-> (g f-.)\!
 		  c'->_\markup {\dynamic f \italic expressivo} 
 		  	(bes a bes) [f-. (d-.)] a'-> (g ees-.)
 		  d (e!-. f-. cis [d) bes-.] a (g' f)
 		  d\breathe bes'-. \(a-. bes [f d-.] a'-> (g ees-.)
 		  d\) e! (f-. cis [d\< bes-.] a g' f\!}
 		  d4)\breathe\times 2/3 {g,8-.[a-.bes-.]c-.\<d-.ees
 		  f-. fis-. g-.\! a\f [(bes) fis] (g)\> ees-. c-.\!}
 		  \[g'4\f^\markup {\bold NB } (f!8) r r4	
  		  << { f,,2.\ff^\trill_( }
  		     {s8. s32 \override Stem #'length = #8 
  		     \grace {e!16 [f]) }} >>\]\break\break
  		     
  		  g''4\f^\markup {Baermanns Kadenz} (f8) r r8. a,16\pp
  		  bes_\markup {\italic scherzando} (c d ees-.) e! (f g f-.)
  		  	c'-> (bes a g)
  		  f (e! g f) e\< (ees d c bes a!\! f')\breathe r32 a,
  		  bes16 (c d ees-.) e! (f g f-.) c'-> (bes a g-.)
  		  f (e! g f e\< ees d c bes a f')\!\breathe r32 a, 
  		  bes16\p (c d ees-.) e!\< (f g f-.) e (aes-> g f\!
  		  ees!)\cresc g (fis g f! ees d c-.) cis (bes' a g-.)
  		  f\breathe a (gis a-.) bes--\mf (a g! f e!\> f g a-.\!)
  		  c\p\< (bes) a bes c cis (d) a\! (bes\>) fis (g) ees
  		  d (ees e! f ees d c bes\! a g' f ees
  		  d)\breathe f (g) a bes\< c (d) a (bes) fis (g) ees\!
  		  d-- (ees e! f ees\< d c bes a g' f ees\!
  		  d8--\noBeam\mf)\breathe d,16-. (ees) f g a bes c d ees e!
  		  f\< fis g a bes b! c cis d8 f\!
  		  r16 d\f\noBeam c (bes) a (g) f (e!) ees (d) c (bes)
  		  a (g) f-. e!-.ees-. (d) c-. bes-. a-. g-. f-. e!-.
  		  f2.--\fermata^\markup {\italic Cad.} 
  		  \cadenzaOn % turn off bar lines
  		  
  		  \set fontSize = #-4
  		  e!8--\p \acciaccatura {f8} f32^\markup {\italic ruhig}
  		  \([(e f)] a [(c d ees!)] f\<^\markup {\italic accel.}
  		  [(a c d)] ees [(f a c\!)]\) ees4\fermata\breathe
  		  \times 2/3 {d8\> ([c bes\!])} \stemDown
  		  \times 8/6 {a32--\p ([bes c bes a g] fis\cresc g a g
  		  	  f! ees d [ees f ees d c] b! [c d c bes a]\noBeam 
  		  \stemUp g [f e! f g f] ees!
  		  [d f ees d c] b! [c^\markup {\italic rit.} d c bes! a] 
  		  bes\< [a c bes a g\!])} 
  		  \once \override Script #'extra-offset = #'(1.0 . 0)
  		  f4
  		  
  		  \turn  d' c8. [bes16]

  		  
	\bar "|."
	} %end relative c'

} %end new Staff


\score {
	<<
		\staffClarinetInBb
	>>
	
	\midi {
	}

	\layout {
		\context {
			\Score
			\override SpacingSpanner
			#'base-shortest-duration = #(ly:make-moment 1 8)
			 } %end context
		} % end layout

	} % end score

\paper {
}


