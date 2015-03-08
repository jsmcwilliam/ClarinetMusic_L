\version "2.12.0"      %Mendelssohn Symphony No. 3 - Clarinette 1
		       %I. Introduction and Allegro agitato
                   
\include "Globals.ly"
padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})

\relative c'{
	\clef treble
	\Atime \Akey \AstringTempo
	\compressFullBarRests
	\override DynamicLineSpanner #'staff-padding = #2
	ees2 \p\< g8. ( b16 )
	c2 d4 \!
	c2 \> c4 \!
	b2.
	g4 \< c ees \!
	ees2 \sf (d4) 
	c4 \p c, d8. (ees16)
	ees4 (d r)
	ees2 e8.\< (g16)
	g2 g4\!
%11
	c2\sf\> c4
	b2.\!
	(bes!4)\p bes\< bes\!
	c2.~\>
	c8. g16\!\dim c4. (b8)
	b4\pp (c2)
	R2.*2
	r4 c4\p c
	c2.~
	c8 r8 r4 r
	R2.*4
	r4 a8\pp r g r
	g r g r r4
	r4 a8 r\cresc d r
	c r c r\! r4
	r8^\markup { \dynamic sf }
	\padText #2.5 d_\markup {\italic\large "molto cresc"} 
	(ees f g aes)
	g (g,\f aes bes\cresc c des) \mark \default				%A
	c r r4 r4
	r2.^\markup {\bold\medium\number 1}
	ges'2.~\p \<
	ges4 (f8) f\f f f
	f r r4 r4
	r2.^\markup {\bold\medium\number 1}
%38
	aes2.~\p \<
	aes4 (g8) g\f g g
	g8 r c,4\cresc g'8. (aes16)
	bes4. e,8 (f4)~
	f8 fis (g4.) g,8
	des'2\ff des8. ees16
	f2 f8. des16
	aes'2.~\sf\dim
	aes2.~
	aes2~\p aes8 r
	r2.^\markup {\bold\medium\number 1}
	ees,2\p g4
%50
	g2.\<
	c2\> c4\!
	b2.
	(bes!4)\p bes bes
	aes2.\sf \>
	ees8.\p g16 c4. (b8)
	b4 (c) r
	bes!\p ees des
	c2_\markup {\italic\large "dim."} aes4
	g~\p g8 r r4
	c4~ c8 r r4
%61
	d4~_\markup {\italic\large "dim."} d8 r r4
	d4~\pp d8 r r4
	r4 r4 \fermata \bar "||" \break
%64
	\Btime \BstringTempo
	\repeat volta 2 {
	\partial 8*2 r8 g,,16\pp g
	\set Score.currentBarNumber = #64
	g4 (aes16 g) g8 (c) d-.
	ees4 (d16 ees) ees8 (c) d-.
	\grace f16 (ees8) (d ees) g (f ees)
	ees4._\markup {\italic \large "sempre"} (d8) bes bes\pp  
	bes4 (c16 bes) bes8 (ees) f-.
	g4 (f16 g) g8 (ees f)
	\grace aes (g8) (f g) bes (aes g)
	g4. (fis8) d d
	d4 (ees16 d) d8 (g f)
	f4. (ees8) ees ees
	d4 (ees16 d) d8 (g f)
%75
	f4. (ees8) \padText #2 g _\markup {\italic \large "sempre"} g
	g4 (c8)\pp c4 (bes8)
	bes4 (aes8) aes4 (g8)
	g4 (ees8) ees4 (f8)
	g2.~
	g4 (ees8) ees4 (f8)
	g2.~
	g4 (ees8)\pp ees4 (f8)
	g4 r8 r4 r8
%84
	r4 r8 r g8\p g
	g4 (aes16 g) g8 (c) d
	ees4 (d16 ees) ees8 (c) d
	\grace f16 (ees8) (d ees)\cresc g (f ees)\!
	ees4. (d8) d d
	bes4 (c16 bes) bes8 (ees) g
	g4 (f8)~ f ees (des)
%91
	\grace des16 (c8) (b c) d (b g)
	g'4.~\sf g8 g, g
	g4_\markup {\italic \large "sempre più cresc."} (aes16 g) g8 (c) ees
	g4^">" (f8)~ f ees (des)
	\grace des16\cresc c8 (b) c ees4^\markup {\dynamic sf} (c8)~
	c b (c) ees4 (c8)~
	c8 b (c) aes'4 (g8)~
%98
	g8 (d) ees f (d) g \mark \default
	\CstringTempo
	c,4\ff c'16 c c4 bes16 aes
	aes4 g16 f f4 ees16 d
	d4 c16 b b8 b-. c-.
	d-.b-. c-. d-. ees-. f-.
	g4 c,8 c'4.~
	c2.~
	c8 (b c d) f,-. ees-.
%106
	d8-. aes'-. g-. f-. ees-. d-.
	g4 r8 r4 g,16\f g
	f'4 ees16 d d4 c16 b
	c8-. ees (d c d ees)
	f4 ees16 d d4 c16 b
	g'4 r8 r4 r8
	R2.*2
	r4 r8 r4 ees16\ff ees
%115
	a2.~\sf
	a4 r8 r4 a16 a
	a2.~\sf
	a4 r8 r4 a16 a
	a4.~ a8 r8 a16 a
	aes!4.~ aes8 r8 aes16 aes
	g4. (b\<
	c cis)
	d8\ff (fis, g aes c aes)
	g4 fis8 r r4 \mark \default						%C
	r2.^\markup {\bold\medium\number 1}
%126
	r4 d8\mf d4\< (g8)
	g4.\> (fis)\!
	(f4) ees!8 (d4 c8)
	bes4 (c8) d4.~
	d8 r8 d\< (bes'4_\markup {\italic \large "cresc."}\>  g8)\!
	g4 (fis8 a4 fis8
	ees4) ees8 (d4 c8)
	bes4 r8 r4 r8
	R2.*7
	r4 bes8\p bes4\< (ees8)\!
%142
	ees4.-> (d4) d8_\markup {\italic \large "espress."}
	g4.~ g8 (ees c)
	c4. (bes4) bes8
	c2.~\sf
	c4 r8 r4 r8
	R2.*2
	bes4.\sf a~\>
	a2.\!
	a4.\pp (bes4) a8
	(g) r8 r bes r r
	R2.*3\cresc
	g'4. (a)~
	a a\f 
%	\once \override Score.RehearsalMark #'padding = #5.0
	(bes2.) \mark \default 							%D
%158
	r4 r8 fis4.
	a\sf (g)
	r4 r8 fis4.:8
	a\sf (g)~
	g c,~
	c f~
	f8 f f f (bes,) bes
	bes4 c8\cresc c'4 c8
	c4 c8 c4 c8
	bes4.~\ff bes4 a8
%169
	g4 g8 a4 fis8
	g4 r8 r4 r8
	r4 r8 r4 d8
	bes'4.~\sf bes4 a8
	g4 g8 a4 fis8
	g4 d'8~ d4 c8
	bes4 bes8 c4 a8
	d4.~\sf d4 c8
	bes4 bes8 b4.\sf
%178
	c4 c8 cis4.\sf
	d4\ff d,8 ees4 e8
	f4 fis8 bes4\sf (a8) \mark \default					%E
	g4. r8 g8\p (a
	bes4.)~ bes8 g (a
	bes4.)~ bes8 r8 r
	r2.^\markup {\bold\medium\number 1}
	r4 r8 r8 g8\p (a
	bes4.)~ bes8 g (a
	bes4.)~ bes8 r8 r
	r2.^\markup {\bold\medium\number 1}
%189
	r4 r8 r d,\p (g
	bes4\dim a8 g4 fis8)
	g4 (f8 ees4 d8)
	ees4\p (c8 a c ees)
	d4 (bes8 g4.)
	R2.*1
	r4 r8 r ees'8\p (d)
	ees4 (c8 a c ees)
%197
	d4 (bes8 g4.)
	R2.*4
	r4 r8 r d'8\pp (g) 
	d4 (bes8) g4.~
	g r8 d'8 (g)
	g,4. r4 r8
	R2.*3
	} % repeat
	\alternative {
	{f'2._>
	f4. f
	f\pp \fermata r4 r8
	} %alternative 1
	{b2.\p\<
	b4. b
	} %alternative 2
	} %end alternatives 
	\set Score.currentBarNumber = #211
	b2.~\>
	b~\!
%213
	b~ b~ b~\pp b4. r4 r8 
	r4 r8 a4. 
	a\< a
	a2.~ a~\> a~\!\pp a4. r4 r8
	r4 r8 a,,4.\p
	a2.~_\markup {\italic \medium "cresc."}
	a4 a8 a4 a8
	a2.~
%227
	a4 ges'8\cresc ges4 ges8
	\repeat unfold 2 {ges2.~ ges4 ges8 ges4 ges8}
	ges2.^> ges^>\f\< ges^> 
	ges4.\!\ff ges ges ges \mark \default					%F
	bes8\sf r8 r r4 r8
	r2.^\markup {\bold\medium\number 1}
%239
	r8 ges'\p ges ges r r
	r8 ges, ges ges r r
	r aes' aes aes r r
	r f, f f r r
	r ges\cresc ges ges r r
	r ges aes bes r r
	r bes\f bes\cresc bes bes bes
%246
	ees2.\sf
	f8\sf r8 r r4 r8
	R2.*2
	r4 f8\espressivo f4\< (bes8)
	bes4.\> (a)~\!
	a8 r8 ges (f4 ees8)\cresc
	des4 (ees8) f4.~
	f8 des-. ees-. f4.~
	f8 f-. g!-. aes!-. f-. g-.
%256
	aes!8-.\f f-. g-. aes-. g-. f-.
	c'\sf r8 r r4 r8
	R2.*5 \mark \default							%G
	r2.^\markup {\bold\medium\number 1}
	r4 r8 r des,8\f des
	bes'2.~
	bes4. (aes4) r8
	r2.^\markup {\bold\medium\number 1}
	r4 r8 r bes,8\f bes
	ees2.~\sf
	ees4.~ ees
	R2.*8
%279
	c4.~\sf c8 a!-. bes-.
	c-. [a!-. bes-.] c-. des-. ees-.
	f4 r8 r4 r8
	r2.^\markup {\bold\medium\number 1}
	g4.~\sf g8 e!-. f-.
	g-. [e!-. f-.] g-. aes-. bes-.
	c4 r8 r4 c16\ff c
	c4 bes16 aes aes4 g16 f
	f8 [f-. g-.] aes-. bes-. c-.
%288
	c4 bes16 aes aes4 g16 f
	f8 [f g] aes4\sf r8
	r8 g8 a! bes4\sf b!8
	c8 c, d ees4 f16 g
	g8-. [f-. ees-.] f-. ees-. f-. \mark \default
	g8 r8 r r g\p (a!
	b!4.~) b8 g (a!
%295
	b!4.~) b8 r8 r
	r2.^\markup {\bold\medium\number 1}
	r4 r8 r g\p (a!
	b!4.~) b8 g (a!
	b!4.~) b8 r8 r
	R2.*4
	g,4\p (aes16 g) g8-. b!-. d-.
	c-. [f-. aes-.] c-. r8 r
	R2.*8
	r4 r8 r d,8\pp d
%315
	d8 r8 r r4 r8
	r4 r8 r d8 d
	d8 r8 r r4 r8
	r4 r8 r d8 d
	g8 r8 r r d8 d
	ees8 r8 r r4 r8
	r2.^\markup {\bold\medium\number 1}
	r4 r8 r d8 d
	d8 r8 r r4 r8
%324
	r4 r8 r d8\< d\>
	d8 r8\! r r4 r8
	r4 r8 r d8_\markup {\italic \large "dim."} d
	g8 r8 r r4 r8
	r4 r8 r ees8 ees
	f8 r8 r r4 r8
	R2.*3
	r4 r8 r g,,\pp g \mark \default
	g4 (aes16 g) g8 [(c) d]
%335
	ees4 (d16 ees) ees8 [(c) d]
	\grace f16\< (ees8) [(d ees)]\> g (f ees)\!
	ees4. (d8) bes bes  
	bes4 (c16 bes) bes8 (ees) f-.
	g4 (f16 g) g8 (ees f)
	\grace aes\< (g8) [(f g)]\> bes (aes g)\!
	g4. (fis8) d d
%342
	d4 (ees16 d) d8 [(g f)]
	f4. (ees8) ees ees
	d4 (ees16 d) d8 [(g f)]
	f4. (ees4) r8
	R2.*10
	r4 g'8\p\< g4 (c8)
	c4.\sf (b!4.~)
	b4 aes!8\> (g4 f8)\!
	ees4 (f8)\cresc g4.~
%360
	g4 g8 (ees'4\sf c8)
	c4 (b!8 d4 b8
	aes!) aes4 (g4 f8)
	ees4 r8 r4 r8
	R2.*7
	ees,4.\sf d4.~\>
	d2.~
	d4.\! (ees4) d8\p
	ees8 r8 r ees r r \mark \default
	r2.^\markup {\bold\medium\number 1}
	r4 r8 b''!4.\sf
%377
	(\cresc c2.)
	r2.^\markup {\bold\medium\number 1}
	aes4.\sf (g4.)
	g4.~\f g8 c, c
	b!4 (c16 b) b8 [d g]
	d'4.\sf (c8) c, c
	b!4 (c16 b) b8 [d g]
	d'4.\sf (c4.~)
	c4. f,4.~
	f4. bes~
	bes ees,!~
	ees f->
%389
	f4.-> f->
	ees4.~\ff ees4 d8
	c4 c8 d4 b!8
	g'4.~ g4 f8
	ees4 ees8 f4 d8
	g4.~ g4 f8
	ees4 ees8 des4.\sf
	(c4) c8 ees4.\sf
	(d!4.) ees4 e!8
	f4. b! \mark \default
	c4. r8 c,8\p (d
%400
	ees4.~) ees8 c (d
	ees4.~) ees8 ees\< (g
	f4.->~)\> f8 (g aes)\!
	g4. r8 c,8\p (d
	ees4.~) ees8 c (d
	ees4.~) ees8 ees\< (g
	f4.->~)\> f8 (g aes)\!
	g4.~ g8 r8 r8
	R2.*2
%410
	aes,2._\markup {\italic \large "dim."}
	(g4) r8 r4 r8
	R2.*2
	aes2.
	(g4) r8 r4 r8
	r2.^\markup {\bold\medium\number 1}
	r4 r8 r g8 (c)
	aes4 (f8 d [f aes)]
	g4_\markup {\italic \large "dim."} (ees8 c4.~)
	c2.
	c'4.~ c8\pp\< (ees f
	g4\> ees8 c4.~)\!
%423
	c4. r4 r8
	R2.*3 \mark \default
	e!2.\p
	e!4.\< e\>
	e2.~ e2.~\! e2.~ e2.~
	\padText #2.5 e4._\markup {\italic \large "cresc."} f~
	f4. r4 r8
	r4 r8 f4.
	f4.\< f
	f2.~\> f2.~
%439
	f4.\! ges~
	ges4. r4 r8
	r4 r8 fis,4.\p
	\padText #2.5 fis2.~_\markup {\italic \large "cresc."}
	fis4. fis
	fis2.~
	fis4 \padText #2.5 aes,!8_\markup {\italic \large "cresc."} aes4 aes8
	aes2.
	r4 \padText #2.5 fis''8_\markup {\italic\large\bold "sempre."} fis4 fis8
	\padText #2.5 fis2.~_\markup {\italic \large "cresc."}
	fis4 a,,8 a4 a8
%450
	\set Score.currentBarNumber = #450
	a2.~
	a4 fis''8 fis4 fis8
	fis2.~
	fis4. fis,4.\sf
	fis,4.\sf fis\sf
	fis2.~\ff\> fis\dim 
	f~\!
	f4.~ f8 f\p f\cresc
	e2.~ e
	c'~\ff\dim c4.~ c8 c\p c
	\padText #2 b4._\markup {\italic \large "cresc."} c^\sf
%464
	d4.\sf c\sf \mark N							%N
	f4.~\sf f8 f f
	ees4.~\sf ees8 ees ees
	ees4.~\fff ees8 ees ees
	ees4 r8 d4 r8
	fis,2.~\p\< fis f!~\ff
	f4.~_\markup {\italic \large "dim."} f8 f f
	e2.~_\markup {\italic \large "cresc."}
	e c'~\ff
%476
	c4.~ c8_\markup {\italic \large "dim."} c c\cresc
	b4.^\markup {\italic\bold\large "sf"} c^\markup {\italic\bold\large "sf"}
	d2.^\markup {\italic\bold\large "sf"}
	fis,4.^\markup {\italic\bold\large "sf"} g^\markup {\italic\bold\large "sf"}
	a2.^\markup {\italic\bold\large "sf"}
	ees'4.~\fff ees8 ees ees
	d4. g \mark O								%O
	c,4.^\markup {\bold\large "Assai animato"}\ff r4 ees'16 ees
	ees4. r4 des'16 des
	des4 c16 bes bes4 aes16 g
%486
	g4 f16 e e4 c16 c
	c4. r4 aes'16 aes
	aes4. r4 d,16 d
	d4 ees16 f f4 ees16 f
	f4 ees16 d d4 d16 d
	ees4 r8 d4 r8
	d4 r8 d4 r8
%493
	ees4 aes16 aes aes4 g16 f
	f4 ees16 d d4 c16 b
	c2.~\ff
	c4 c16 c c4 c16 c
	ees2.~
	ees4 ees16 ees ees4 ees16 ees
	g2.~
	g4 g16 g g4 g16 g
	g4 fis16\f (g) g4.~
%502
	g4 fis16 (g) g4.~ \mark P						%P
	\repeat unfold 2 {g4 (fis16 g) g4 (fis16 g)}
	\dim g4. (fis~)
	fis f~
	f e~\p 
	e\dim ees
	(d c 
	bes aes)
	g2. (fis)\pp \bar "||" \break
%513
	\Atime \DstringTempo
	g2.\p\<
	g
	c2\sf\> c4
	b2.\!
	bes!4 bes bes
	c2\sf\dim aes4 
	g4 (c4. b8)
	b8\p r8 c r r4
	b8_\markup {\italic \large "dim."} r8 c r r4
	r2. \fermata \bar "|."
	\break
%	\bar "|." \break
	} %Music

%{Tips:
	1. Cues
	<< << \tag #'partie << << {
		\set fontSize = #-4 
		\stemDown 
		\transpose c' c c' 
		\relative c'' {
			d8(^"FlÃƒÆ’Ã‚Â»tes" cis a) cis cis( b fis) gis} 
		\stemNeutral 
		\unset fontSize} 
	\\ 
		{R1} >> >> 
	   \tag #'score {R1} 
	>> >>
%}
	
