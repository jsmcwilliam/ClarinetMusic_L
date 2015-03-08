% Created on Sun Jun 24 11:43:01 CEST 2012
\version "2.18.0"
#(set-global-staff-size 13) % set staff-size when ready to print

\header {
	title = "WELT-BESTSELLER-POTPOURRI FUR BLASMUSIK" 
	subtitle = "1. Teil" 
	arranger = "Arr. Willi Loffler" 
 	instrument = "Klarinette in Bb" 
 	tagline = "Kopierad av John McWilliam" 

}

%\language "svenska"


staffClarinetInBb = \new Staff {
    \time 6/8
%    \set Staff.instrumentName = "Clarinet in Bb"
    \set Staff.midiInstrument = "clarinet"
%    \transposition b,
    \key c \major
    \clef treble
    \set Score.markFormatter = #format-mark-circle-numbers
    \relative c'' {     
    	    g'8->\f^\markup {\bold {Marcia}} r r r4 r8 |a-> r r r4 r8 
    	    c-> r r c4.\trill |b8 r r e,4.  
    	    \bar "||"
%Rehearsal Mark 1.
	    \mark \default
    	    g2.^\markup {Hello Dolly}
    	    e4 c8 e4 g8 |a2. |e4 c8 e4 g8 |b4 c8 b4 c8 |b4 c8 d4 c8 
    	    g r g g g g |g r fis g4 gis8 |a2. |f4 d8 f4 a8 |bes2. |f4 d8 f4 a8
    	    e' 4 d8 e4 d8 |e4 d8 b4 a8 |r r a8~-> (a4 b8 |g) r r r4 r8 
    	    r r g g g g |g2. |r8 r c c c c |c2. |r8 r4 d4. ( |c2.\trill )
    	    r8 r c c c c |b r b b4. |r8 r c~-> (c4 a8) |g4. (e4) g8 
    	    c c c c4 (a8) |g4. (e4) g8
    	    b b b bes4 bes8 |a4 a8 b!4 b8 |c2.~ |c8 r r c-> r r    	    
    	    \mark \markup { \musicglyph #"scripts.ufermata" }
    	    \bar "||"
\key f \major \time 2/2
	    c4->^\markup {\bold {\halign #0 Foxtrot (Mod.)}} r r2 
	    R1^\markup {\normalsize\number 1}

%Rehearsal Mark 2.
	    \mark \default
	    \repeat volta 2 {
	        c8\mf^\markup {Zither-Ballad} (cis d cis d4.) c8 ( |d2.~) d8 r 
	    c8 (cis d cis d4.) c8 ( |d2.~) d8 r }    
	    \alternative {
	    	    {c8 (cis d dis e4.) dis8 ( |e dis e dis e2) 
	    	     d!4. (cis8 d4. cis8 |d2~ d8) r r4 }
	    	    {c8 (cis d dis e4.) dis8 ( |e dis e2) c4 |c r r2 |r2 gis |
	    	    \bar "||"}
	    }
	    \repeat unfold 6 {a8 a a a} |a4 a8 (a~ a2) 
	    \repeat unfold 2 {a8 a4 a8 a a a4} |g2. e4 |e2.~ e8 r
	    bes'2 bes |bes4 bes2 bes8 bes |bes2 bes4. bes8 |bes bes4 bes8~ bes2 
	    \repeat unfold 4 {bes8 bes}
	    bes4\< bes2 c4\! |c\f r r2 |r r4 r8 c, |c (f a c) b4. c8 |c2~ c4 r8 c,
	    c (f a c) b4. c8 |c2~ c4 r8 c, |c (f a c) b4. c8 |c2. c4 
	    b8 (c) e2 c4 |f8 (d) c a f4 r8 c |c (f a c) b4. c8 |c2~ c4 r8 c,
	    c (f a c) b4. c8 |c2~ c4 r8 c, |c (f a c) b4. c8 |c4 d2 c4~ 
	    c bes2 g4 \bar "||"
\time 3/4
	    f4^\markup {\bold {Walzer tempo}} c'8\> (d c4~ |c) c8 (d c4~ 
	    c) c8 (d c4~ |c) c8 (d c4)\!
	    
%Rehearsal Mark 3.
	    \mark \default
	    \repeat volta 2 {
	    	    a4->\p^\markup {Ein gluckliches Madchen} r a |a4 a a |a a a
	    	    a2 (f4) |g-> r g |g g g |g a g |e2. |f4 f f |f g a 
	    	    bes bes bes |bes bes bes |c2 c4 |d c a }
	    	    \alternative {
	    	    	    {g g bes |r bes bes}
	    	    	    {g2.~ |g }
	    	    } 
	   r4 bes bes |bes (c bes) |g g g |g (aes g) |bes bes bes |bes (c bes) 
	   r8 bes (d4) d
	   r8 g, (c4) c |r4 c c |c (d c) |a a a |a (bes a) |c\< c c |c d c 
	   r8 b (e4) e |r8 c (e4) e |a,->\f r a |a a a |a a a |a2 (f4) 
	   g g g |g g g |g a g |e2. |f4 f f |f g a |bes bes bes |bes c d 
	   \repeat unfold 6 {e-> (f) f} |f2.~ |f4 r r
	   \bar "||"
	   
	   \time 4/4
	   r4\fp\<^\markup {\bold {Moderato (espr.)}} aes,2. 
	   \tuplet 3/2 {c4\> (aes c} a2\!) |r4\< aes2. 
	   \tuplet 3/2 {c4\> (aes c} aes2\!)
	   \bar "||"
	   
%Rehearsal Mark 4.
	   \mark \default
	   f,1~\p^\markup {Ganz Paris} ( |f2 ees) |f r8 f'4-> (c8) |f4 (c2.)
	   f,1~ ( |f2 d) |r4 g \tuplet 3/2 {bes c e} |\tuplet 3/2 {g g g} g2
	   g,1~ ( |g2 dis) |e r8 g'4-> (e8) |g4 (e2.) |g,1~ ( |g2 e) 
	   f2 r8 f'4-> (c8) |f4\< (c) \tuplet 3/2 {f a c} 
	   \bar "||" 
	   f,2\f^\markup {\bold {L'stesso-Tempo}} f |f4 (a g4. f8) 
	   a4 (f) r8 a4 (f8) |a4 (f2.) |f2 a |g4 (f e4. d8) |c1~ 
	   c2. c8 r |bes'2 bes |bes4 (d2) bes4 |a4. (gis8) a4. (gis8) 
	   a4 (bes a a) |g4 (a2 bes4) |a2 g 
	   \bar "||"
	   
	   \time 2/2
	   r4^\markup {\bold {Foxtrott (Mod. Swing}} f \tuplet 3/2 {g bes g} 
	   a r r2 \bar "||"
	   

%Rehearsal Mark 5.
	   \mark \default
	   \key bes \major
	   r4^\markup {C'est magnifique} f\p (bes) r |r4 f (bes) r |bes1~ |bes  
	   r4 f f f8 f~ |f4 g g g |g2 ees~ |ees2. r4 |r g (c) r |r g (c) r 
	   c1~ |c |r4 g g g8 g~ |g4 a a f |g2 d~ |d2. f4 |bes2. (c4)
	   d2. (a4) |g (a g a |g) f f f8 f~ |f1~ |f4 bes8 (c) d4 (bes)|d2 c 
	   b2 (c4) g |c2. (d4) |ees2. (c4) |d (c bes g |f) d, (f d') |c1 ( |d) 
	   r4 bes'4\< (d2) |ees2 \tuplet 3/2 {ees4 bes ees} |d1~->\ff |d4 r r2
	   \bar "|."
    }

}


\score {
	<<
		\staffClarinetInBb
	>>
	
	\midi {
	}

  \layout {#(set-default-paper-size "a4")
  	  ragged-last = ##t
  }
}

\paper {
}


