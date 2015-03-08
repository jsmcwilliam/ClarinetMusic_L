% Created on Sun Jun 24 11:43:01 CEST 2012
\version "2.14.2"
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
    	    d8->^\markup {\bold {Marcia}} r r r4 r8 |f-> r r r4 r8 
    	    a-> r r a4.\trill |g8 r r e4.  
    	    \bar "||"
%Rehearsal Mark 1.
	    \mark \default
    	    e2.^\markup {Hello Dolly}
    	    c4 g8 c4 e8 |e2. |c4 g8 c4 e8 |g4 g8 g4 g8 |g4 g8 a4 a8 
    	    f r f f8 f f |f r cis d4 ees8 |f2. |d4 a8 d4 f8 |f2. |d4 a8 d4 f8
    	    a4 a8 a4 a8 |b4 b8 g4 f8 |r r g8~-> (g4 ges8 |f) r r r4 r8 
    	    r r e e e e |e2. |r8 r a a a a |g2. |r8 r4 bes4.~ |bes2.\trill 
    	    r8 r a a a a |gis r gis gis4. |r8 r a~-> (a4 e8) |e4. (b4) e8 
    	    a a a a4 (e8) |e4. (b4) e8
    	    fis fis fis fis4 fis8 |f!4 f8 g4 g8 |g2.~ |g8 r r g-> r r    	    
    	    \mark \markup { \musicglyph #"scripts.ufermata" }
    	    \bar "||"
\key f \major \time 2/2
	    g4->^\markup {\bold {\halign #0 Foxtrot (Mod.)}} r r2 
	    R1^\markup {\normalsize\number 1}

%Rehearsal Mark 2.
	    \mark \default
	    \repeat volta 2 {
	        c,8\mf^\markup {Zither-Ballad} (cis d c d4.) c8 ( |d2.~) d8 r 
	    c8 (cis d c d4.) c8 ( |d2.~) d8 r }    
	    \alternative {
	    	    {c8 (cis d dis e4.) d8 ( |e dis e dis e2) 
	    	     d!4. (cis8 d4. cis8 |d2~ d8) r r4 }
	    	    {c8 (cis d dis e4.) d8 ( |e dis e2) a4 |a r r2 |r2 e |
	    	    \bar "||"}
	    }
	    \repeat unfold 6 {f8 f f f} |f4 f8 (f~ f2) 
	    \repeat unfold 2 {f8 f4 f8 f f f4} |e2. c4 |bes2.~ bes8 r
	    e2 e |e4 e2 e8 e |e4 (g) g4. f8 |e e4 e8~ e2 |\repeat unfold 4 {e8 e}
	    g4\< g2 gis4\! |a\f r r2 |r r4 r8 c,, |c (f a c) b4. c8 |c2~ c4 r8 c,
	    c (f a c) b4. c8 |c2~ c4 r8 c, |c (f a c) b4. c8 |c2. c4 
	    b8 (c) e2 c4 |f8 (d) c a f4 r8 c |c (f a c) b4. c8 |c2~ c4 r8 c,
	    c (f a c) b4. c8 |c2~ c4 r8 c, |c (f a c) b4. c8 |c4 d2 c4~ 
	    c bes'2 g4 \bar "||"
\time 3/4
	    f4^\markup {\bold {Walzertempo}} c8\> (d c4~ |c) c8 (d c4~ 
	    c) c8 (d c4~ |c) c8 (d c4)\!
	    
%Rehearsal Mark 3.
	    \mark \default
	    \repeat volta 2 {
	    	    f4->\p^\markup {Ein gluckliches Madchen} r f |f4 f f |f f f
	    	    f2 (c4) |f-> r d |e e e |f f f |e2. |c4 c c |c c f |f f f 
	    	    g g g |a2 a4 |a a f }
	    	    \alternative {
	    	    	    {d d f |r e g}
	    	    	    {ees2.~ |ees }
	    	    } 
	   r4 aes aes |aes2. |g4 g g |ees2. |aes4 aes aes |aes2. |r8 g (bes4) bes
	   r8 e, (g4) g |r4 bes bes |bes2. |a4 a a |f2. |g4\< g g |a a a 
	   r8 g (b4) b |r8 g (bes!4) bes |f->\f r f |f f f |f f f |f2 (c4) 
	   f f f |e e e |f f f |e2. |c4 c c |c ees f |f f f |f g bes 
	   \repeat unfold 6 {e,-> (f) f} |a2.~ |a4 r r
	   \bar "||"
\time 4/4
	   r4\fp\<^\markup {\bold {Moderato (espr.)}} f2. 
	   \times 2/3 {aes4\> (f aes} f2\!) |r4\< f2. 
	   \times 2/3 {aes4\> (f aes} f2\!)
	   \bar "||"
	   
%Rehearsal Mark 4.
	   \mark \default
	   f,1~\p^\markup {Ganz Paris} ( |f2 ees) |f r8 c'4-> (aes8) |c4 (aes2.)
	   f1~ ( |f2 d) |r4 g \times 2/3 {bes c e} |\times 2/3 {g g g} e2
	   d, (ees |d dis) |e r8 e'4-> (c8) |e4 (c2.) |f,2 (g4 f |e1) 
	   f2 r8 c'4-> (aes8) |c4\< (aes) \times 2/3 {f a c} 
	   \bar "||" 
	   d2\f^\markup {\bold {L'stesso-Tempo}} d |e4 (f e4. d8) 
	   f4 (d) r8 a'4 (f8) |a4 (f2.) |d2 f |e4 (d b4. b8) |bes1~ 
	   bes2. bes8 r |g'2 g |g4 (bes2) g4 |f2 f |f4 (f f fis) |r d (fis g)
	   a2 g 
	   
\time 2/2
	   r4^\markup {\bold {Foxtrott (Mod. Swing}} f \times 2/3 {ees g ees} 
	   ees r r2 \bar "||"
	   

%Rehearsal Mark 5.
	   \mark \default
	   \key bes \major
	   r4^\markup {C'est magnifique} d\p (f) r |r4 d (f) r |f1~ |f  
	   r4 d d d8 d~ |d4 g g g |g2 ees~ |ees2. r4 |r ees (g) r |r ees (g) r 
	   f1~ |f |r4 ees ees ees8 ees~ |ees4 a a f |g2 bes,~ |bes2. d4 |f2. (a4)
	   bes2. (f4) |d (d d d |d) f f f8 f~ |f1~ |f4 f aes2 |g g |g2. ees4
	   g2. (b4) |c2. (bes4) |bes (f f cis |d) d, (f d') |c1 ( |d) 
	   r4 bes'2.\< |bes2 \times 2/3 {bes4 g bes} |bes1~->\ff |bes4 r r2
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


