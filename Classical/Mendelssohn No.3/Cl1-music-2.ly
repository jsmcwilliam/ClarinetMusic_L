\version "2.12.3"      %Mendelssohn Symphony No. 3 - Clarinette 1
 		       %II. Scherzo assai vivace                   
\include "Globals.ly"

padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})

\relative c'{
	\clef treble
	\Etime \Ekey \EstringTempo
	\compressFullBarRests
	\override DynamicLineSpanner #'staff-padding = #2
	
	R2*7
	r4 r8. d16\p
	g16 (a b d b a g a)
	b8. [d16 g8. d16]
	e8. [e16 g8. e16]
	d8 (b4) r16 d,16
	g16 (a b d b a g a)
%14
	b8. [d16 g8. b16]
	a8. e16 g (fis) e d
	d8 (g4) r16 d,16
	g16 (a b d b a g a)
	b8. [d16 g8. d16]
	e8. [e16 g8. e16]
	d8 (b4) r16 d,16
	g16 (a b d b a g a)
%22
	b8. [d16 g8. b16]
	a8. e16 g (fis) e d
	d8 (g4) b,8\f	
	e8. (fis16) g8-. a-.
	b2~\< b~\> b4. b,8\f
	g'8. (a16) b8-. cis8-.
	d2~\< d~\> d~\! \mark \default
%33
	d~\dim d~ d4 (c)
	b2~\cresc b~ 
	b4~ b8. b16
	a8.-> e16 g (fis) e d 
	d8 (g4) b,8\f
	e8. [(fis16) g8-. a8-.]
	b2~\sf\< b\> b4.\! b,8
	g'8. [(a16) b8-. cis8-.]
%46
	d2~\sf\cresc d~ d~ d~\ff d~ d4 (c)
	b2~ b~ b4~ b8. b16
	a8. e16 g (fis) e d
	d8 g4 r8
	R2*3
	r4 r8. e,16\f 
	a,16 (b cis) e cis (b a) b
%62
	cis8. [e16 a8. a,16]
	\override DynamicLineSpanner #'staff-padding = #3.5
	b16 (cis_\markup {\italic \medium "più"} d) fis\f d (cis b cis)
	\override DynamicLineSpanner #'staff-padding = #2
	d8. [e16 b'8. b,16]
	\repeat unfold 2 {cis16 (d e) g e (d cis) d} \mark \default
	cis16 (d e) g e (d cis8)
	R2*16
%84
	r 4 r16 fis'16-.\pp g-. a-.
	g-. dis-. e-. b-. g8 bes'->
	(a4)~ a16 fis-. d-. a-.
	b8-. e-. fis,16-. a-. gis-. g-. \mark \default
	fis4 r8 fis'8
	b2~~\sf 
	b8\p (bes) a4~
	a16 fis-. e-. b-. a-. fis-. e-. a-.
	a8 r8 r r16 d16-.\pp
%93
	d8-. [r16 a16-.] a8-. [r16 fis16-.]
	fis8-. [r16 a16-.] a8-. [r16 b'16-.]
	b16-. d,-. d-. g-. g-. b,-. b-. d-.
	d16-. g,-. g-. b-. b-. d,-. d-. r16
	r8. a'16-. a8-. [r16 d16-.]
	d8-. [r16 fis16] fis8 [r16 fis,16-.]
	e8-. [r16 e16-. e8-. r16 e16-.]
%100
	fis8 r8 r8. fis16\dim
	e8 [r16 e16 e8 r16 e16]
	fis8\! r8 r4 
	R2*9
	r4 r8. b16\f
	gis'4~ gis8. b,16
	e16 (fis gis) b gis (fis e) fis
	gis8. b16 e8. b,16
	c8 e4 a,8
%117
	b16 (cis dis) fis dis (cis b) fis
	g8 b4 g'8
	fis4 (f)
	e8\ff g4.~
	g2~ g4 r4
	r2^\markup {\bold\medium\number 1} \mark \default
	b,16\f b\pp b b b4:16
	b2:16^"1" b2:16^"2" b2:16^"3" b2:16^"4" b2:16^"5" b2:16^"6" 
%131
	c2:16 c:16 c4:16\cresc d:16
	d2:16 d4:16 e:16 e8\! r8 r4
	r2^\markup {\bold\medium\number 1}
	r8. e16-.\p [e8-. r16 e16-.]
	e8-. [r16 e16-.e8-. r16 e16-.]
	fis8-. r8 r4
	r2^\markup {\bold\medium\number 1}
	r8. fis16 [a8 r16 fis]
%143
	a8 [r16 fis16 d8 r16 a16]
	d8 r8 r4
	r2^\markup {\bold\medium\number 1}
	r8. bes16 [d8\cresc r16 bes16]
	d8 [r16 bes16] g8 [r16 d'16]
	cis2~ cis2~
	cis8 [r16 cis16\f] e8 [r16 cis16]
	e8 [r16 cis16] a8 r8 \mark \default
	r2^\markup {\bold\medium\number 1}
%153
	r4 r8. fis,16\p 
	g16 (a bes) d bes (a g) a
	bes8 r8 r4
	r2^\markup {\bold\medium\number 1}
	r4 r8. d16
	g16 (a bes) d bes (a g) a
	bes8 r8 r4
	r2^\markup {\bold\medium\number 1}
	r4 r8 a'8-.\p
	a8-. g-. fis-. e-.
%163
\grace {d16 ([e]} d8) fis16-. d-. a8-. b16-. a-.
	d8-. a-. b-. r8
	r8 b16 b b8 b16 b
	e8 r8 r e
	e,-. a-. c-. e-.
	g8 r8 r4
	r8 bes,16-. bes-. bes8-. bes-.
	bes8 r8 r4
	R2*5
%176
	c2:16\p c:16\cresc d:16 c:16 c:16\f\cresc cis:16 cis:16\!
	r2^\markup {\bold\medium\number 1}
	r8. d16\f [g8. b16]
	a8. e16 g (fis) e d
	d8 g~ g16 d g b
	a8. e16 g (fis e d)
%188
	d8 (g) r4
	r2^\markup {\bold\medium\number 1}
	r4 r8. a,16\f
	c16 c c8~ c16 c c8~
	c16 c c8~ c16 c c8 \mark \default
	b8-.\ff g'-. g-. fis
	\grace {g16 ([a]} g8-.) fis16-. e-. d8-. r16 d16
	g16 (a b) d bes (a g) bes
	d4.\sf a8
%197
	g8 [c b a]
	\grace {g16 ([a]} g8) fis16 e d8 d
	d8 d g e16 cis
	d8 bes16 g a8 d
	f8 r8 r f
	e8 r8 r e
	f8 r8 r f
	e8 r8 r e
	a,16-. b-. c-. d-. e4~\sf
%206
	e4. ees8\sf
	d4. b'8~
	b8 [a-. g-. fis-.]
	g16 d b c d4~\sf
	d8 gis, e'4~
	e8 ees d4~
	d16 b-. e!-. a-. g-. b,-. d-. fis-.
	g-. d-. b-. g-. d-. g-. b-. d-.
	d8\ff [r16 d16 d8 r16 d16]
%215
	d8 [r16 d16 d8 r16 c16]
	c8 [r16 c16 c8 r16 c16]
	c8 [r16 c16 c8 r16 b'16]
	b8 [r16 g16 g8 r16 d16]
	d8 r16 b16 b8 b
	a-. [b-. c-. d-.]	
	\padText #4
	b r r r16 \padText #3 d'16_"sempre"
	d-. g,-. g-. b-.\ff b-. d,-. d-. g-.
%223
	g-. b,-. b-. d-. d-. g,-. g-. r16
	r g'-. g-. c-. c-. e,-. e-. g-.
	g-. c,-. c-. e-. e-. g,-. g-. r \mark \default
	r8. b'16\ff b8. b16
	b8. [b16 b8. b16]
	b2~ b8 r8 r4
	R2*7
	r4 r8 r16 d,16\p
%238
	b'8-. [r16 g16-. fis8-. r16 e16-.]
	d8-. [r16 b16-. a8-. r16 d,16-.]
	d'8-. [r16 b16-.] g8-. r8
	r8. d16 d8-. [r16 d16]
	g16 (a b d b a g) b
	g'2\sf 
	r2^\markup {\bold\medium\number 1}
	r4 r8. d,16
	g16 (a\dim b d b a g b)
%247
	g'2\sf
	R2*2
	g,16 (a b_\markup {\italic \medium "dim."} d) g4~->
	g8 r8 r4
	g,16 (a b_\markup {\italic \medium "dim."} d) g4~->
	g8 r8 r4
	R2*2 \mark \default
	b,2:16^"1"\pp b2:16^"2" b2:16^"3" b2:16^"4" b2:16^"5" b8 r8 r4
	R2*11
	r2_\markup {\italic \medium "attacca"} \fermata \bar "|."
	\break
} %music
