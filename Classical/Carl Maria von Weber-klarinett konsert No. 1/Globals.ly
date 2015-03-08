\version "2.12.3"

%#(set-global-staff-size 17) % set staff-size when ready to print

padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})

semppK = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre" #:dynamic "pp")))

sempuip = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre piÃ¹" #:dynamic "p")))

sempK = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre" #:dynamic "p")))
           	   
Coda = ^\markup {\larger\bold "Coda"}       

AstringTempo = \tempo 
               \markup {\bold "Allegro moderato"}
		4 = 90		
Atime = \time 3/4
Akey =  \key bes \major


		
OneBarRest = R2.^\markup{\normalsize\number 1}
 OneBR = R1^\markup{\normalsize\number 1}

