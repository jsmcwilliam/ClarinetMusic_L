\version "2.12.3"      %Mendelssohn Symphony No. 3 - Clarinette 1
                       %IV. Allegro guerriero and Finale maestoso
\include "Globals.ly"

padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})
mBreak = {  }
%showLastLength = R1*10
	  
\relative c'{
	\clef treble
	\Gtime \Gkey \GstringTempo
	\compressFullBarRests
	\override DynamicLineSpanner #'staff-padding = #2
	\partial 16 r16
	R1*21
	r2 r4 r8. g'16\f
	(g'4..) f16 (ees4..) d16\p
	(c4) r8. g'16 (f8.) ees16 (d8.) c16
	(b4) r4 r2
	r2 r4 r8. g16\f
	(g'4..) f16 (ees4..) d16\p
	(c4) r8. g'16 (f8.) ees16 (d8.) c16 (
	\mBreak
%29
	b4) r4 r4 r8. f'16
	ees2 r4 r8. ees16
	d2\cresc r4 r8. d16
	ees2 r4 r8. ees16
	aes1 a g f \mark \default
	ees2\ff ees4.. ees16
	d8 r8 aes'4-> (g2~)
	g4 aes-> (g2~)
	g4 aes-> (g2)
	\mBreak
%41
	r4 d4-. f-. b,-.
	ees2 d4.. d16
	d2 r8 ees8 d c
	b!8. c16 (d4) r8 f8 ees d
	c8. d16 (ees4) r8 g8 f ees
	d4.. d16 d4.. f16
	e!2 e4.. e16
	f4 des'\sf (c2) \mBreak
%49
	f,2 bes,4.. bes16
	g'2 r4 ees4
	\repeat unfold 3 {ges2 r2} \mark \default
	bes,2 bes'4.. bes16
	bes1~ bes1~ bes4 r4 r2
	r2 r4 bes,8. c16
	(d4) ees (f g
	aes bes c d) \mBreak
%61
	ees2 a,4.. a16
	bes4 r4 r2
	r4 ges,4 (f) ges
	(f) r4 r2
	r4 ges4\ff (f) ges
	(f) r4 r bes\p
	bes2 d
	fis2. (c4)
	bes4-. d-. g4. (d8)
	fis2.-> (c4)\mBreak
%71
	bes4-. d-. g4. (d8)
	d1~\sfp d~
	d2 r4 bes4
	bes2 d
	fis2.-> (c4)
	bes4-. d-. g4. (d8)
	fis2.-> (c4)
	bes4-. d-. g4. (d8)
	d1~\sfp d~ \mark \default
	d2 r2
	R1*7 \mBreak
%90
	r2 r4 bes\p
	bes2 d
	fis2.-> (c4)
	bes4-. d-. g4. (d8)
	fis2.-> (c4)
	bes4-. d-. g4. (d8)
	d1~\sfp d~
	d2 r2
	R1*3
	r2 r4 bes4\ff
	bes'2 aes4.. g16
	g2\sf (f4) r4
%105
	r4 e,4\p (f) r
	r4\cresc fis (g) r
	r4 g aes r
	r4 a\f (bes) f-. \mark \default
	g-.\f bes,-.\p ees-. g-.
	bes-. ees-. g-. bes,-.
	bes'4..\sf aes16\p (g4..) f16
	(e8.) c16 (bes8.) aes16 (g8.) f16 (g8.) c,16
	(ees4\f) ges-.\p a-. c-.
%114
	ges'4-. ees-. c-. ees-.
	d4 r4\cresc d r
	d4 r4 d r
	ees4\f r4 r2
	r2 r4 r8. bes16\f
	bes'4..\sf aes16\p (g4..) f16
	(e8.) c16 (bes8.) aes16 (g8.) f16 (g8.) e16
	(ees!4) r4 r2
	r1^\markup {\bold\medium\number 1}
	r2 r4\cresc ges'4
%124
	(g!4) r4 r ges
	(f4) r4 bes, r
	d4 r4 f r
	bes1~\ff bes1~ bes1~
	r4 g4-. aes-. f-.
	ees1~ ees
	ges1~\ff
	ges4 ges! ges ges
	ges!4 r8. c,16 ges'2\sf
	r4 r8. c,16 ges'!2\sf
%137
	r4 r8. c,16 ges'!2\sf
	r4 ees4-. d-. f-.
	ees4 r4 r r8. a,,16\ff
	a2->_\markup {\italic \large marcato} bes->
	ces-> c4..-> c16
	des2-> d->
	ees2-> e4..-> e16
	f,2-> g->\ff
	aes2-> a4.. a16 
	bes2 bes' \mark \default
	bes4 r4 r2
	R1*8
%156
	r2 r4 r8. d16\p
	(d'4..\sf) c16 (bes4..) a16
	(g8.) fis16 (g8.) ees16 (d8.) c16 (bes8.) a16
	(g4) r4 r2
	R1*22 \mark \default
	R1*10
	r2 bes'2\p
	(a2 aes g f)
	g2 c,~ c4 r4 r2
	R1*4
%201
	r4\cresc ges'4-> (f2)
	r4 ges4-> (f2)
	r4 ges4-> (f2~)
	f4\! r4 r2
	ees2\cresc aes,4.. aes16
	bes2 r2
	ees2 aes,4.. aes16
	a2 r2
	f'2 bes,4.. bes16
	b2 r2 \mark \default
	g'2\f g4.. g16
	d4 ees\sf (d2)
	r4 ees4\sf (d2)
%214
	r4 aes'4\sf (g2)
	r4 aes4\sf (g2)
	r4 des'4 (c2)
	r4 des4 (c2~) c1
	r4 \padText #2 des4_\markup {\italic \large più} (c2~) c1\f
	r4 f4\sf (c2~) c1
	r4 d!4 (c2~)
	c4 c, a a
	g2 r4 f'\ff
	ees2 ees4.. f16
%227
	f2\sf r4 f4
	ees4-. g-. c4. (g8)
	g2\sf r4 f4
	ees4-. g-. c4. (g8)
	g2\sf (ees4)d
	f2\sf (d4) c
	ees1 des c bes \mark \default
	aes4 r4 r r8. c16
	(c'4..\sf) bes16\p (aes2)
%239
	r2 r4 r8. c,16
	(c'4..\sf) bes16\p (aes2)
	r2 r4 r8. c,16
	(c'4..\sf) bes16\p (aes2)
	r2 r4 r8. f,16
	(f'4..\sf) ees16\p (d2)
	r4 c,8.\p ees16 (g4) b-.
	c4-. ees-. g-. g,-.
	c,4-. r4 r2
%248
	r2 r4 r8. g'16
	(g'4..\sf) f16\p (ees4..) d16
	(c4) r8. aes'16 (g8.) f16 (ees8.) d16
	(c4) ees8.-> (d16) d4 g8.-. (fis16)
	fis4 ees!8.-> (d16) d2
	r4 g,,8. b16 (d4) f-.
	aes!4-. b!-. d-. g,-.
%255
	aes'4..\sf f16\p (d4..) ees16
	(f8.) ees16 (d8.) c16 (b8.) c16 (d4) 
	\set Score.markFormatter = #format-mark-alphabet \mark #9
	R1*13 \mark #11
	r2 r4 b4\p 
	c2 ees4.. d16
	f2. b,4
	c4-. ees-. g4.. (ees16)
	f2.-> (b,4)
	c4-. ees-. g4.. (ees16)
	ees2.\sfp (d4)
%277
	d2 (f)
	ees2 r4 g,\p 
	g2 g4.. g16
	g2. g4
	g4 g g4.. g16
	g2. g4
	g4 g g4.. g16\dim
	g1~ g~ g2 r2
	r2 r4 g4
	ees'2._\markup {\italic \large "poco rit."} (des4)
	des1
%190
	(c2^\markup {\italic \large "a tempo"}) r2
	r2 r4 r8. ees,16\p
	(ees'4..->) d!16 (c4..)\cresc g'16
	(ees8.) d16 (ees8.) d16 (c8.) b16 (c8.) g16
	(a4) a-. c-. ees-.
	a4-. c-. ees-. a,-.
	c1\f
	g2 f
	ees4..\sf des16\p (c4..) bes16
	(aes4) r4 r2
	r1^\markup {\bold\medium\number 1}
%301
	r2 r4 r8. f16
	(f'4..\sf) ees16 (\cresc d4..) ees16
	(f8.) ees16 (d8.) c16
	(b8.) aes16 (g8.) f16 ( \mark \default
	ees4\f) r4 r r8. g'16
	g1~ g
	r4 c,4 f b,
	c2 r2
	r1^\markup {\bold\medium\number 1}
	c1~\ff c~
%312
	c4 r4 r2
	R1*3
	r2 r4 r8. fis,,16\ff
	fis2-> g->
	aes2-> a4..-> a16
	bes2-> b->
	c2-> cis4..-> cis16
	d2-> ees->
	e2-> f4..-> f16
	fis2-> g4..-> g16
	g2 r4 r8. ees'16\ff
%325
	ees2-> ees->
	ees2-> d4.. ees16
	ees2-> d->
	aes'2-> g4.. aes16
	aes2-> g->
	b2-> c4.. \padText #3 fis,,16_\markup {\italic \large sempre}
	fis2 g\ff
	aes2 g4.. fis16
	fis2 g
	aes2 g4.. fis16
	fis2 g
	aes2 aes4.. aes16
	g2 b \mark \default
%338
	c4.. c16 c'2\sf
	r4 r8. c,16 ees2\sf
	r4 r8. ees16 c'2\sf
	r4 r8. c,16 ees2\sf
	r4 r8. ees16 c'2\sf
	r4 r8. c,16 ees2\sf
	r4 r8. aes16 aes2\sf
	r4 r8. aes,16 aes2
	r4 r8. aes16 aes2
%347
	r4 r8. g'16\dim g2 
	\repeat unfold 3 {r4 r8. g16 g2}
	\repeat unfold 2 {r4 r8. f16 f2}
	r1^\markup {\bold\medium\number 1}
	r4 r8. b16\p b2
	r1^\markup {\bold\medium\number 1}
	r4 r8. b16\dim b2
	R1*4
%361
	r2 r4 g,4\pp
	g2 (c4. b8)
	d2. (g,4)
	g4 (c ees4.) c8
	d2. (g,4)
	g4 (c ees) c
	g'2 (ees4. d8)
	f2 (d4. ees8)
	c1~ c4 r4 r2
	r4 g'4_\markup {\italic \large espressivo} (d f)
%372
	f4 (ees c2)
	r4 g'4 (d f)
	f4 (ees c2)
	r2 r4 \padText #2 g'4_\markup {\italic \large cresc.}
	g4\< (aes\> f\! d)
	ees4 (f d b)
	g'4\< (aes\> f\! d)
	ees4 (e g des)
	c4\< (des\> bes\! g)
%381
	aes4 (bes g e)
	c'4\< (des\> bes\! \padText #2 g_\markup {\italic \large dim.})
	aes4 (a bes b)
	c2. g4
	(\padText #2 aes_\markup {\italic \large dim.} a bes b)
	c2. g4\pp
	(aes4 a bes b)
	c2 r2
	R1*6
	r1 \fermata \bar "||" \break
%396
	\Htime \Hkey \HstringTempo
	g,4.\mf\<_\markup {\italic \large "assai marcato la melodia"} (a4) a8
	c4.~\sf c4 g8
	c4 d8 e (f) g
	e4. d4 r8
	g,4.\sf g8 (f) e
	d'4.~ d4 d8
	d4 d8 d (e) f
	f4. (e)
	g,4.\sf g8 (\cresc f) e
%405
	d'4.~ d4 d8
	b'4.\sf a4.\sf
	g2.\sf
	g4.\p\< (f4) f8
	e4.~\! e4 g8
	c4 d8 e (\cresc f) g
	e4. (d4) r8
	g,4.\sf g8 (\cresc f) e
	d4.~ d4 d8
	d4 d8 d (e) f
%415
	f4. (e4.)
	g4. g8 (f e)
	d4.~\sf d4 d'8
	b'4.\sf a4.\sf
	g2.\sf 
	g4.\ff a4 a8
	c4.~ c4 g,8
	c4 d8 e (f) g
	e4. d4.
	g,4.\sf g8 (f) e
	d4.~ d4 d8
%426
	d4 d8 d (e) f
	f4. (e4.)
	g4. g8 (f e)
	d4.~ d4 d8
	bes'4.\sf e,\sf
	f4.~ f4 f8
	c'4.\sf fis,\sf g2.\sf
	f'!4.\ff f8 (d) b
	g'4 e8 c4 a8
	g4 e8 d4 g8
%437
	fis2.\sf
	f'!4. f8 (d) b
	g'4 e8 c4 a8
	g4 e'8 e4.\sf
	(f8) r8 r e4.\sf
	(f4.\< fis\!)
	g4 f!8 f4 f8
	e4 r8 r4 r8
	r8 e16\ff e e e e4.:16
%446
	f8 r8 r r4 r8
	r8 fis16 fis fis fis fis4.:16
	g8 r8 r r4 r8
	r4 a,8\ff a4 a8
	a2.
	g8 r8 r d'8 r r
	e8 r8 r r4 r8
%453
	r8 e16\ff e e e e4.:16
	f8 r8 r r4 r8
	r8 fis16 fis fis fis fis4.:16
	g8 r8 r r4 r8
	r4 a8\ff a4 a8
	a2.\sf 
	e8 r8 r d r r
	fis4.~ fis8 r8 r
%461
	r4 a8 a4 a8
	a4.~\sf a4 r8
	e8 r8 r d r r
	g4.\ff a4 a8
	c4.~ c4 g,8
	c4 d8 e (f) g
	e4.\sf d4 g8
	g4.\ff a4 a8
	c4.~ c4 g,8
%470
	c4 d8 e (f) g
	e4.\sf d4 g,8
	c4 d8 e (f) g
	a4.\sf (g8) r8 g,
	a'4.\sf (g8) r8 g,
	a'4.\sf (g8) r8 g,
	ees'4. aes
	g4.\< fis\!
	f!2.~\ff f4.~ f4 f8
%480
	e4.~ e8 r8 r
	g4.~ g8 r8 r
	e4.~ e8 r8 r
	c4.~ c8 r8 r
	g'2.~ g~ 
	\repeat unfold 2 {g4 r8 g4 r8}
	g4 r8 r4 r8
	c4. r4 r8
	g,2. \fermata \bar ".|."
}%end music
