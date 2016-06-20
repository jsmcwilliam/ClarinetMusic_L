% Created on Fri May 11 22:57:49 CEST 2012
\version "2.14.0"

\header {
	title = "Spartacus" 
	subtitle = "A. Khachachurian" 
 	composer = "Folke Nilsson" 
 	instrument = "Klarinett II i B" 
 	copyright = "Polisens Blåsorkester" 
 tagline = "Kopierad av John McWilliam" 

}

staffClarinetInBb = \new Staff {
	
	\time 4/4 \key d \major
	\tempo \markup {\bold {Adagio}} 4 = 132
	\set Staff.midiInstrument = "clarinet"
	\set Score.markFormatter = #format-mark-box-letters
	\compressFullBarRests
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	\override BreathingSign #'text = \markup {
		  \musicglyph #"scripts.caesura.straight" }
	\relative c' { 	
	e8\f\< (a) a a dis,\> (a') a a\!   |e8\f\< (a) a a dis,\> (a') a a\!
	a:16\mp (fis:16)\cresc g:16 gis:16 a:16 ais:16 b:16 bis:16 
	ais:16 (b!:16) b:16 bis:16 bis:16 (cis:16) cis:16 d:16\!
	dis (e) fis g a g fis e		   |dis (e) fis g fis (g) fis g
	fis^\markup {Molto rit.} (g) fis g fis g fis (g)
	
% Rehersal mark A
        \mark \default
        \tempo \markup {\bold {Molto leg. e espr.}} 4 = 69
        bes2.\ff fis8 (g)		   |bes2. fis8 (g)	
        bes4-- (bes-- bes--) \times 2/3 {c8 (bes c)}|bes4 (aes2) aes4
        bes (aes) aes8 bes4 (aes8)	
        g2~ g8 g-- \times 2/3 {g16 ([aes g]} fis g)
        fis4 a-- a-- fis8 (a)	|a2~ a8 a-- \times 2/3 {ees16 ([f ees]}
        f ees)
        \times 2/3 {a,8 (cis!) fis-- dis (fis) a--} cis (a) fis8-- a--
        a4--^\markup {\bold {Poco rit}} a~ a8 ees\> (f ees)	
        gis4\!^\markup {\bold {A tempo}} b,8 (gis e'4) gis,8 (e'
	gis4)\>^\markup {\bold {Rit.}} e8 (gis dis4) b8 (dis |e4)\! r4 r2
	R1 |r2 r4 \breathe fisis,8\p (gis) \bar "||"
	
% Rehersal mark B
        \mark \default
        b2.^\markup {\bold {Dolce}} fisis8 (gis) |b2. fisis8 (gis) 
        b4 b b \times 2/3 {cis8 (b cis)} |b4 (a2) a4 |b (a) a8 b4 (a8)
        gis2~ gis8 gis-- \times 2/3 {gis16 ([a gis]} fisis gis) 
        g!4-- d'-- d-- e8 (d) 
        cis2~ cis8 cis-- \times 2/3 {cis16 ([d cis]} bis cis) 
        g8 (bes) b d fis4 (e8 d) |cis2~^\markup {\bold {Rit.}} cis8 r8 r4
        R1*7 |r2 r4 c,!4--\p\<	|c!-- c-- c--\ff\> c--	|e1~\fermata
        e4\!\pp r r2
	}


}


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


