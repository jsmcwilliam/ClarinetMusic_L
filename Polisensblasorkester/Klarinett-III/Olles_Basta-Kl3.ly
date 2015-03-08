% Created on Fri Oct 21 12:00:29 CEST 2011
\version "2.14.2"

\header {
	title = "Olles Bästa" 
	subtitle = "Klarinette III i Bb" 
 	composer = "Musik: Olle Adolphson" 
 	arranger = "Arr: Robert Sjölin" 
% 	opus = "" 
% 	instrument = "Klarinette in B" 
 	copyright = "Polisens Blåsorkester" 
 	tagline = "Kopierad av John McWilliam" 

}

%\include "svenska.ly"
\include "globals.ly"



staffClarinetInBb = \new Staff {

	\set Staff.midiInstrument = "clarinet"
	\clef treble
	\relative c' { 
		\Atime \Akey \AstringTempo
		\compressFullBarRests
%		\set Score.markFormatter = #format-mark-box-alphabet
%		\set Score.markFormatter = #format-mark-box-letters
		\override DynamicLineSpanner #'staff-padding = #2
		d'1~\startTrillSpan \f \bar "||"
		\repeat unfold 4 {d1~} d4\stopTrillSpan r4 r2
		R1*2 \bar "||" \break
		
		\Btime \Bkey \BstringTempo
		R2.*4_\markup {accel.}  \bar "||"
		e!2.~\f ^\markup {\bold "Temp di valse"}
		\repeat unfold 6 {e~} | e2. (| d4) b2^^
		r4 b2^^\dim |r4 c2^^ |r4 a2\!
		
% Rehersal mark A
        \mark \default
	\repeat volta 2 {
		
	<<{\set fontSize = #-4  % make note heads smaller
	\stemUp \slurDown \tieDown		
  		d,2.~\p^\markup{ "2: Trumbon" } d2. |c2.~ |c2. |b2.~ |b2.
		c2.~ |c2. |d2.~ |d2. |c2.~ |c2. |b2.~ |b2. |c2 (d4 |d2.) 
  		\stemNeutral \tieNeutral \stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #6 R2.*15}
  		 \revert MultiMeasureRest #'staff-position >> 
		
% Rehersal mark B
        \mark \default		
		r4\f b'8 (cis b4)|r4 cis8 (dis cis4)|r4 b8 (cis b4)|
		r4 cis8 (dis cis4) |r4 b8 (cis b g |b4) r4 r |r a8 (b cis4)
		cis8 (b a4) r4|r des8 (ees des4) |r4 ees8 (f ees4) 
		r4 des8 (ees des4) |r4 ees8 (f ees4) |r4 cis8 (dis cis a 
		cis4) r4 r |R2.*2_\markup {poco rit.} \bar "||"
		
% Rehersal mark C
        \mark \default
        e2.~\mf^\markup {\concat {\char#192" la Glenn Miller"}} |e4 (d dis 
        e g a |e ees d |e2.~
        e2.) |R2.*2 |r4 fis,4\f (a |fis2. |r4 fis2^^ |r4 fis2^^ |r4 e4 g
        b2.) |a2.(|g2\> fis4\!)
        
% Rehersal mark D
        \mark \default
        e'2.~\mf (|e4 d dis |e g a |a2 fis4 |f2.~ |f4) dis2 (|e2. |
	ees) |b~\f |b |b4 b b |b c d |r4 c8 (g c4) |r4 a8 (fis a4) |r4 b2^^
	r4 b2^^ |r4\dim c2^^ |r4 a2^^	
	} %end repeat
	
	r4^\markup {rit.} b2^^ |r4 b2^^ |r4 b2~ |b2\fermata r4\! \bar "||"
	\Atime \Ckey \CstringTempo
	\OneBR |r8. ees,16\f [(des8.) b16] (c2) |
	r8. fis'16 \times 2/3 {fis8 [fis fis]} fis2
	r8. g16 \times 2/3 {g8  [g g]} g2\fermata
	
% Rehersal mark E
        \mark \default
	\repeat volta 2 {
	R1*3^\markup {"Rubate"}
	
	<<{\set fontSize = #-4  % make note heads smaller
	\stemUp \slurUp		
  		f,2.\rest^\markup{ "Piston 2" } f8.\rest f16\mf (
  		e8.) e16 e4~ \times 2/3 {e8 [b b] b [(c d)]}
  		e4 c f4\rest f8.\rest e16 | d8. d16 d4~ 
  		\times 2/3 {d8 [a a] b ([bes c])}
  		d4 (ees f) f4\rest 
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #4 R1*5}>> 
  	
  	d'1\p | d4 (c b2) \OneBR
	} % end repeat

	\alternative {
		{\OneBR}
		{\OneBR}
	} % end alternatives	
	
	\bar "||" \Dkey
	r8.^\markup {Rytmiskt} c16\p (f4-.) r8. c16 (ees4-.)
	r8. bes16 (d4-.) r8. g,16 (c4-.) |r8. c16 (f4-.) r8. c16 (ees4-.)
	r8. bes16 (d4-.) r2 |R1*2 |c4\f c c c8. c16 |b4 c8. d16 e2
	r8. c16\p (ees4-.) r8. c16 (ees4-.) |r8. bes16 (d4-.) r8. g,16 (c4-.)
	r8. c16 (ees4-.) \times 2/3 {a,8 (fis a} fis) r8
	r8. bes16 (d4-.) r8. g,16 (c4-.) |d2\f (e |d des) |c (d! |e f)
	\fermata\breathe g,2~\p\< g2\f\!\fermata
	
% Rehersal mark F
        \mark \default
        \Ckey \Btime \DstringTempo

	\repeat volta 2 {
	
	<<{\set fontSize = #-4  % make note heads smaller
	\stemUp		
  		f4\rest^\markup{ "Horn IV" } g,4\mf g
  		\set countPercentRepeats = ##t
%  		\set repeatCountVisibility = #(every-nth-repeat-count-visible 2)
  		\repeat percent 5 { f'4\rest g,4 g }
  		g2. |\repeat percent 4 { f'4\rest g,4 g }
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #4 R2.*11}>> 
  	
  		r4 r d''\f |\repeat percent 3 {d4 d8 d d d} |d4 r r

% Rehersal mark G
        \mark \default
        
        	<<{\set fontSize = #-4  % make note heads smaller
        	\stemDown		
  		a4\p^\markup{ "Altsax I" } a8 a a b 
  		c4 b a |a g4. c8 |c,4. c8 c4 		
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #4 R2.*4}>> 
  	
  	R2.*2\pageBreak |e,4\f e4. g8 |c2 r4

        	<<{\set fontSize = #-4  % make note heads smaller
        	\stemDown		
  		a'4\p^\markup{ "Altsax I" } a8 a a b 
  		c4 b a |a g4. c8 |c,2 f4\rest		
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #4 R2.*4}>> 
  		
  	d'2.~\f d2.~ d2. (e2.~)
  	}
  	\alternative {
  		{e4 r r}
  		{e4\repeatTie r d\f \bar "||"}
  	}
  	
  	\Ekey
  	b4 b8 b b cis |d4 cis b | b a4. d8 | d,4. d8 d4 |r4 cis'-> cis->
  	r4 cis-> cis-> |a-> a4.-> d8-> |fis2-> d4->\mf |b4 b8 b b cis |d4 cis b
  	b a d |d,2 r4 | e'2.~\f |e2.~ |e2. (|fis2.~) |fis4 r4 fis-> |g2.~ |g
  	fis2.~ |fis4 r4 r |\OneBarRest \bar "||"
  	
% Rehersal mark H
        \mark \default
	\Dkey \Atime 
	R1*4^\markup \bold{Marcia}
	\repeat volta 2 {
		r4 g,4\mf (a2) |r4 f4 (a2) |r4 e4 (a2) |r4 g4 (a8 c a4) |R1*2
		r4 f4 (a g |f2.) 
		
<<
	\new Voice = "melody1" {
	\autoBeamOff
	f'8^\markup {Sjung.........} f\bar "||" 

% Rehersal mark I
    \mark #9
        
    	g8. f16 f8 d bes d f d
    	d8. c16 c8 f f,4 a8 c |c8. bes16 bes8 g e g bes d 
    	d8. c16 c8 a f4 f'8\f [f] 
    
    	}
    	\new Lyrics \lyricsto "melody1" {
    	Det var grabb- ar- na från E- ken, det var grabb- ar med ku- lör, 
    	det var grabb- ar- na som var på ett sju- hel- vä- tes hu- mör.
    	}
>>
	\autoBeamOn	
	g8. [f16 f8 d] bes d f d |d c f8. f16 f,4 c'8 f 
	d8. d16 d8 bes e, e g bes
	} % end repeat volta	
	\alternative {
		{a4 r4 r2 \OneBR}
		{a4_\markup {\bold "Meno"} r4 r f'\f}
	}% end alternative	
	g8.^\markup {\bold "Molto marcato"} [f16 f8 d] bes d f d 
	d c c f f,4 a8 c 
	c8. [bes16 bes8 g] ees (g) bes d 
	d c c a f4 f'8_\markup {\bold "A tempo"} f
	g8. [f16 f8 d] bes d f d |d [c f8. f16] f,4 c'8 f 
	d8. [d16 d8 bes] e, e g bes|a4 r4 r2 |f'4 f8. f16 e2 (\fermata \bar "||"
  	
% Rehersal mark J
        \mark \default
        \time 2/2 \EstringTempo
        d4) r4 r2 |R1*3 \bar "||"
        
        <<{\set fontSize = #-4  % make note heads smaller
        	\stemUp		
  		f,4\rest^\markup{ "Horn IV" } a,4--\p f8\rest a8-. f4\rest 
  		f4\rest g4-- f8\rest g8-. f4\rest 
  		f4\rest g4-- f8\rest g8-. f4\rest |f4\rest a4--
  		\stemNeutral
		\unset fontSize } % return to default size 
  	\\
  		{\override MultiMeasureRest #'staff-position = #4 R1*3 e''2\rest
  		}>> 
        
        r4 f,4\mp |d'4 d8 d~ d cis d4 |f4 f8 f~ f d bes4 
        bes bes8 bes~ bes g bes4 |des (c) r4 c,\mf |a'4 a8 a~ a g a4 
        bes bes8 bes~ bes g a4 |e4 e8 e~ e d e4 |d (c) r c |a'4 a8 a~ a g a4 
        bes bes8 bes~ bes g f4 |e4 e8 e~ e d e4 |g (f) r8 
  	  
<<	
	\new Voice = "melody2" {
	\autoBeamOff
	c'4.^\markup {Sjung.........}

% Rehersal mark K
        \mark \default 
	\repeat volta 2 {
	 a4 a a8 a4 g8~ |g4. g8~ g4 r8 g8 |g4 g8 g~ g g g4 |f2. r4
	\times 2/3 {r4 c f} 
	\times 2/3 {a d a} |e4 e8 d~ d c bes4 |e4 e8 d~ d c bes4
	}
	\alternative {
		{a2 r8 c'4.}
		{a,4 r4 r2 \bar "||"}
	}%end repeat
    	}%end melody2
    	
    	\new Lyrics \lyricsto "melody2" {
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La,
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La.
    	}
    	
>>    	
  


\autoBeamOn	
% Rehersal mark L
        \mark \default
	\Bkey 
	d1\mf (e fis g2) r4 d'4\mf |e e8 e~ e dis e4 |g g8 g~ g e c4
	c c8 c~ c a c4 |ees (d) r2 |R1*4 |r4 e2.->\ff |r4 g2.-> |r4 a2.->
	r4 b~-> b8 r r4
	
% Rehersal mark M
        \mark \default
	\repeat volta 2 {	
        R1*3\pageBreak |e,4\ff d8 e~ e g e4 |\times 2/3 {r4 g,\mf (b} \times 2/3 {e g e}
        fis) fis8 e~ e ees d4 |fis fis8 e~ e ees d4} 
        \alternative {
        	{b2 r}
        	{b4 r r2}
        }
        r4 e8->\ff e-> e4-> r4 \bar "||"
        
% Rehersal mark N
        \mark \default
	\DstringTempo \Dkey \Btime
	R2.*12 
	
% Rehersal mark O
        \mark \default
	\repeat volta 2 {
	R2.*3^\markup {"Allegro"}
	r4 r d~\mf |d d d |d (dis e | g e2 |ees) r4 
	
	<<{\set fontSize = #-4  % make note heads smaller
           \stemDown		
  	    ees,2.\f^\markup{ "Altsax II" } (f) ees~\> ees2\! f4\rest		
  	   \stemNeutral
	   \unset fontSize } % return to default size 
  	\\
  	  {\override MultiMeasureRest #'staff-position = #4 R2.*4}>> 
  	  
  	R2.*4 |des'2.~\f |des |c4 (ees c |bes2.~ |bes) 
  	des2.\mf^\markup {\bold "Rit......"}
  	(c) |\OneBarRest \bar "||"
  	
% Rehersal mark P
        \mark \default  
	R2.*8^\markup {\bold "Moderato"}
	d\p (c b~ b) bes!~ (bes a) |r4 d4\mf (e 

% Rehersal mark Q
        \mark \default	
	g) g g |f2 (des4 |f2) f4 
	r c (ees |f) f f |des2. d! |r4 a (cis |d) d d |c!2. (|d2) d4 |r b2
	(des4) des des |bes!2. (|c~) }
	
	\alternative {
		{c4 r r}
		{c4\repeatTie r r \bar "||"}
	}
	
% Rehersal mark R
        \mark \default
        \Akey
	<<{\set fontSize = #-4  % make note heads smaller
           \stemUp \slurDown		
  	    d,4\p^\markup{ "Bar. sax." } (des c |b bes a) |bes (b c |des c b)
  	    bes (b bes |a aes g |aes a bes |a) f'4\rest f4\rest
  	   \stemNeutral
	   \unset fontSize } % return to default size 
  	\\
  	  {\override MultiMeasureRest #'staff-position = #4 R2.*8}>> 
	
  	  g'2.\f (f e!~ e) ees!~ (ees d) 
  	  \set fontSize = #-4  % make note heads smaller
  	  r4 d\p^\markup {Vissling...} (ees
  	  
% Rehersal mark S
        \mark \default  	  
  	  f) f f |ees2 (d4 |ees2) ees4 |r c (d |ees) ees ees 
  	  d2 (c4 |d2.) |r4 bes (c |d) d d |c2 (bes4 |c2) c4 
  	  r a_\markup {Rit.....................} (bes |c) c c |bes2 (a4 |bes2.~ 
  	  bes4) r r
  	  \unset fontSize % return to default size 
  	  ees\f^\markup {\bold Lanto} ees ees |des2. \bar "||"
  	  
% Rehersal mark T
        \mark \default  
        \time 2/2
        d!8^\markup {\bold "Allegro"} d d4 d d~ |d1 |des8 des des4 des des~
        des1 |c8 c c4 c c~ |c2. c4~ |c1~ c fis~ |fis4 r r2 
        s4\fermata c2\rest s4\fermata |s4\fermata c2\rest s4\fermata \bar "||"
        
% Rehersal mark U
        \mark \default
        \repeat percent 2 {d8-.\f^\markup {\bold "A Tempo"} d-. d4-. d-. d-.} 
        \repeat percent 2 {ees8-. ees-. ees4-. ees-. ees-.} 
        ees8-. ees-. ees4-. ees-. e!-. |ees!8-. ees-. ees4-. ees-. ees-.
        d8-. d-. d4-. d-. d-. |d-. aes'--\mf aes-- aes-- |g4.~ g8 g4 (ees)
        ees~ ees ees4. (cis8) |d2 (bes) |r4 d, (ees d |cis) a (g a 
        a a a4. a8 |g1 |fis4) r r2 
        
% Rehersal mark V
        \mark \default
        \repeat percent 2 {d''8-.\f^\markup {\bold "A Tempo"} d-. d4-. d-. d-.} 
        \repeat percent 2 {ees8-. ees-. ees4-. ees-. ees-.} 
        ees8-. ees-. ees4-. ees-. e!-. |ees!8-. ees-. ees4-. ees-. ees-.
        d8-. d-. d4-. d-. d-. |d-. aes'--\mf aes-- aes-- |g4.~ g8 g4 (ees)
        ees~ ees ees4. (cis8) |d2 (bes) |\OneBR |r4 bes' (a g |f e! ees d)
        \repeat percent 2 {d8-.\f^\markup {\bold "A Tempo"} d-. d4-. d-. d-.} 
        d-. r r2
        
	<<{\set fontSize = #-4  % make note heads smaller
           \stemUp \slurDown		
  	    f,8\rest d4.~\mf^\markup{ "Ten. sax." } d2 \bar "||"
  	    
% Rehersal mark X
        \mark #24 	    
  	   \Ckey 
  	   c4.~ c8 c4 (d |\times 2/3 {e f d} e g) |f (ges f e |ees2) d (|d c
  	   \times 2/3 {b4 c ais} \times 2/3 {b d f} |g1~) |g4 f\rest f2\rest
  	   \stemNeutral
	   \unset fontSize } % return to default size 
  	\\
  	  {\override MultiMeasureRest #'staff-position = #4 R1*9}>> 

  	r2 a'~\mf |a1 |g2 (e |c4) g (a g |fis) fis (a c |ees) ees (d c d1~
  	d8) r r4 r2 \bar "||"
  	
% Rehersal mark Y
        \mark \default
	\key ees \major	 
	r2 c'\f (|b! bes |aes2. bes4 |c) r r2 |r4 bes2-> bes4~->
	bes f2-> f4~-> (|f bes, ees d |des) r r2
 	\repeat percent 3 {ees8-.\p ees-. d4-. c-. d4-.} |ees-. r r2 |\OneBR
 	\repeat percent 2 {ees8-.\p ees-. d4-. c-. d4-.} |ees-. r r2 |r2 r4 f,\p 
 	c'4 c8 c~ c bes c4 | ees ees8 ees~ ees c bes4 |aes1~\cresc |aes~ aes~
 	aes a~ a2\! r |R1*3 |e'!~\ff e\fermata
 	
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


