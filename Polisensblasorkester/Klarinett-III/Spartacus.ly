% Created on Fri May 11 22:57:49 CEST 2012
\version "2.14.0"

\header {
	title = "Spartacus" 
	subtitle = "Akhachachurian" 
 	composer = "Folke Nilsson" 
 	instrument = "Klarinett III i B" 
 	copyright = "Polisens Blåsorkester" 
 tagline = "Copied by John McWilliam" 

}

\include "globals.ly"

staffClarinetInBb = \new Staff {
	
	\Atime \Akey \AstringTempo
	\set Staff.midiInstrument = "clarinet"
	\set Score.markFormatter = #format-mark-box-letters
	\compressFullBarRests
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	\relative c' { 	
	e8\f\< (a) a a dis,\> (a') a a\!   |e8\f\< (a) a a dis,\> (a') a a\!
	a\mp (fis)\cresc g gis a ais b bis |ais (b!) b bis bis (cis) cis d\!
	dis (e) fis g a g fis e		   |dis (e) fis g fis (g) fis g
	fis^\markup {Molto rit.} (g) fis g fis g fis (g)
	
% Rehersal mark A
        \mark \default
        bes,2.\ff ees8 (bes)		|bes2. ees8 (bes)	
        des4-- (des-- des--) \times 2/3 {ees8 (d ees)}|c4 (f2) ees4
        b! (e!) e8 ees4 (b8)		|bes2~ bes8 ees-- d! (bes)
        a4 cis-- cis!-- dis8 (cis)	|c!2~ c8 c~ \times 2/3 {c16 (des c}
        b16 c)
        \times 2/3 {fis,8 (a) ais-- bis (cis) dis--} eis (e!)
        \grace {dis16 [(eis)]} dis8-- cis--
        c!4-- c~~ c8 c\> (des c)		|b4\! dis,8 (e gis4) e8 (gis
	b4) gis8\> (b b4) gis8 (b)	|gis4\! r4 r2
	R1*2 \bar "||"
	
% Rehersal mark B
        \mark \default
         r4 \times 2/3 {gis,8\pp (b e gis e b} gis8) r8
         r4 \times 2/3 {gis8 (b dis gis dis b} gis) r
         r4 \times 2/3 {gis8 (b d! gis dis b} gis) r
         r4 \times 2/3 {a8 (cis fis a fis cis} a) r
         r4 \times 2/3 {a8 (c! f! a f c} a) r
         r4 \times 2/3 {gis8 (b e gis e b} gis8) r8
         r4 \times 2/3 {g!8 (bes d g! d bes} g) r
         r4 \times 2/3 {ais8 (cis fis ais fis cis} a) r
         r4 \times 2/3 {g!8 (bes d g! d bes} g) r
         r4^\markup {Poco rit.} \times 2/3 {ais8 (cis fis} cis) r8 r4
         r4^\markup {a tempo}   \times 2/3 {a8 (c! f! a f c} a) r
         r4 \times 2/3 {a8 (c! f! a f c} a) r
         a2.~^\markup {Molto rit.} a8 r	|R1*4
         r2 r4 c!4--\p\<	|c!-- c-- c--\ff\> c--	|b1~	|b4\!\pp r r2
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


