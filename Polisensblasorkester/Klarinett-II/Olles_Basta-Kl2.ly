% Created on Fri Oct 21 12:00:29 CEST 2011
\version "2.14.2"

#(set-global-staff-size 15) % set staff-size when ready to print

\header {
	title = \markup {\concat {"Olles B"\char#228"sta"}}
	subtitle = "Klarinette II i Bb" 
 	composer = "Musik: Olle Adolphson" 
 	arranger = \markup {\concat {"Arr: Robert Sj"\char#246"lin" }}
% 	opus = "" 
% 	instrument = "Klarinette in B" 
copyright = \markup {\concat {"Polisens Bl"\char#229"sorkester"}} 
 	tagline = "Kopierad av John McWilliam" 

}

%\include "svenska.ly"
\include "globals.ly"



staffClarinetInBb = \new Staff {

	\set Staff.midiInstrument = "clarinet"
	\clef treble
	\relative c' { 
		\time 4/4 \key bes \major \tempo \markup {\bold "Grandioso"}
		\compressFullBarRests
		\override BreathingSign #'text = 
		  \markup { \musicglyph #"scripts.caesura.curved" }
		\override DynamicLineSpanner #'staff-padding = #2
		d'1~\startTrillSpan \f
		\repeat unfold 4 {d1~} d4\stopTrillSpan r4 r2
		R1*2 \bar "||" \break
		
		\time 3/4 \tempo \markup {"poco piu"} 
		R2.*2
		r4 ees\mf^\markup {accel.} (des |ees2.) \bar "||"
		a2.~\f ^\markup {\bold "Temp di valse"}
		\repeat unfold 6 {a~} | a2. (\bar "||" \key g \major
		g4) d2^^ |r4 d2^^\dim |r4 d2^^ |r4 c2\!
		
% Rehersal mark A
        \mark \default
	\repeat volta 2 {
		
	<<{\set fontSize = #-4  % make note heads smaller
		\stemDown \slurUp		
  		b'4\p^\markup{ "Oboe II" } (g fis |e fis g) |g (fis e |d c d) 
  		b4. b8 b4 |e e e |e (fis g |fis2.) |b4 (g fis |e fis g) 
  		g (fis e |d c d) |b4. b8 b4 |e e e |e (g d |b2.) 
  		\stemNeutral \slurNeutral
  		\unset fontSize }% return to default size 
  	\\
		{\override MultiMeasureRest #'staff-position = #-2 R2.*16}>>
  		 \revert MultiMeasureRest #'staff-position  
		
% Rehersal mark B
        \mark \default		
		r4\f e8 (fis e4)|r4 fis8 (gis fis4)|r4 e8 (fis e4)
		r4 fis8 (gis fis4) |r4 e8 (fis e cis |e4) r4 r |r cis8 (e a4)
		a8 (e cis4) r4|r fis8 (gis fis4) |r4 gis8 (ais gis4) 
		r4 fis8 (gis fis4) |r4 gis8 (ais gis4) |r4 fis8 (gis fis dis 
		fis4)
		<<{\set fontSize = #-4  % make note heads smaller
		\stemDown \slurDown
		g,4_\markup {2:a Piston} (a |g2.)
		\stemNeutral \slurNeutral
  		\unset fontSize }% return to default size 
  	\\
  		{d'4\rest d4\rest^\markup {\bold {Poco Rit.}}
		 \override MultiMeasureRest #'staff-position = #4 R2.}>>
  		 \revert MultiMeasureRest #'staff-position  

		R2.^\markup{\normalsize\number 1} \bar "||"
		
% Rehersal mark C
        \mark \default
        g2.~\mf^\markup {\concat {\char#192" la Glenn Miller"}} |g4 (e fis 
        g a b |g fis e |g2.~ |g2.) |R2.*2 |r4 c,4\f (d |c2. |r4 c2^^ |r4 a2^^ 
        r4 g4 cis |e2.) |cis2.\>(|c!\!)
        
% Rehersal mark D
        \mark \default
        g'2.~\mf (|g4 e fis |g a b |c2 a4 |g2.~ |g4) f2 (|g2.~ |
	g) |d\f ( |dis) |e4 e dis |d fis g |r4 e8 (c e4) |r4 c8 (a c4) |r4 d2^^
	r4 d2^^ |r4\dim d2^^ |r4 c2^^	
	} %end repeat
	
	r4^\markup {rit.} d2^^ |r4 d2^^ |r4 d2~ |d2\fermata r4\! \bar "||"
	
	\time 4/4 \key c \major
	r8.^\markup {\bold {Moderato}} ees16\f [(des8.) b16] (c2)
	r8. g16 [(f8.) dis16] (e2) |r8. b''16 \times 2/3 {b8 [b b]} b2
	r8. b16 \times 2/3 {b8  [b b]} b2\fermata
	
% Rehersal mark E
        \mark \default
	\repeat volta 2 {
		
	<<{c,2\repeatTie^\markup {"Rubate"} r2 }
  	\\
  		{\override MultiMeasureRest #'staff-position = #-4 R1}>> 
  	
  	r2 r8. ees16\p [(des8.) b16] ( |c2) r2 |r2 r8. ees16\f [(des8.) b16] (
  	gis4) r4 r2 |R1*3 |g'1\p |g4 (e2.) |R1^\markup{\normalsize\number 1}
	} % end repeat

	\alternative {
		{r2 r8. ees16 [(des8.)
		\once \override Slur
                #'control-points = #'((1 . 1) (3 . 1.6) (3 . 1.6) (5 . 1))
                b16] (<>) }
		{R1^\markup{\normalsize\number 1}}
	} % end alternatives	
	
	\bar "||" \key f \major
	r8.^\markup {Rytmiskt} f'16\p (a4-.) r8. fis16 (a4-.)
	r8. d,16 (g4-.) r8. c,16 (e4-.) |r8. f16 (a4-.) r8. fis16 (a4-.)
	r8. d,16 (g4-.) \times 2/3 {r8 bes,\mf (c d e f} 
	g4 e8.) a16 (g4 e8.) e16 ( |f8 g16 f d8.) g16 (f4 d)
	d4\f d e e8. e16 |e4 f8. g16 a2
	r8. ees16\p (g4-.) r8. fis16 (a4-.) |r8. d,16 (g4-.) r8. c,16 (e4-.)
	r8. ees16 (g4-.) \times 2/3 {d8 (c d} c) r8
	r8. d16 (g4-.) r8. c,16 (e4-.) |g1~\f |g |f ( |g2 a)
	\fermata\breathe b,1\p\<\fermata <>\!
	
% Rehersal mark F
        \mark \default
        \key c \major \time 3/4 \tempo \markup {\bold "Tempo di Valse"}

	\repeat volta 2 {
	c,4\mf e, g |c c8 c c c |c4 e4. c8 |g2 g4 |g b a |f f8 f f f |f4 a4. g8	
	e2 g4 |c e, g |c c8 c c c |c4 e4. c8 |g2 g''4\f |g g8 g g g | g4 g8 g g g
	g4 g8 g g g |g4 r 
	
	<<{\set fontSize = #-4  % make note heads smaller
        \stemUp
        c,4
        \stemDown
        
% Rehersal mark G
        \mark \default
        		
  		f4^\markup{ "Oboe II" } f8 f f g |a4 g f 
\pageBreak 		
  		f e4. e8 |c4. c8 c4 
		d,4\f^\markup {Piston II} d8 d d d |f4. f8 f4		
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{e4\rest
  		 \override MultiMeasureRest #'staff-position = #-2 R2.*4
  		 \override MultiMeasureRest #'staff-position = #4 R2.*2}>> 
  	
  	a,4\f a4. c8 |d2
  	
  	<<{\set fontSize = #-4  % make note heads smaller
  		\stemUp
  		c'4
  		\stemDown
  		f4\p^\markup{ "Oboe II" } f8 f f g 
  		a4 g f |f e4. e8 |c2 d4\rest		
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{e,4\rest
  		 \override MultiMeasureRest #'staff-position = #-2 R2.*4}>> 
  		
  	f'2.~\f f2.~ f2. (g2.~)
  	}
  	\alternative {
  		{g4 r e,,8\mf g}
  		{g''4\repeatTie r fis->\f \bar "||"}
  	}
  	
  	\key d \major
  	g4 g8 g g a |b4 a g | g fis4. fis8 | d4. d8 d4 |r4 fis-> fis->
  	r4 fis-> fis-> |d-> d4.-> a'8-> |bes2-> d,4->\mf |b4 b8 b b cis |d4 cis b
  	b a d |d,2 r4 | g'2.~\f |g2.~ |g2. (|a2.~) |a4 r4 a-> |b2. ( |bes
  	a2.~ |a4) r4 r |R2.^\markup{\normalsize\number 1} \bar "||"
  		
% Rehersal mark H
        \mark \default
	\key f \major \time 4/4 
	R1*4^\markup \bold{Marcia}
	\repeat volta 2 {
		r4 c,4\mf (d2) |r4 c4 (d2) |r4 c4 (d2) |r4 c4 (d8 f d4) 
		r d8 (c d4 e) |f (c a f) |r4 bes (d c |c2.) 
		
<<
	\new Voice = "melody1" {
	\autoBeamOff
	f8^\markup {Sjung.........} f\bar "||" 

% Rehersal mark I
    \mark #9
        
    	g8. f16 f8 d bes d f d
    	d8. c16 c8 f f,4 a8 c |c8. bes16 bes8 g e g bes d 
    	d8. c16 c8 a f4 a'8\f [a] 
    
    	}
    	\new Lyrics \lyricsto "melody1" {
    	Det var grabb- ar- na från E- ken, det var grabb- ar med ku- lör, 
    	det var grabb- ar- na som var på ett sju- hel- vä- tes hu- mör.
    	}
>>
	\autoBeamOn	
	bes8. [g16 g8 f] d f aes f |f [d f8. c16] a4 f'8 a 
	g8. [g16 g8 g] g, bes c e
	} % end repeat volta	
	\alternative {
		{c4 r4 r2 |R1^\markup{\normalsize\number 1}}
		{c4_\markup {\bold "Meno"} r4 r a'\f}
	}% end alternative
	
	bes8.^\markup {\bold "Molto marcato"} [g16 g8 f] d f g f 
	f d d c a4 c8 f |ees8. [c16 c8 bes] g (bes) ees g 
	f d d c a4 a'8_\markup {\bold "A tempo"} a
	bes8. [g16 g8 f] d f aes f |f [d f8. c16] a4 f'8 a 
	g8. [g16 g8 g] g, bes c e|c4 r4 r2 |g'4 g8. g16 a2 (\fermata \bar "||"
  	
% Rehersal mark J
        \mark \default
        \time 2/2 \tempo \markup {\bold "Tempo di Calypso"}
        f4) r4 r2 |R1*2 |r2 r4 c\p \bar "||"
        f4 f8 f~ f e f4 |g4 g8 g~ g e d4 
        c c8 c~ c bes c4 |bes (a) r4 a\mp |f'4 f8 f~ f e f4 
        g g8 g~ g e d4 |c4 c8 c~ c bes c4 |e (d) r a\f |f'4 f8 f~ f e f4 
        g g8 g~ g e d4 |c4 c8 c~ c bes c4 |e (d) r8 
  	  
<<	
	\new Voice = "melody2" {
	\autoBeamOff
	c4.^\markup {Sjung.........}

% Rehersal mark K
        \mark \default 
	\repeat volta 2 {
	 c4 c c8 c4 bes8~ |bes4. bes8~ bes4 r8 bes8 
	 bes4 bes8 bes~ bes bes bes4 |a2. r4
	\times 2/3 {r4 c, f} 
	\times 2/3 {a d a} |g4 g8 f~ f e d4 |g4 g8 f~ f e d4
	}
	\alternative {
		{c2 r8 c'4._\markup {La}}
		{c,4_\markup {La} r4 
			<<{\set fontSize = #-4  % make note heads smaller
				\stemUp
				r4^\markup{ "Oboe II" } d'\mf	
				\stemNeutral
				\unset fontSize } % return to default size 
		\\
  				{f,2\rest}>> 

		
		\bar "||"}
	
	}%end repeat
    	}%end melody2
    	
    	\new Lyrics \lyricsto "melody2" {
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La,
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La,
    	}
    	
>>    	
  


\autoBeamOn	
% Rehersal mark L
        \mark \default
	\key g \major
	
	<<{\set fontSize = #-4  % make note heads smaller
	   g'4 g8 g~ g fis g4 |a4 a8 a~ a fis e4 |d4 d8 d~ d c d4 |c4 (b)	
	   \unset fontSize } % return to default size 
	\\
  	   {\override MultiMeasureRest #'staff-position = #-2 R1*3
  	    f2\rest}>> 

	r4 d'4\mf |g g8 g~ g fis g4 |a4 a8 a~ a fis e4
	d d8 d~ d c d4 |fis (e) r2 
	
	<<{\set fontSize = #-4  % make note heads smaller
	   d1\f^\markup {Oboe I} (e fis \stemDown g2 r2)
	   \stemNeutral
	   \unset fontSize } % return to default size 
	\\
  	   {\override MultiMeasureRest #'staff-position = #-2 R1*4}>> 
	
	
	r4 g2.->\ff |r4 a2.-> |r4 c2.-> |r4 d~-> d8 r r4
	
% Rehersal mark M
        \mark \default
	\repeat volta 2 {	
        R1*3|a4\ff g8 a~ a b a4 |\times 2/3 {r4 a,\mf (d} \times 2/3 {g a g}
        a) a8 fis~ fis f e4 |a a8 fis~ fis f e4} 
        \alternative {
        	{d2 r}
        	{d4 r r8 fis,\ff (g gis}
        }
        a4) a'8-> a-> a4-> r4 \bar "||"
       
% Rehersal mark N
        \mark \default
	\tempo\markup {\bold "Tempo di Valse"} \key f \major \time 3/4
	R2.^\markup{\normalsize\number 1}
	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemDown
	   c,2.\mf^\markup {Altsax II} (bes aes a!~ a) (bes~) bes 
	   (f~_\markup {Rit.....}) f (e~) e2 f4\rest	
	   \unset fontSize } % return to default size 
	   \stemNeutral
	\\
  	   {\override MultiMeasureRest #'staff-position = #4 R2.*11}>> 
	
	
% Rehersal mark O
        \mark \default
	\repeat volta 2 {
	R2.*3^\markup {"Allegro"}
	r4 r f'~\mf |f f f |e (fis g | a g2~ |g) r4 |r f2->\f |r4 ees2->
	r4 ees4 (c) |c8 (des c4) 
	
	<<{\set fontSize = #-4  % make note heads smaller
           \stemUp		
  	   c4\f^\markup{ "Oboe II" } ( |bes) bes bes |bes (aes bes |c) c2~
  	   c d4\rest 
  	   \stemNeutral
	   \unset fontSize } % return to default size 
  	\\
  	  {f,4\rest
  	   \override MultiMeasureRest #'staff-position = #-2 R2.*4}>> 
  	  
  	f'2.\f ( |g) |ees4 (f ees |des2. |c) 
  	f2.\mf ^\markup {\bold "Rit......"}
  	(e!) 
  	
	<<{\set fontSize = #-4  % make note heads smaller
	   \stemDown
	   r4^\markup {Oboe I} a\p (bes	\bar "||" 
	   
% Rehersal mark P
        \mark \default  	   
	   c^\markup {\bold "Moderato"}) c c |bes2 (a4 |bes2) bes4
	   r g (a |bes) bes bes |a2 (g4 |a2.) |r4 f (g |a) a a |g2 (f4 |g2) g4
	   r4 e (f |g) g g |f2 (e4 |f2.) 
	   \unset fontSize } % return to default size 
	   \stemNeutral
	\\
  	   {\override MultiMeasureRest #'staff-position = #-2 R2.*16}>> 
  	   
  	r4 f\mf (g

% Rehersal mark Q
        \mark \default	
	a) a a |g2 (f4 |g2) g4 
	r ees (f |g) g g |f2.~ f |r4 des (ees |f) f f |ees2. (|f2) f4 |r d2
	(f4) f f |des2. (|d!~) }
	
	\alternative {
		{d4 r r}
		{d4\repeatTie}
	}

	<<{\set fontSize = #-4  % make note heads smaller
           \stemDown \slurDown		
           a2\p ( \bar "||"
	
% Rehersal mark R
        \mark \default
        \key bes \major
  	    bes4\p^\markup{ "Altsax II" } a aes |g ges f) |fis (g aes 
  	    a! aes g)
  	    fis (g fis |f! e! ees |e! f g |f) f4\rest f4\rest
  	   \stemNeutral
	   \unset fontSize } % return to default size 
  	\\
  	  {d'4\rest d4\rest
  	   \override MultiMeasureRest #'staff-position = #4 R2.*8}>> 
	
  	  g2.\f (f e!~ e) ees!~ (ees d) 
  	  \set fontSize = #-4  % make note heads smaller
  	  r4 d\p^\markup {Vissling...} (ees
  	  
% Rehersal mark S
        \mark \default  	  
  	  f) f f |ees2 (d4 |ees2) ees4 |r c (d |ees) ees ees 
  	  d2 (c4 |d2.) |r4 bes (c |d) d d |c2 (bes4 |c2) c4 
  	  r a_\markup {Rit.....................} (bes |c) c c |bes2 (a4 |bes2.~ 
  	  bes4) r r
  	  \unset fontSize % return to default size 
  	  fis'\f^\markup {\bold Lanto} fis fis |e2. \bar "||"
  	  
% Rehersal mark T
        \mark \default  
        \time 2/2
        ges!8^\markup {\bold "Allegro"} ges f4 e f~ |f1 |f8 f e4 dis e~
        e1 |e8 e ees4 d ees~ |ees2. ees4~ |ees1~ |ees |bes'8 bes a4 gis a~
        a4 r r2 
        s4\fermata c,2\rest s4\fermata |s4\fermata c2\rest s4\fermata \bar "||"
        
% Rehersal mark U
        \mark \default
        \repeat percent 3 {bes'8-.\f^\markup {\bold "A Tempo"} bes-. a4-. g-. a-.} 
        bes8-. bes-. bes4-. a-. g-. |bes8-. bes-. a4-. g-. a-. 
        g8-. g-. bes4-. g-. a-. |bes8-. bes-. a4-. g-. a-.
        bes-. bes--\mf bes-- bes-- |bes4.~ bes8 bes4 (g)
        g (f) f4. (ees8) |f2 (d) |r4 d, (ees d |cis) g (a cis 
        cis cis cis4. cis8 |c!1~ |c4) r r2 
        
% Rehersal mark V
        \mark \default
        \repeat percent 3 {bes''8-.\f bes-. a4-. g-. a-.} 
        bes8-. bes-. bes4-. a-. g-. |bes8-. bes-. a4-. g-. a-. 
        g8-. g-. bes4-. g-. a-. |bes8-. bes-. a4-. g-. a-.
        bes-. bes--\mf bes-- bes-- |bes4.~ bes8 bes4 (g)
        g (f) f4. (ees8) |f2 (d) |r4 d, (ees d |cis) g (a cis |e! e a,4.) r8 
        \repeat percent 2 {bes''8-. bes-. a4-. g-. a-.} |bes-. r r2
        
	<<{\set fontSize = #-4  % make note heads smaller
           \stemUp \slurDown		
  	    f,8\rest e4.~\mf^\markup{ "Altsax." } e2 \bar "||"
  	    
% Rehersal mark X
        \mark #24 	    
  	   \key c \major 
  	   e4.~ e8 e4 (f |\times 2/3 {g aes f} g b) |a (bes a aes |g2) fis (
  	   f! ees |\times 2/3 {d4 ees cis} \times 2/3 {d f a} |b d c b 
  	   bes) f4\rest f2\rest 
  	   \stemNeutral \slurNeutral
	   \unset fontSize } % return to default size 
  	\\
  	  {\override MultiMeasureRest #'staff-position = #4 R1*9}>> 

  	r2 c''~\mf |c b |b4 (a g2|e4) g, (a g |fis) fis (a c |ees) ees (d c |d1~
  	d8) r r4 r2 \bar "||"
  	
% Rehearsal mark Y
        \mark \default
	\key ees \major	 
	r2 c'\f (|b! bes |aes2. bes4 |c) r r2 |r4 bes2-> bes4~->
	bes f2-> f4~-> (|f bes ees d |des) r r2
 	\repeat percent 3 {ees,8-.\p ees-. ees4-. ees-. ees4-.} |ees-. r r2
 	R1^\markup{\normalsize\number 1}
 	\repeat percent 2 {ees8-.\p ees-. ees4-. ees-. ees4-.} |ees-. r r2 
 	r2 r4 f!\p 
 	aes4 aes8 aes~ aes ges aes4 | c c8 c~ c aes ges4 |f1~\cresc |f~ f~
 	f~ f~ f2\! r |R1*3 |a!~\ff a\fermata
 	
	\bar "|."
		
	} %end relative c'
	
} %end new Staff 


\score {
	<<
		\set Score.markFormatter = #format-mark-box-alphabet
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


