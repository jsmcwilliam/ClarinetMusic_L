\version "2.12.3"

 #(set-global-staff-size 17) % set staff-size when ready to print

padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})

semppK = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre" #:dynamic "pp")))

sempuip = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre più" #:dynamic "p")))

sempK = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre" #:dynamic "p")))
           	   
Coda = ^\markup {\larger\bold "Coda"}       

AstringTempo = \tempo 
               \markup {\bold "Molto vivace"}
		2. = 116		
Atime = \time 3/4
Akey =  \key d \minor

BstringTempo = \tempo 
               \markup {"Ritmo di tre battute"}
Bkey = \key e \minor

CstringTempo = \tempo
	       \markup {"Ritmo di quatro battute"}
	       
DstringTempo = \tempo
	       \markup {\bold "Presto"}
		2 = 116
Dtime = \time 4/4
Dkey =  \key b \minor
		
OneBarRest = R2.^\markup{\normalsize\number 1}
 OneBR = R1^\markup{\normalsize\number 1}

