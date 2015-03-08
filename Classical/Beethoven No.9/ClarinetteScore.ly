\version "2.12.3"

#(set-default-paper-size "Letter")
#(set-global-staff-size 20)  
#(ly:set-option 'point-and-click #t)

\include "Globals.ly"

\header {
title = "Symphony No. 9 in D minor" 
 composer = "Ludvig van Beethoven" 
 opus = "OP. 125" 
 poet = \markup \box { \pad-around #1 {"Klarinette 1 in Bb"}}
 piece = "Molto vivace"  
	}%end header

\score {
	\relative c' {
	\set midiInstrument = #"clarinet"
	\include "Cl1-Sats-2.ly"
	}% end music

	\header {piece = "II. Molto vivace"}
	\midi

} %end score

