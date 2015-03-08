
% Created on Mon Jun 25 19:28:15 CEST 2012
\version "2.14.2"
#(set-global-staff-size 15) % set staff-size when ready to print
\header {
	title = \markup {\concat {"SVANSJ"\char#214"N"}} 
	subtitle = "Balettfantasi"
 	composer = "Tchaikovsky" 
 	arranger = "Arr: Hillman"
 	instrument = "Clarinet II in Bb" 
 	tagline = "Kopierad av John McWilliam" 

}


staffClarinetInBb = \new Staff {
    \time 4/4 \key c \major \clef treble
    \tempo \markup {\bold {Moderato}}
    \set Staff.midiInstrument = "clarinet"
    \set Score.markFormatter = #format-mark-box-alphabet
    \compressFullBarRests
    \relative c' {     
    	    \repeat tremolo 16
    	    { c32\fz\> (e) } |c4\p c (d2) |c4 c2 c4~ |c c (a) a8 (gis) 
    	    a4 (a' g f |e2) dis4 (d |c) ais (gis a |gis) a2 a8 (gis 
    	    a4) c (e c) |d1\< ( |e4\>) e2.\! |f1\< ( |fis4) fis\> (e) c\!
    	    d1\< ( |e4\>) e2.\! |f1~\cresc |f |dis2 d \bar "||" 
    	    
% Rehearsal mark A
	\mark \default
	a'1\f |c |c2 c4 (d) |e2 (f) |e2 (f) |e1~ |e2\> c4 (d) 
	e2\p r4 a,,\f |b (c d) e8 (f) |g4. (f8 e4) f8 (g) 
	a4.\< (g8 f4) g8 (a\!) |b4. (a8) e (c b a) |b4 (c d) e8 (f) 
	g4. (f8 e4) f8 (g) |a4.\< (g8 f4) g8 (a\!) |bes4 fis' ees c |b (b,2.~)
	b1~ |b4 r r2 |R1^\markup{\normalsize\number 1} \bar "||"
	\time 3/4 \tempo \markup {\bold {Vals}}
	R2.*4
	
% Rehearsal mark B
	\mark \default
	c2.~\pp |c |c2.~ |c |g2.~ |g |g2.~ |g |c2.~ |c |c2.~ |c |g2. ( |fis) |g
	a8 (g) a b\< c d
	
% Rehearsal mark C
	\mark \default
	e\mf r (e4. d8 |f2 e4) |r (e4. d8 |f2 e4) |r d4. (cis8 |e2 d4) |r cis (d
	g2.) |r4 (e4. d8 |f2 e4) |r (e4. d8 |f2 e4) |r d4.-> (e8 |c) r e4.-> (d8
	c) r b4. (a8 |g4) r r
	
% Rehearsal mark D
	\mark \default
	\repeat volta 2 {
	d''2.~ |d |e4 r r |g2. |b,~ |b |g~ |g |a~ |a |r4 c2\cresc |r4 cis2 
	r4 d2\ff |r4 d2 }
	\alternative {
		{c4 b4.-> (a8) |a2 (g4)}
		{e'4 e,4.-> e8 |e4-> r r}
	}
	
% Rehearsal mark E
	\mark \default
	\repeat volta 2 {
	c'2. ( |b4 c b |g2.) |g2 g4 ( |c2) c4 |c2 (d4) |d2. ( |b) |c ( |f,) 
	g ( |e) |f |f2 (a4) |b2.~ }
	\alternative {
		{b2.}
		{g4-.\repeatTie g-. r \fermata \bar "||" }
	}
	g2.\mf^\markup {\bold {Meno}} |g |d |d \bar "||"
	
	\key bes \major \time 4/4 \tempo \markup {\bold {Allegro Moderato}}
	d8 r r4 r2 |r8 g-.\p g-. g-. g8.-. fis32 (g a8) g-. 
	fis-. a-. a-. a-. a8.-. g32 (a bes8) a-. |g8 bes d d a2 ( 
	bes8) bes d d a2 ( |a8) g-. g-. g-. g8. fis32 (g a8) g-. 
	fis-. a-. a-. a-. a8.-. g32 (a bes8) a-. |g8 b d d a2 ( 
	bes8) bes d d a a, d16 (c bes a) |
	
% Rehearsal mark E
	\mark \default
	g8 bes' r aes r g r g |ees r f r ees r g r |g g r ges r f r f 
	r f r f r f r f |f fis r g r g r g |ees r f r ees r g r 
	g g r ges r f r f |r f r a r bes r a |r a r aes r g r g 
	ees r f r ees r g r |g g r ges r f r f |r f r f r f r f 
	f fis r g r g r g |ees r f r ees r g r |g g r ges r f r f 
	r f r a r bes r a |r8 g-.\p g-. g-. g8.-. fis32 (g a8) g-. 
	fis-. a-. a-. a-. a8.-. g32 (a bes8) a-. |g8 bes d d a2 ( 
	bes8) bes d d a2 ( |a8) g-. g-. g-. g8. fis32 (g a8) g-. 
	fis-. a-. a-. a-. a8.-. g32 (a bes8) a-. |g8 b d d a2 ( 
	bes8) bes d d a a, d16 (c bes a |g8) d''4 c8 (d) d4 c8 (
	d) bes4-> fis-> g-> fis8 |g8 d'4 c8 (d) d4 c8 (
	d) bes4-> fis-> g-> fis8 |d d' d4\ff r2
    \bar "|."
    }

}


\score {
	<<
		\staffClarinetInBb
	>>
	
	\midi {
	}

       \layout {ragged-last = ##t
  	  #(set-default-paper-size "a4")
  }
}

\paper {
}


