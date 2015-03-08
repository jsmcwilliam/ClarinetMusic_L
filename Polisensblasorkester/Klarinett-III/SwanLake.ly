% Created on Fri May 11 22:57:49 CEST 2012
\version "2.14.0"

\header {
	title = "Swan Lake" 
	subtitle = "Balettfantasi" 
 	composer = "Tchjaikovsky" 
 	instrument = "Klarinett III i B" 
 	copyright = "Polisens Blåsorkester" 
 tagline = "Copied by John McWilliam" 

}

\include "../globals.ly"

staffClarinetInBb = \new Staff {
	
	\Atime \Akey \AstringTempo
	\set Staff.midiInstrument = "clarinet"
	\set Score.markFormatter = #format-mark-box-letters
	\compressFullBarRests
	\clef treble
	\relative c' { 	
		\repeat tremolo 16 { a32\mf\> (c)\! } 	| a1\pp
		a4 a2 a4~	|a a (fis) f8 (e) 	|e4 (a2.)
		a4 g fis (f)	|e1			|e2 a4 a8 (gis
		e4) a4 (c2)	|b1~			|b4 b2.
		d1		|dis4 dis (b a)		|b1~
		b4 b2.		|d2 (ees)		|d1
		fis2 gis \bar "||"
		
% Rehersal mark A
        \mark \default
        e2\f (f)		|a1			|a2 a4 (d)
        c2 (d)			|c2 (d)			|c1~
        c2\dim a4 (d)		|c1\!			|b,4 (c d) e8 (f)
        g4. (f8 e4) f8 (g)	|a4. (g8 f4) g8 (a)	|b4. (a8) e (c b a)
        b4 (c d) e8 (f)		|g4. (f8 e4) f8 (g)	|a4. (g8 f4) g8 (a)
	bes4 (c2 a4)		|g4 (d2.~)		|d1~
	d4  r2.			|\OneBR \bar "||"	|\Btime R2.*4
        
% Rehersal mark B
        \mark \default
        g,2.~\pp g2.g2.~ g2.
	\repeat unfold 2 {f2. (f2.)}
	\repeat unfold 2 {g2.~ g2.}
	g2. (fis2.) g2.		|b8 (g) a\< b c d\!	

% Rehersal mark C
        \mark \default
        e8\mf r8 e4. (d8	|f2 e4)			|r4 e4. (d8
        f2 e4)			|r4 d4. (cis8		|e2 d4)
        r4 (cis d		|g2.)			
        \repeat unfold 2 {r4 e4. (d8 f2 e4)}		|r4 d4.^^ (e8
        c) r8 e4.^^ (d8		|c r) b'4.-^ (a8	|g,4) r4 r \bar "|:"
	
% Rehersal mark D
        \mark \default
        \repeat volta 2 {
        b'2.~ b2.~ b4 r4 r b2. g2.~ g2. e2.~ e2. f2.~ f2. r4 e2\cresc r4 e2
        r4 f2 r4 f2}
        \alternative {
        	{e4 b'4.^^ (a8)	|a2 (g4)\!}
        	{g4 g4.^^ g8	|g4^^\! r4 r}
        }
% Rehersal mark E
        \mark \default
	\repeat volta 2 {
	g2.\ff (| f4 g f) |e2.~	|e2 e4 (|a2) a4|g (a b)|b2. (|g2.) | g2.\mf
	(c,2.)  |f2 (d4	  |c2.) |c2.    |c2 f4  |f2.~ }
	\alternative {
		{f2. \repeatTie}
		{e4 \repeatTie e4 r \bar "||"}
	}
	e2.^\markup {\bold "Meno"}\mf	|d2.
	\override TextSpanner #'(bound-details left text) =
	\markup { \upright "rit." }
	c2.\startTextSpan c2.\stopTextSpan \bar "||"
	
	\Bkey \Atime \BstringTempo
	bes8\ff d g, d' \repeat unfold 8 {g, d' g, d'} g, (a d16 c  bes a
	g8) d' g, d'	\repeat unfold 6 {g, d' g, d'} g, (a d16 c  bes a
	
% Rehersal mark F
        \mark \default	
	g8\mf) g' r8 f8 r d r b	 |c r c r c r d r     |ees ees r ees r ees r ees
	r bes r bes r bes r bes  |c c r b r b r b     |c r c r c r d r 	
	ees ees r ees r ees r ees|r bes r c r d r c   |r d r d r d r b	
	c r c r c r d r		 |ees ees r ees r ees r ees      
	r bes r bes r bes r bes  |c c r b r b r b 
	<< 
		{ees^\markup {\bold {Spela Understämman}}
		 r f r ees r g r |g g r ges r f r f} \\
		{c r c r c r d r |ees ees r ees r ees r ees}
	>>
	r bes r c r g r c	 
	bes8\ff d g, d' \repeat unfold 6 {g, d' g, d'} g, (a d16 c  bes a
	g8) d' g, d'	\repeat unfold 6 {g, d' g, d'} g, (a d16 c  bes a	
	g8) bes' (a) fis (bes) bes (a) fis (| bes) g4^^ ees^^ d^^ c8^^
	g8  bes' (a) fis (bes) bes (a) fis (| bes) g4^^ ees^^ d^^ c8
	bes c'\ff bes4^^ r2 
	\bar "|."	
	}

}


\score {
%	<<
		\staffClarinetInBb
%	>>
	
	\midi {
	}

	\layout {
	}
}

\paper {
}


