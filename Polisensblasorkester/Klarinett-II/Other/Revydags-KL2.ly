% Created on Fri Jun 22 15:35:37 CEST 2012
\version "2.14.2"
#(set-global-staff-size 15) % set staff-size when ready to print
\header {
	title = "REVYDAGS" 
 	composer = "Jerry Högstedt" 
 arranger = "Arr: Robert Sjölin" 
 	instrument = "Klarinett II i Bb" 
 	copyright = "Nils George Musikförlag: 1964" 
 tagline = "Kopierad av John McWilliam" 

}

%\language "svenska"


staffClarinetInBb = \new Staff {
    \time 2/2
%    \set Staff.instrumentName = "Clarinet in Bb"
    \set Staff.midiInstrument = "clarinet"
%    \transposition aiss,
    \key g \major
    \clef treble
    \compressFullBarRests
    \relative c' {     
    	    r2^\markup {\bold {Brightly}} r8 fis8\ff (g a |bes a g fis g fis g a
    	    bes a g fis g fis g a
    	    bes a g fis g fis g a |bes a g fis g a bes c |d4) r r2 
    	    R1^\markup{\normalsize\number 1} |d,8\f (cis d\< e fis e fis g 
    	    a gis a b c d e fis 
    	    \mark \markup { \musicglyph #"scripts.segno" }g4\ff) d, r d 
    	    r d r d |r ees r ees 
    	    r ees r ees |r d r d |r d r d |r ees r ees |r ees r ees |r d r d
    	    r d r ees |r f r f |r e r e |r d r d |r d r d |r c r d |e4 r r2
    	    r4 d r d |r d r d |r ees r ees |r ees r ees |r d r d |r d r d 
    	    r ees r ees |r ees r ees 
    	    \once \override Score.RehearsalMark #'font-size = #4
    	    \mark \markup { \musicglyph #"scripts.coda" }
    	    r d^\markup {Alt. 1)} r d |r d r ees |r f r f |r e r e
    	    r d r d |r e r ees |r d r d~ |d d\mf (ees e |dis) r dis2\pp\<
    	    e e |f f\! |fis! fis |b4\f (gis) fis d~-> |d fis gis2 |b1~-> 
    	    b4 gis\> ( fis d\! |cis) r cis2\pp |d\< d |ees ees |e! b'\! 
    	    a4\f (fis) e c~-> |c e fis2-> |a1~-> |a4 r a2->\ff |r4 d, r d
    	    r d r d |r ees r ees |r ees r ees | r d r d |r d r d |r ees r ees
    	    r ees r ees 
    	    \once \override Score.RehearsalMark #'font-size = #4
    	    \mark \markup { \musicglyph #"scripts.coda" }
    	    r d^\markup {Alt. 2)} r d |r d r ees | r f r f |r e r e | r d r d 
    	    r c r c |c r r2 |R1^\markup{\normalsize\number 1} \bar "||"
    	    \key ees \major
    	    r4 ees2~\pp\< ees4-- |r ees2~ ees4--\! |r ees2~ ees4-- 
    	    r\> ees2~ ees4--\!
    	    r\< ees2~ ees4-- |r d2~ d4--\! |r\> c2~ c4-- |r c2~ c4--\! 
    	    r4\< g'2~ g4-- |r4 g2~ g4-- |r4 g2~ g4-- |r4\> g2~ g4--\! 
    	    r fis2~ fis4--
    	    r fis2~ fis4-- |r4 g2~ g4-- |r aes2~ aes4-- |ees'2.\f\< \(ees4 
    	    ees2. ees4
    	    ees2. ees4\> |ees1\) |ees2.\<\( ees4 |des2.\! des4 |f2.\> e4 
    	    f2.\!\) r4 |R1*4 |c,1\p |bes |bes~ |bes4 r d2\ff \bar "||"
    	    \mark \markup { \musicglyph #"scripts.segno" }
    	    
\cadenzaOn
\stopStaff
  \override Staff.TimeSignature #'break-visibility = #end-of-line-invisible 
  \set Staff.explicitClefVisibility = #end-of-line-invisible 
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 
  \set Staff.printKeyCancellation = ##f 

\once \override TextScript #'extra-offset = #'( 2 . -3.5 )
        | s1*0^\markup { D.S. al Coda (Alt. 1 eller 2) } 

       \repeat unfold 4 {
          s4 s4 s4 s4
          \bar ""
        }
\startStaff
\cadenzaOff

% Coda on new line, use this:
     \break
     \once \override Score.RehearsalMark #'extra-offset = #'( -6.42 . 0.75 )
     \once \override Score.RehearsalMark #'font-size = #4
     \mark \markup { \musicglyph #"scripts.coda" }

   % The coda
   	\clef treble \key g \major
	\times 2/3 {d2\ff d e} |\times 2/3 {fis g a} |des1~ |des4 r r2 
	r g,--^\markup {Rit.......} |f-- ees-- |e!1~ |e4 r r2   	    
    \bar "|."
    }%end relative

}%end staff


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


