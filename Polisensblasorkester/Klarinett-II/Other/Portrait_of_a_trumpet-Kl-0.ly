
% Created on Mon Jun 25 19:28:15 CEST 2012
\version "2.14.2"
#(set-global-staff-size 16) % set staff-size when ready to print
\header {
	title = "PORTRAIT OF A TRUMPET" 
 	composer = "Sammy Nestico" 
 	instrument = "Clarinet II in Bb" 
 	tagline = "Kopierad av John McWilliam" 

}

%\language "svenska"


staffClarinetInBb = \new Staff {
    \time 4/4 \key a \major \clef treble
    \set Staff.midiInstrument = "clarinet"
    \compressFullBarRests
    \set Score.markFormatter = #format-mark-circle-alphabet
%    \set Score.markFormatter = #format-mark-circle-letters
    \relative c' {     
    	    r8^\markup {\bold {Slowly}} e,\p\<_\markup {accel..............} 
    	    (fis cis' gis a cis e |fis gis a b cis dis e fis 
    	    gis2~\ff^\markup {\bold {Adagio}} gis8 g gis g |fis4 cis2) d4 (
    	    b e8 b gis4 a8 cis |f\> dis cis b gis fis! f dis\p) |r2 f'4 (fis)
    	    R1^\markup{\normalsize\number 1} \bar "||"
    	    
%Rehearsal mark A
	   \mark \default
	   dis,1\mf^\markup {\bold {Adagio}} ( |gis) 
	   \slurDown e4 (fis gis8 a cis b |bes1) |fis ( |f2. gis4 \slurNeutral
	   gis2.) gis32\< (a b cis dis e fis gis |a8->\f\> fis e c a fis e g, 
	   e'4.\mp c8 d2) |dis (d) |r4 bes4 (a2 |gis gis) |
	   r8 e\p\<_\markup {accel..............} 
    	    (fis cis' gis a cis e |fis gis a b cis dis e fis
    	    
%Rehearsal mark B
	   \mark \default
	   gis2~\ff^\markup {\bold {Tempo I}} gis8 g gis g\> |fis4 cis2.\mp) 
    	    R1*2^\markup {\bold {Piu mosso}}
	   
%Rehearsal mark C
	   \mark \default
	   a8\f (gis! a c b g e d |e2.) c8 (d  
	   ees f g bes a4 f!8 [\grace {e16 [ees]} d8]\>
	   c1) |e2\mf (d |b1 |d2_\markup {Rall....} e)
	   
%Rehearsal mark D
	   \mark \default
	   \key f \major \time 2/2
	   R1*10^\markup {\bold {Allegretto}}
	   bes'4\mf (a bes f' |e d c d |e1~ |e4 d c b |d1~ |d8) r r4 c (d
	   e1~ |e4 d c bes! |d1~ |d4 c\> bes fis 
	   
%Rehearsal mark E
	   \mark \default	   
	   f!1\mp |e!) |R1*6

%Rehearsal mark F
	   \mark \default	   
	   d1\mf ( |ees |e! |ees) |d ( |g |f2. g4 |e1) |r4 fis'8 (gis a4-.) a,4-.
	   gis1 |r4 e'8 (fis g4-.) g,4-. |fis1 |bes4 (g2.~ |g4 d e g |aes f2.~
	   f4 c d f
	   
%Rehearsal mark G
	   \mark \default	   
	   fis e2.~ |e1) |R1*4
	   
%Rehearsal mark H
	   \mark \default	   
	   \key a \major
	   r2 cis'!2\f ( |d1) |r2 dis ( |d!1) |r2 cis ( |dis fis, |dis fis |f1) 
	   e\mf ( |dis |dis |d!) |a ( |a |c |b) |cis2\pp\< (dis |e fis |b b
	   cis) c!4-^ d!-^ 
	   
%Rehearsal mark I
	   \mark \default	   
	   e->\fff^\markup {\bold {Allergando}} (dis cis!2) |r4 a^^ c-^ dis-^
	   dis-> (dis b2) |r4 gis^^ b^^ b^^ |e2-> dis-> 
	   \bar "||" \time 4/4
	   \override BreathingSign #'text = 
	   	\markup { \musicglyph #"scripts.caesura.curved" }
	   cis1->\fermata_\markup {dim.} \breathe |R1^\markup {Cadenza...}
	   r4^\markup {\bold {Slowly}} e,8\p (fis gis4 fis 
	   
%Rehearsal mark J
	   \mark \default	   
	   f!1~ |f |bes,~ |bes) |dis2\mf (cis |e1) 
	   R1^\markup{\normalsize\number 1}_\markup {Rall...}
	   \bar "||"
	   
%Rehearsal mark K
	   \mark \default	   
	   \key c \major
	   fis'8\f^\markup {\bold {Tempo I Con espressione}} (ees b fis fis2
	   e4.) cis'8 (cis d g e |g,4 gis b8 a gis g |fis bes cis fis f2 
	   e8 f d2.) |r4 e,8 (f g a b c |d e g,2.) 
	   r2 a'8\f\fermata (g^\markup {\bold {Con moto}} a g
	   f\> ees f ees c_\markup {Rall......} bes ees c 
	   c!16)\mf^\markup {\bold {Meno mosso}} b! bes\> a aes2. 
	   e4\p (f!8 e dis2 \bar "||"
	   
%Rehearsal mark L
	   \mark \default	   
	   \key a \major
	   dis1^\markup {\bold {Tempo I}} |d!) |cis ( |e |d |d) |r4 b'\< (e cis)
	   a'8\ff (g e\> d c a g e |e4.\mp c8 d2) |dis (d) |r4 cis\pp\< (c2)
	   r4 d d2 |r4 fis (f2) |r8\f e (a cis d bes16 c d8 e 
	   c_\markup {molto rit.......} a f2.)
	   cis!2-> a''->\fermata\ff
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
  }
}

\paper {#(set-default-paper-size "a4")
}


