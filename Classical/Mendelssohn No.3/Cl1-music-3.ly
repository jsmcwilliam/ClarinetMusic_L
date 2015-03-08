\version "2.12.3"      %Mendelssohn Symphony No. 3 - Clarinette 1
                       %III Adagio cantabile
\include "Globals.ly"

padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})

\relative c'{
	\clef treble
	\Ftime \Fkey \FstringTempo
	\compressFullBarRests
	\override DynamicLineSpanner #'staff-padding = #2
	
	R2*3
	r4 r8. f'16\p
	f8 f16. f32\cresc f8 f16. f32
	f2~\f f8 r8 r4
	r2^\markup {\bold\medium\number 1}
	r8 b,8\pp [(c b)] \mark \default
	c4~ c8 r8
	aes4~ aes8 r8
	g2~
  	g8 (d' c) r8
  	a4~ a8 r8
  %15
  	d4.\sf\> cis8\p\!
  	(d8) r8 r4
  	r2^\markup {\bold\medium\number 1}
  	a4\pp (g8) r8
  	r2^\markup {\bold\medium\number 1}
  	a4 (g8) r8
  	r2^\markup {\bold\medium\number 1}
  	c2\p\<
  	f4.\sf \> d8
  	(c8\p) r8 r4
  	c2\p\<
  	f4.\sf \> d8
  	(c8\p) r8 r4
  	r4 r8 g8~\pp
  	g8 r8 r4
  %30
  	r4 r8 f8
  	(e8) r8 r4
  	r2^\markup {\bold\medium\number 1}
  	r4 r8.. ees32 \mark \default
  	ees8 ees16. ees32 d8 d16. d32
  	c8 c16. c32\sf d8~ d16 d\p
  	ees8\cresc ees16. ees32 aes8 g16. f32
  	g4\f f8..\sf f32\p
  	g8 g16. g32 f8 f16. f32
%39
	ees8 ees16. f32 f8~ f16 d16\cresc
	ees8 ees16. ees32 c'8 bes16. a32
	bes4\f a8..\sf d32\ff
	d8 c16. c32 c8 bes16. bes32
	bes8 a16. g32 fis8.. d'32
	g8 g16. g32 g8 g16. g32
	bes16.\sf a32 g4 r16. g32
%46

	\padText #2.5 bes8_\markup {\italic \larger \medium "più"} 
	bes16. bes32\f bes8 bes16. bes32
	d16. c32 bes4 r16. bes,32 \mark \default
	e8\ff e16. e32 e4
	e8 e16. e32 e4
	R2*3
	e4\p (d8) g,\cresc
	a8 (b16.) c32 c4
	bes4-> a8 (g)
	fis'8\f (e\dim d c)
%57
	b8\p b b\< (e16\> c\!)
	b4~ b16 a (b c)
	b8\cresc b b (e16 c)
	b4~\f b16 (d g\dim b)
	b (g d b) c8\p (a)
	g4 r4
	R2*3
	r8 d'8\p (\padText #2 ees4_\markup {\italic \larger \medium "cresc."}) 
	r8 e!8\cresc f aes
%68
	r8 des,8 bes'8.. bes32 \mark \default
	aes8\ff c,16. c32 des8 d16. d32
	\times 4/6 {ees16 c c c c c} c4:16^"6"
	c8 c16. c32 des8 d16. d32
	\times 4/6 {ees16 c c c c c} c4:16^"6"
	c8\p c16. c32 c8 c16. c32
%74
	des8\cresc des16. des32 des8 des16. des32
	d!4~\f d8 r8
	R2*2
	c4~\p c8 r8
	aes4~ aes8 r8
	g4. c8~
	c8 (b c) r8
	a4~ a8 r8
	d,4\sf (cis8) g''\p
	f8 r8 r4
	r2^\markup {\bold\medium\number 1}
%86
	\padText #2 a,4_\markup {\italic \medium {sempre \bold pp}} (g8) r8
	r2^\markup {\bold\medium\number 1}
	a4 (g8) r8
	R2*2
	g2~\sf\>
	g8\p r8 r4
	r4 r8 b8\pp
	(c4) r4
	R2*4 \mark \default
	r8.. g32\pp\< aes8 aes16. aes32
	f8\> f16. f32\! e8~ e16 e
	f8\cresc aes16. aes32 aes8 c16. des32
%102
	c4\f bes8..\sf bes32\p
	c8 ces16. ces32 bes8 bes16. bes32
	c!8 bes16. bes32 bes8. g16
	aes8\cresc c16. c32 c8 e!16. f32
	ees4\f d8..\sf g32\ff
	g8 f16. f32 f8 ees16. ees32
	ees8 des16. c32 b!8.. g'32
%109
	g8 g16. g32 g8 aes16. g32
	f16.\sf f32 f4 r16. f32
	\padText #2.5 ees8_\markup {\italic \large più} ees16. ees32\f ees8 ees16. ees32
	g16. f32 ees4 r16. c32 \mark \default
	a'8\ff  a16. a32 a4
	a8 a16. a32 a4~
	a8 r8 r4
	r2^\markup {\bold\medium\number 1}
%117
	a,4\p (g8) r8
	r8 g'8~\cresc g16 (c g e)
	d16 (f d b) g8\! r8
	r8 c'8~\cresc c16 f, (a g)
	fis16 (c a c) fis,!4
	f!8\f\> d' (e c\!)
	g8.\p c16 e8 (d16.) c32
	c16 g' (e c) g8\cresc g' \mark \default
	g4-> (fis)
%126
	f!4~\f\> f16 (d\p b f')
	e8 r8 r a~\cresc
	a8 r8 r b~
	b8 c,4\f d8\p
	e8. e16 g (f d f)
	e8\cresc e (d) a'~
	a8 fis (e) b'~
	b g~\f g16 f! (g f)
	e16 (g c8)~\dim c16 (b a g)
%135
	g8. (e16\p) g8 (f16 d) \mark \default
	c4 r4
	r4 f4
	(e8 r8 r4)
	R2*3
	e4\pp \padText #1.5 g8._\markup {\italic \large dolce} (c,16)
	d8 (c4) r8
	e4 g8. c,16
	a'8 (g4) r8
	r4 r8 c,8
	b'8\f\> [(g f d)]
	c2~\p
	c4 c
	c2_\markup {\italic \medium "attacca"}\fermata \bar "|."
	\break
}%end music
