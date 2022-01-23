\version "2.22.1"


#(set-global-staff-size 17) % set staff-size when ready to print

padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript.padding = #padding #})

semppK = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre" #:dynamic "pp")))

sempuip = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre piÃ¹" #:dynamic "p")))

sempK = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre" #:dynamic "p")))
           	   
Coda = ^\markup {\larger\bold "Coda"}       

AstringTempo = \tempo 
               \markup {\bold "Grandioso"}
%		4 = 90		
Atime = \time 4/4
Akey =  \key bes \major

BstringTempo = 	\tempo
		\markup {\bold "poco piu"}
Btime =	\time 3/4
Bkey = 	\key g \major

CstringTempo = \tempo
		\markup {\bold "Modito"}
Ckey = \key c \major

DstringTempo = \tempo
		\markup {\bold "Tempo di Valse"}
Dkey = \key f \major

EstringTempo = \tempo
		\markup {\bold "Tempo di Calypso"}
Ekey = \key d \major
		
OneBarRest = R2.^\markup{\normalsize\number 1}
OneBR = R1^\markup{\normalsize\number 1}
OneBrSixEight = R2^\markup{\normalsize\number 1}

