\version "2.18.2"

%#(set-global-staff-size 6) % set staff-size when ready to print


%\include "../Includes/Exercises_format.ily" 	
\include "Exercises_format.ily" 	

\header {
  title = "Broken Chords"
}

Cmajor = \relative c' {
  \key c \major
  \time 4/4
  c4~ ^\markup {\bold "C Major"}
  \( \slurUp c16    	(e,-.) 		\slurDown g^. 		(c^.)
     \slurUp e      	(g,-.) 		\slurDown c^. 		(e^.)
     \slurUp g      	(c,-.) 		\slurDown e^. 		(g^.) \)
  
     \slurUp c16 \( 	(e,-.) 		\slurDown g^. 		(c^.)
     \slurUp e      	(g,-.) 		\slurDown c^. 		(e^.)
     \slurUp g      	(c,-.) 		\slurDown e^. 		(g^.)
     \slurUp c      	(e,-.) 		\slurDown g^. 		(c^.) \)
      
     \slurUp e   \( 	(c-.)  		\slurDown g^. 		(e^.)
     \slurUp c'     	(g-.)  		\slurDown e^. 		(c^.)
     \slurUp g'     	(e-.)  		\slurDown c^. 		(g^.) 
     \slurUp e'     	(c-.)  		\slurDown g^. 		(e^.) \)
     
     \slurUp c'  \( 	(g-.)  		\slurDown e^. 		(c^.)
     \slurUp g'     	(e-.)  		\slurDown c^. 		(g^.)
     \slurUp e'     	(c-.)  		\slurDown g^. 		(e^.)
  c'4  \) \bar "|." \break
      
}
 
  Aminor = \relative c' {
  \key a \minor
  \time 4/4
  a4~ ^\markup {\bold "A Minor"}
  \( \slurUp a16    	(e-.)   	\slurDown a^. 		(c^.)
     \slurUp e      	(a,-.)  	\slurDown c^. 		(e^.)
     \slurUp a      	(c,-.)  	\slurDown e^. 		(a^.) \)
  
     \slurUp c16 \( 	(e,-.)  	\slurDown a^. 		(c^.)
     \slurUp e      	(a,-.)  	\slurDown c^. 		(e^.)
     \slurUp a      	(c,-.)  	\slurDown e^. 		(a^.)
     \slurUp c      	(e,-.)  	\slurDown a^. 		(c^.) \)
      
     \slurUp e  \(  	(c-.)  		\slurDown a^. 		(e^.)
     \slurUp c'     	(e,-.) 		\slurDown e^. 		(c^.)
     \slurUp a'     	(e-.)  		\slurDown c^. 		(a^.)
     \slurUp e'     	(c-.)  		\slurDown a^. 		(e^.) \)
     
     \slurUp c' \(  	(a-.)  		\slurDown e^. 		(c^.)
     \slurUp a'     	(e-.)  		\slurDown c^. 		(a^.)
     \slurUp e'     	(c-.)  		\slurDown a^. 		(e^.) 
  a4 \) \bar "|." \break
  
}

Gmajor = \relative c'' {
  \key g \major
  \time 4/4
  g4~ ^\markup {\bold "G Major"}
  \( \slurUp g16    	(g,-.) 	 	\slurDown b^. 		(d^.)
     \slurUp g      	(b,-.)  	\slurDown d^. 		(g^.)
     \slurUp b      	(d,-.)  	\slurDown g^. 		(b^.) \)
  
     \slurUp d16 \( 	(g,-.)  	\slurDown b^. 		(d^.)
     \slurUp g      	(b,-.)  	\slurDown d^. 		(g^.)
     \slurUp b      	(d,-.)  	\slurDown g^. 		(b^.)
     \slurUp d      	(g,-.)  	\slurDown b^. 		(d^.) \)
      
     \slurUp g  \(  	(d-.)  		\slurDown b^. 		(g^.)
     \slurUp d'     	(b-.)  		\slurDown g^. 		(d^.)
     \slurUp b'     	(g-.)  		\slurDown d^. 		(b^.)
     \slurUp g'     	(d-.)  		\slurDown b^. 		(g^.) \)
     
     \slurUp d' \(  	(b-.)  		\slurDown g^. 		(d^.)
     \slurUp b'     	(g-.)  		\slurDown d^. 		(b^.)
     \slurUp g'     	(d-.)  		\slurDown b^. 		(g^.) 
  g'4 \) \bar "|." \break
  
}

Eminor = \relative c' {
  \key e \minor
  \time 4/4
  e4~ ^\markup {\bold "E Minor"}
  \( \slurUp e16    	(e,-.)  	\slurDown g^.   	(b^.)
     \slurUp e      	(g,-.)    	\slurDown b^. 		(e^.)
     \slurUp g      	(b,-.)  	\slurDown e^. 		(g^.) \)
  
     \slurUp b16 \( 	(e,-.)  	\slurDown g^.   	(b^.)
     \slurUp e      	(g,-.)    	\slurDown b^. 		(e^.)
     \slurUp g      	(b,-.)  	\slurDown e^. 		(g^.)
     \slurUp b      	(e,-.)  	\slurDown g^.   	(b^.) \)
      
     \slurUp e   \(  	(b-.)   	\slurDown g^.   	(e^.)
     \slurUp b'     	(g-.)  	   	\slurDown e^. 		(b^.)
     \slurUp g'     	(e-.)   	\slurDown b^. 		(g^.)
     \slurUp e'     	(b-.)   	\slurDown g^.   	(e^.) \)
     
     \slurUp b'  \(  	(g-.)  	   	\slurDown e^. 		(b^.)
     \slurUp g'     	(e-.)   	\slurDown b^. 		(g^.)
     \slurUp e'     	(b-.)   	\slurDown g^.   	(e^.) 
  e'4 \) \bar "|." \break
  
}

Fmajor = \relative c' {
  \key f \major
  \time 4/4
  f4~ ^\markup {\bold "F Major"}
  \( \slurUp f16    	(f,-.)  	\slurDown a^. 		(c^.)
     \slurUp f      	(a,-.)  	\slurDown c^. 		(f^.)
     \slurUp a      	(c,-.)  	\slurDown f^. 		(a^.) \)
  
     \slurUp c16 \( 	(f,-.)  	\slurDown a^. 		(c^.)
     \slurUp f      	(a,-.)  	\slurDown c^. 		(f^.)
     \slurUp a      	(c,-.)  	\slurDown f^. 		(a^.)
     \slurUp c      	(f,-.)  	\slurDown a^. 		(c^.) \)
      
     \slurUp f  \(  	(c-.)  		\slurDown a^. 		(f^.)
     \slurUp c'     	(a-.)  		\slurDown f^. 		(c^.)
     \slurUp a'     	(f-.)  		\slurDown c^. 		(a^.)
     \slurUp f'     	(c-.)  		\slurDown a^. 		(f^.) \)
     
     \slurUp c' \(  	(a-.)  		\slurDown f^. 		(c^.)
     \slurUp a'     	(f-.)  		\slurDown c^. 		(a^.)
     \slurUp f'     	(c-.)  		\slurDown a^. 		(f^.) 
  f'4 \) \bar "|." \break
  
}

Dminor = \relative c' {
  \key d \minor
  \time 4/4
  d4~ ^\markup {\bold "D Minor"}
  \( \slurUp d16    	(f,-.)  	\slurDown a^. 		(d^.)
     \slurUp f      	(a,-.)  	\slurDown d^. 		(f^.)
     \slurUp a      	(d,-.)  	\slurDown f^. 		(a^.) \)
  
     \slurUp d16 \( 	(f,-.)  	\slurDown a^. 		(d^.)
     \slurUp f      	(a,-.)  	\slurDown d^. 		(f^.)
     \slurUp a      	(d,-.)  	\slurDown f^. 		(a^.)
     \slurUp d      	(f,-.)  	\slurDown a^. 		(d^.) \)
      
     \slurUp f  \(  	(d-.)  		\slurDown a^. 		(f^.)
     \slurUp d'     	(a-.)  		\slurDown f^. 		(d^.)
     \slurUp a'     	(f-.)  		\slurDown d^. 		(a^.)
     \slurUp f'     	(d-.)  		\slurDown a^. 		(f^.) \)
     
     \slurUp d' \(  	(a-.)  		\slurDown f^. 		(d^.)
     \slurUp a'     	(f-.)  		\slurDown d^. 		(a^.)
     \slurUp f'     	(d-.)  		\slurDown a^. 		(f^.) 
  d'4 \) \bar "|." \break
  
}

Dmajor = \relative c' {
  \key d \major
  \time 4/4
  d4~ ^\markup {\bold "D Major"}
  \( \slurUp d16    	(fis,-.)  	\slurDown a^. 		(d^.)
     \slurUp fis    	(a,-.)  	\slurDown d^. 		(fis^.)
     \slurUp a      	(d,-.)  	\slurDown fis^.	(a^.) 	 \)
  
     \slurUp d16 \( 	(fis,-.)  	\slurDown a^. 		(d^.)
     \slurUp fis    	(a,-.)  	\slurDown d^. 		(fis^.)
     \slurUp a      	(d,-.)  	\slurDown fis^.	(a^.)
     \slurUp d      	(fis,-.)  	\slurDown a^. 		(d^.) 	 \)
      
     \slurUp fis \( 	(d-.)  		\slurDown a^. 		(fis^.)
     \slurUp d'     	(a-.)  		\slurDown fis^.	(d^.)
     \slurUp a'     	(fis-.)  	\slurDown d^. 		(a^.)
     \slurUp fis'   	(d-.)  		\slurDown a^. 		(fis^.) \)
     
     \slurUp d'  \( 	(a-.)  		\slurDown fis^.	(d^.)
     \slurUp a'     	(fis-.)  	\slurDown d^. 		(a^.)
     \slurUp fis'   	(d-.)  		\slurDown a^. 		(fis^.) 
  d'4 \) \bar "|." \break
  
}

Bminor = \relative c' {
  \key b \minor
  \time 4/4
  b4~ ^\markup {\bold "B Minor"}
  \( \slurUp b16    	(fis-.)  	\slurDown b^.   	(d^.)
     \slurUp fis    	(b,-.)   	\slurDown d^.   	(fis^.)
     \slurUp b      	(d,-.)   	\slurDown fis^. 	(b^.)   \)
  
     \slurUp d16 \( 	(fis,-.) 	\slurDown b^.   	(d^.)
     \slurUp fis    	(b,-.)   	\slurDown d^.   	(fis^.)
     \slurUp b      	(d,-.)   	\slurDown fis^. 	(b^.)
     \slurUp d      	(fis,-.) 	\slurDown b^.   	(d^.)   \)
      
     \slurUp fis \( 	(d-.)    	\slurDown b^.   	(fis^.)
     \slurUp d'     	(b-.)    	\slurDown fis^. 	(d^.)
     \slurUp b'     	(fis-.)  	\slurDown d^.   	(b^.)
     \slurUp fis'   	(d-.)    	\slurDown b^.   	(fis^.) \)
     
     \slurUp d'  \( 	(b-.)    	\slurDown fis^. 	(d^.)
     \slurUp b'     	(fis-.)  	\slurDown d^.   	(b^.)
     \slurUp fis'   	(d-.)    	\slurDown b^.   	(fis^.) 
  b4 \) \bar "|." \break
  
}

Bbmajor = \relative c' {
  \key bes \major
  \time 4/4
  bes4~ ^\markup {\bold "Bb Major"}
  \( \slurUp bes16	(f-.)		\slurDown bes^.	(d^.)	
     \slurUp f    	(bes,-.)  	\slurDown d^.  	(f^.)
     \slurUp bes      	(d,-.)  	\slurDown f^. 		(bes^.) \)
  
     \slurUp d16 \( 	(f,-.) 		\slurDown bes^.   	(d^.)
     \slurUp f    	(bes,-.)   	\slurDown d^.   	(f^.)
     \slurUp bes      	(d,-.)   	\slurDown f^. 		(bes^.)
     \slurUp d      	(f,-.) 		\slurDown bes^.   	(d^.)   \)
      
     \slurUp f \( 	(d-.)    	\slurDown bes^.   	(f^.)
     \slurUp d'     	(bes-.)    	\slurDown f^. 		(d^.)
     \slurUp bes'     	(f-.)  		\slurDown d^.   	(bes^.)
     \slurUp f'   	(d-.)    	\slurDown bes^.   	(f^.) \)
     
     \slurUp d'  \( 	(bes-.)    	\slurDown f^. 		(d^.)
     \slurUp bes'     	(f-.)  		\slurDown d^.   	(bes^.)
     \slurUp f'   	(d-.)    	\slurDown bes^.   	(f^.) 
  bes4 \) \bar "|." \break
    
  }

Gminor = \relative c' {
  \key g \minor
  \time 4/4
  g'4~ ^\markup {\bold "G Minor"}
  \( \slurUp g16	(g,-.)		\slurDown bes^.	(d^.)	
     \slurUp g    	(bes,-.)  	\slurDown d^.  	(g^.)
     \slurUp bes      	(d,-.)  	\slurDown g^. 		(bes^.) \)
  
     \slurUp d16 \( 	(g,-.) 		\slurDown bes^.   	(d^.)
     \slurUp g    	(bes,-.)   	\slurDown d^.   	(g^.)
     \slurUp bes      	(d,-.)   	\slurDown g^. 		(bes^.)
     \slurUp d      	(g,-.) 		\slurDown bes^.   	(d^.)   \)
      
     \slurUp g \( 	(d-.)    	\slurDown bes^.   	(g^.)
     \slurUp d'     	(bes-.)    	\slurDown g^. 		(d^.)
     \slurUp bes'     	(g-.)  		\slurDown d^.   	(bes^.)
     \slurUp g'   	(d-.)    	\slurDown bes^.   	(g^.) \)
     
     \slurUp d'  \( 	(bes-.)    	\slurDown g^. 		(d^.)
     \slurUp bes'     	(g-.)  		\slurDown d^.   	(bes^.)
     \slurUp g'   	(d-.)    	\slurDown bes^.   	(g^.) 
  g'4 \) \bar "|." \break
    
  }

  Amajor = \relative c' {
  \key a \major
  \time 4/4
  a4~ ^\markup {\bold "A Major"}
  \( \slurUp a16    	(e-.)   	\slurDown a^. 		(cis^.)
     \slurUp e      	(a,-.)  	\slurDown cis^. 	(e^.)
     \slurUp a      	(cis,-.)  	\slurDown e^. 		(a^.) \)
  
     \slurUp cis16 \( 	(e,-.)  	\slurDown a^. 		(cis^.)
     \slurUp e      	(a,-.)  	\slurDown cis^. 	(e^.)
     \slurUp a      	(cis,-.)  	\slurDown e^. 		(a^.)
     \slurUp cis      	(e,-.)  	\slurDown a^. 		(cis^.) \)
      
     \slurUp e  \(  	(cis-.)  	\slurDown a^. 		(e^.)
     \slurUp cis'     	(a-.) 		\slurDown e^. 		(cis^.)
     \slurUp a'     	(e-.)  		\slurDown cis^. 	(a^.)
     \slurUp e'     	(cis-.)  	\slurDown a^. 		(e^.) \)
     
     \slurUp cis' \(  	(a-.)  		\slurDown e^. 		(cis^.)
     \slurUp a'     	(e-.)  		\slurDown cis^. 	(a^.)
     \slurUp e'     	(cis-.)  	\slurDown a^. 		(e^.) 
  a4 \) \bar "|." \break
  
}

Fisminor = \relative c' {
  \key fis \minor
  \time 4/4
  fis4~ ^\markup {\bold "F sharp Minor"}
  \( \slurUp fis16    	(fis,-.)  	\slurDown a^. 		(cis^.)
     \slurUp fis      	(a,-.)  	\slurDown cis^. 	(fis^.)
     \slurUp a      	(cis,-.)  	\slurDown fis^. 	(a^.) \)
  
     \slurUp cis16 \( 	(fis,-.)  	\slurDown a^. 		(cis^.)
     \slurUp fis      	(a,-.)  	\slurDown cis^. 	(fis^.)
     \slurUp a      	(cis,-.)  	\slurDown fis^. 	(a^.)
     \slurUp cis      	(fis,-.)  	\slurDown a^. 		(cis^.) \)
      
     \slurUp fis  \(  	(cis-.)  	\slurDown a^. 		(fis^.)
     \slurUp cis'     	(a-.)  		\slurDown fis^. 	(cis^.)
     \slurUp a'     	(fis-.)  	\slurDown cis^. 	(a^.)
     \slurUp fis'     	(cis-.)  	\slurDown a^. 		(fis^.) \)
     
     \slurUp cis' \(  	(a-.)  		\slurDown fis^. 	(cis^.)
     \slurUp a'     	(fis-.)  	\slurDown cis^. 	(a^.)
     \slurUp fis'     	(cis-.)  	\slurDown a^. 		(fis^.) 
  fis'4 \) \bar "|." \break
  
}
  
Eesmajor = \relative c' {
  \key ees \major
  \time 4/4
  ees4~ ^\markup {\bold "Eb Major"}
  \( \slurUp ees16    	(g,-.)  	\slurDown bes^.   	(ees^.)
     \slurUp g      	(bes,-.)    	\slurDown ees^. 	(g^.)
     \slurUp bes      	(ees,-.)  	\slurDown g^. 		(bes^.) \)
  
     \slurUp ees16 \( 	(g,-.)  	\slurDown bes^.   	(ees^.)
     \slurUp g      	(bes,-.)    	\slurDown ees^. 	(g^.)
     \slurUp bes      	(ees,-.)  	\slurDown g^.   	(bes^.)
     \slurUp ees      	(g,-.)  	\slurDown bes^. 	(ees^.) \)
      
     \slurUp g    \( 	(ees-.)   	\slurDown bes^. 	(g^.)
     \slurUp ees'     	(bes-.)   	\slurDown g^.   	(ees^.)
     \slurUp bes'     	(g-.)  	   	\slurDown ees^. 	(bes^.)
     \slurUp g'     	(ees-.)   	\slurDown bes^. 	(g^.)	 \)
     
     \slurUp ees'     	(bes-.)   	\slurDown g^.   	(ees^.) 
     \slurUp bes'  \(  (g-.)  	   	\slurDown ees^. 	(bes^.)
     \slurUp g'     	(ees-.)   	\slurDown bes^. 	(g^.)	 
  ees'4 \) \bar "|." \break
  
}

Cminor = \relative c' {
  \key c \minor
  \time 4/4
  c4~ ^\markup {\bold "C Minor"}
  \( \slurUp c16    	(g-.) 		\slurDown c^. 		(ees^.)
     \slurUp g      	(c,-.) 		\slurDown ees^. 	(g^.)
     \slurUp c      	(ees,-.) 	\slurDown g^. 		(c^.) \)
  
     \slurUp ees \(    (g,-.) 		\slurDown c^. 		(ees^.) 
     \slurUp g      	(c,-.) 		\slurDown ees^. 	(g^.) 
     \slurUp c      	(ees,-.) 	\slurDown g^. 		(c^.) 
     \slurUp ees     	(g,-.)  	\slurDown c^. 		(ees^.) \)
      

     \slurUp g   \(  	(ees-.)  	\slurDown c^. 		(g^.) 
     \slurUp ees'    	(c-.)  		\slurDown g^. 		(ees^.)
     \slurUp c'     	(g-.)  		\slurDown ees^. 	(c^.)   
     \slurUp g'     	(ees-.)  	\slurDown c^. 		(g^.)   \)
     
     \slurUp ees'  \(  (c-.)  		\slurDown g^. 		(ees^.)      
     \slurUp c'   	(g-.)  		\slurDown ees^. 	(c^.)
     \slurUp g'     	(ees-.)  	\slurDown c^. 		(g^.)	
  c4 \) \bar "|." \break
           
}

Emajor = \relative c' {
  \key e \major
  \time 4/4
  e4~ ^\markup {\bold "E Major"}
  \( \slurUp e16    	(e,-.)  	\slurDown gis^.   	(b^.)
     \slurUp e      	(gis,-.)    	\slurDown b^. 		(e^.)
     \slurUp gis      	(b,-.)  	\slurDown e^. 		(gis^.) \)
  
     \slurUp b16 \( 	(e,-.)  	\slurDown gis^.   	(b^.)
     \slurUp e      	(gis,-.)    	\slurDown b^. 		(e^.)
     \slurUp gis      	(b,-.)  	\slurDown e^. 		(gis^.)
     \slurUp b      	(e,-.)  	\slurDown gis^.   	(b^.) \)
        
     \slurUp e   \(  	(b-.)   	\slurDown gis^.   	(e^.)
     \slurUp b'     	(gis-.)  	\slurDown e^. 		(b^.)
     \slurUp gis'     	(e-.)   	\slurDown b^. 		(gis^.)
     \slurUp e'     	(b-.)   	\slurDown gis^.   	(e^.) \)
     
     \slurUp b'  \(  	(gis-.)  	\slurDown e^. 		(b^.)
     \slurUp gis'     	(e-.)   	\slurDown b^. 		(gis^.)
     \slurUp e'     	(b-.)   	\slurDown gis^.   	(e^.) 
  e'4 \) \bar "|." \break
  
}

Cisminor = \relative c' {
  \key cis \minor
  \time 4/4
  cis4~ ^\markup {\bold "C sharp Minor"}
  \( \slurUp cis16    (e,-.) 		\slurDown gis^. 	(cis^.)
     \slurUp e        (gis,-.) 	\slurDown cis^. 	(e^.)
     \slurUp gis      (cis,-.) 	\slurDown e^. 		(gis^.) \)
  
     \slurUp cis16 \( (e,-.) 		\slurDown gis^. 	(cis^.)
     \slurUp e        (gis,-.) 	\slurDown cis^. 	(e^.)
     \slurUp gis      (cis,-.) 	\slurDown e^. 		(gis^.)
     \slurUp cis      (e,-.) 		\slurDown gis^. 	(cis^.) \)
                
     \slurUp e   \(  (cis-.) 		\slurDown gis^. 	(e^.)
     \slurUp cis'    (gis-.)  		\slurDown e^. 		(cis^.)
     \slurUp gis'    (e-.)  		\slurDown cis^. 	(gis^.) 
     \slurUp e'      (cis-.)  		\slurDown gis^. 	(e^.) \)
     
     \slurUp cis' \( (gis-.)  		\slurDown e^. 		(cis^.)
     \slurUp gis'    (e-.)  		\slurDown cis^. 	(gis^.)
     \slurUp e'      (cis-.)  		\slurDown gis^. 	(e^.) 
  cis'4 \) \bar "|." \break
      
}

  Aesmajor = \relative c' {
  \key aes \major
  \time 4/4
  aes'4~ ^\markup {\bold "Ab Major"}
  \( \slurUp aes16    	(g,-.)   	\slurDown aes^. 	(c^.)
     \slurUp ees      	(aes,-.)  	\slurDown c^. 		(ees^.)
     \slurUp aes      	(c,-.)  	\slurDown ees^. 	(aes^.) \)
  
     \slurUp c16 \( 	(ees,-.)  	\slurDown aes^. 	(c^.)
     \slurUp ees      	(aes,-.)  	\slurDown c^. 		(ees^.)
     \slurUp aes      	(c,-.)  	\slurDown ees^. 	(aes^.)
     \slurUp c      	(ees,-.)  	\slurDown aes^. 	(c^.) \)
      
     \slurUp ees  \(  	(c-.)  		\slurDown aes^. 	(ees^.)
     \slurUp c'     	(aes-.) 	\slurDown ees^. 	(c^.)
     \slurUp aes'     	(ees-.)  	\slurDown c^. 		(aes^.)
     \slurUp ees'     	(c-.)  		\slurDown aes^. 	(ees^.) \)
     
     \slurUp c' \(  	(aes-.)  	\slurDown ees^. 	(c^.)
     \slurUp aes'     	(ees-.)  	\slurDown c^. 		(aes^.)
     \slurUp ees'     	(c-.)  		\slurDown aes^. 	(ees^.) 
  aes4 \) \bar "|." \break
  
}

Fminor = \relative c' {
  \key f \minor
  \time 4/4
  f4~ ^\markup {\bold "F Minor"}
  \( \slurUp f16    	(f,-.)  	\slurDown aes^. 	(c^.)
     \slurUp f      	(aes,-.)  	\slurDown c^. 		(f^.)
     \slurUp aes      	(c,-.)  	\slurDown f^. 		(aes^.) \)
  
     \slurUp c16 \( 	(f,-.)  	\slurDown aes^. 	(c^.)
     \slurUp f      	(aes,-.)  	\slurDown c^. 		(f^.)
     \slurUp aes      	(c,-.)  	\slurDown f^. 		(aes^.)
     \slurUp c      	(f,-.)  	\slurDown aes^. 	(c^.) \)
      
     \slurUp f  \(  	(c-.)  		\slurDown aes^. 	(f^.)
     \slurUp c'     	(aes-.)  	\slurDown f^. 		(c^.)
       \slurUp aes'     (f-.)  	\slurDown c^. 		(aes^.)
     \slurUp f'     	(c-.)  		\slurDown aes^. 	(f^.) \)
     
     \slurUp c' \(  	(aes-.)  	\slurDown f^. 		(c^.)
     \slurUp aes'     	(f-.)  		\slurDown c^. 		(aes^.)
     \slurUp f'     	(c-.)  		\slurDown aes^. 	(f^.)
  f'4  \) \bar "|." \break
  
}

Bmajor = \relative c' {
  \key b \major
  \time 4/4
  b4~ ^\markup {\bold "B Major"}
  \( \slurUp b16    	(fis-.)  	\slurDown b^.   	(dis^.)
     \slurUp fis    	(b,-.)   	\slurDown dis^. 	(fis^.)
     \slurUp b      	(dis,-.) 	\slurDown fis^. 	(b^.)   \)
  
     \slurUp dis16 \( 	(fis,-.) 	\slurDown b^.   	(dis^.)
     \slurUp fis    	(b,-.)   	\slurDown dis^.   	(fis^.)
     \slurUp b      	(dis,-.)   	\slurDown fis^. 	(b^.)
     \slurUp dis      	(fis,-.) 	\slurDown b^.   	(dis^.)   \)
      
     \slurUp fis \( 	(dis-.)    	\slurDown b^.   	(fis^.)
     \slurUp dis'     	(b-.)    	\slurDown fis^. 	(dis^.)
     \slurUp b'     	(fis-.)  	\slurDown dis^.   	(b^.)
     \slurUp fis'   	(dis-.)    	\slurDown b^.   	(fis^.) \)
     
     \slurUp dis'  \( 	(b-.)    	\slurDown fis^. 	(dis^.)
     \slurUp b'     	(fis-.)  	\slurDown dis^.   	(b^.)
     \slurUp fis'   	(dis-.)    	\slurDown b^.   	(fis^.) 
  b4 \) \bar "|." \break
  
}

Gisminor = \relative c' {
  \key gis \minor
  \time 4/4
  gis'4~ ^\markup {\bold "G sharp Minor"}
  \( \slurUp gis16	(g,-.)		\slurDown gis^.	(b^.)	
     \slurUp dis    	(gis,-.)  	\slurDown b^.  	(dis^.)
     \slurUp gis      	(b,-.)  	\slurDown dis^. 	(gis^.) \)
  
     \slurUp b  \(   	(dis,-.)   	\slurDown gis^. 	(b^.)
     \slurUp dis  	(gis,-.) 	\slurDown b^.   	(dis^.)
     \slurUp gis    	(b,-.)   	\slurDown dis^.   	(gis^.)
     \slurUp b      	(dis,-.)   	\slurDown gis^. 	(b^.)	\)
     
     \slurUp dis \(   (b-.)    	\slurDown gis^. 	(dis^.)
     \slurUp b'     	(gis-.)  	\slurDown dis^.   	(b^.)
     \slurUp gis'   	(dis-.)    	\slurDown b^.   	(gis^.)
     \slurUp dis'      	(b-.) 		\slurDown gis^.   	(dis^.) \)
     
     \slurUp b' \(   	(gis-.)  	\slurDown dis^.   	(b^.)
     \slurUp gis'   	(dis-.)    	\slurDown b^.   	(gis^.) 
     \slurUp dis'  	(b-.)    	\slurDown gis^. 	(b^.)	
  gis4 \) \bar "|." \break
    
  }

Dismajor = \relative c' {
  \key des \major
  \time 4/4
  des4~ ^\markup {\bold "Db Major"}
  \( \slurUp des16    	(f,-.)  	\slurDown aes^. 	(des^.)
     \slurUp f      	(aes,-.)  	\slurDown des^. 	(f^.)
     \slurUp aes      	(des,-.)  	\slurDown f^. 		(aes^.) \)
  
     \slurUp des16 \( 	(f,-.)  	\slurDown aes^. 	(des^.)
     \slurUp f      	(aes,-.)  	\slurDown des^. 	(f^.)
     \slurUp aes      	(des,-.)  	\slurDown f^. 		(aes^.)
     \slurUp des      	(f,-.)  	\slurDown aes^. 	(des^.) \)
      
     \slurUp f  \(  	(des-.)  	\slurDown aes^. 	(f^.)
     \slurUp des'     	(aes-.)  	\slurDown f^. 		(des^.)
     \slurUp aes'     	(f-.)  		\slurDown des^. 	(aes^.)
     \slurUp f'     	(des-.)  	\slurDown aes^. 	(f^.) \)
     
     \slurUp des' \(  	(aes-.)  	\slurDown f^. 		(des^.)
     \slurUp aes'     	(f-.)  		\slurDown des^. 	(aes^.)
     \slurUp f'     	(des-.)  	\slurDown aes^. 	(f^.) 
  des'4 \) \bar "|." \break
  
}

Besminor = \relative c' {
  \key bes \minor
  \time 4/4
  bes4~ ^\markup {\bold "Bb Minor"}
  \( \slurUp bes16    	(f-.)  		\slurDown bes^.   	(des^.)
     \slurUp f    	(bes,-.)   	\slurDown des^.   	(f^.)
     \slurUp bes      	(des,-.)   	\slurDown f^. 		(bes^.)   \)
    
     \slurUp des16 \( 	(f,-.) 		\slurDown bes^.   	(des^.)
     \slurUp f    	(bes,-.)   	\slurDown des^.   	(f^.)
     \slurUp bes      	(des,-.)   	\slurDown f^. 		(bes^.)
     \slurUp des      	(f,-.) 		\slurDown bes^.   	(des^.)   \)
      
     \slurUp f \( 	(des-.)    	\slurDown bes^.   	(f^.)
     \slurUp des'     	(bes-.)    	\slurDown f^. 		(des^.)
     \slurUp bes'     	(f-.)  		\slurDown des^.   	(bes^.)
     \slurUp f'   	(des-.)    	\slurDown bes^.   	(f^.) \)
     
     \slurUp des'  \( 	(bes-.)    	\slurDown f^. 		(des^.)
     \slurUp bes'     	(f-.)  		\slurDown des^.   	(bes^.)
     \slurUp f'   	(des-.)    	\slurDown bes^.   	(f^.) 
  bes4 \) \bar "|." \break
  
}

Fismajor = \relative c' {
  \key fis \major
  \time 4/4
  fis4~ ^\markup {\bold "F sharp Major"}
  \( \slurUp fis16    	(fis,-.)  	\slurDown ais^.   	(cis^.)
     \slurUp fis      	(ais,-.)  	\slurDown cis^. 	(fis^.)
     \slurUp ais      	(cis,-.)  	\slurDown fis^. 	(ais^.) \)
  
     \slurUp cis16 \( 	(fis,-.)  	\slurDown ais^. 	(cis^.)
     \slurUp fis      	(ais,-.)  	\slurDown cis^. 	(fis^.)
     \slurUp ais      	(cis,-.)  	\slurDown fis^. 	(ais^.)
     \slurUp cis      	(fis,-.)  	\slurDown ais^. 	(cis^.) \)
      
     \slurUp fis  \(  	(cis-.)  	\slurDown ais^. 	(fis^.)
     \slurUp cis'     	(ais-.)  	\slurDown fis^. 	(cis^.)
     \slurUp ais'     	(fis-.)  	\slurDown cis^. 	(ais^.)
     \slurUp fis'     	(cis-.)  	\slurDown ais^. 	(fis^.) \)
     
     \slurUp cis' \(  	(ais-.)  	\slurDown fis^. 	(cis^.)
     \slurUp ais'     	(fis-.)  	\slurDown cis^. 	(ais^.)
     \slurUp fis'     	(cis-.)  	\slurDown ais^. 	(fis^.) 
 fis'4 \) \bar "|." \break
}

Gesmajor = \relative c'' {
  \key ges \major
  \time 4/4
  ges4~ ^\markup {\bold "Gb Major"}
  \( \slurUp ges16    	(ges,-.)  	\slurDown bes^.   	(des^.)
     \slurUp ges      	(bes,-.)  	\slurDown des^. 	(ges^.)
     \slurUp bes      	(des,-.)  	\slurDown ges^. 	(bes^.) \)
  
     \slurUp des16 \( 	(ges,-.)  	\slurDown bes^. 	(des^.)
     \slurUp ges 	(bes,-.)  	\slurDown des^. 	(ges^.)
     \slurUp bes      	(des,-.)  	\slurDown ges^. 	(bes^.)
     \slurUp des      	(ges,-.)  	\slurDown bes^. 	(des^.) \)
      
     \slurUp ges  \(  	(des-.)  	\slurDown bes^. 	(ges^.)
     \slurUp des'     	(bes-.)  	\slurDown ges^. 	(des^.)
     \slurUp bes'     	(ges-.)  	\slurDown des^. 	(bes^.)
     \slurUp ges'     	(des-.)  	\slurDown bes^. 	(ges^.) \)
     
     \slurUp des' \(  	(bes-.)  	\slurDown ges^. 	(des^.)
     \slurUp bes'     	(ges-.)  	\slurDown des^. 	(bes^.)
     \slurUp ges'     	(des-.)  	\slurDown bes^. 	(ges^.) 
ges'4  \) \bar "|." \break
}

Disminor = \relative c' {
  \key dis \minor
  \time 4/4
  dis4~ ^\markup {\bold "D sharp Minor"}
  \( \slurUp dis16    	(fis,-.)  	\slurDown ais^. 	(dis^.)
     \slurUp fis    	(ais,-.)  	\slurDown dis^. 	(fis^.)
     \slurUp ais      	(dis,-.)  	\slurDown fis^.	(ais^.) 	 \)
  
     \slurUp dis16 \( 	(fis,-.)  	\slurDown ais^. 	(dis^.)
     \slurUp fis    	(ais,-.)  	\slurDown dis^. 	(fis^.)
     \slurUp ais      	(dis,-.)  	\slurDown fis^.	(ais^.)
     \slurUp dis      	(fis,-.)  	\slurDown ais^. 	(dis^.) 	 \)
      
     \slurUp fis \( 	(dis-.)  	\slurDown ais^. 	(fis^.)
     \slurUp dis'     	(ais-.)  	\slurDown fis^.	(dis^.)
     \slurUp ais'     	(fis-.)  	\slurDown dis^. 	(ais^.)
     \slurUp fis'   	(dis-.)  	\slurDown ais^. 	(fis^.) \)
     
     \slurUp dis'  \( 	(ais-.)  	\slurDown fis^.	(dis^.)
     \slurUp ais'     	(fis-.)  	\slurDown dis^. 	(ais^.)
     \slurUp fis'   	(dis-.)  	\slurDown ais^. 	(fis^.) 
  dis'4 \) \bar "|." \break
  
}
  
Eesminor = \relative c' {
  \key ees \minor
  \time 4/4
  ees4~ ^\markup {\bold "Eb Minor"}
  \( \slurUp ees16    	(ges,-.)  	\slurDown bes^.   	(ees^.)
     \slurUp ges      	(bes,-.)    	\slurDown ees^. 	(ges^.)
     \slurUp bes      	(ees,-.)  	\slurDown ges^. 	(bes^.) \)
  
     \slurUp ees16 \( 	(ges,-.)  	\slurDown bes^.   	(ees^.)
     \slurUp ges      	(bes,-.)    	\slurDown ees^. 	(ges^.)
     \slurUp bes      	(ees,-.)  	\slurDown ges^.   	(bes^.)
     \slurUp ees      	(ges,-.)  	\slurDown bes^. 	(ees^.) \)
      
     \slurUp ges    \( (ees-.)   	\slurDown bes^. 	(ges^.)
     \slurUp ees'     	(bes-.)   	\slurDown ges^.   	(ees^.)
     \slurUp bes'     	(ges-.)  	\slurDown ees^. 	(bes^.)
     \slurUp ges'     	(ees-.)   	\slurDown bes^. 	(ges^.)	 \)
     
     \slurUp ees'  \(  (bes-.)   	\slurDown ges^.   	(ees^.) 
     \slurUp bes'  	(ges-.)  	\slurDown ees^. 	(bes^.)
     \slurUp ges'     	(ees-.)   	\slurDown bes^. 	(ges^.)	 
  ees'4 \) \bar "|." \break
  
}

\score {
  
       \new Staff  { 
         \set Staff.printKeyCancellation = ##f %avoid EOL accidentals
       \Cmajor
         \Aminor
         \Gmajor
         \Eminor
         \Fmajor
         \Dminor
         \Dmajor
         \Bminor
         \Bbmajor
         \pageBreak
         \Gminor
         \Amajor
         \Fisminor
         \Eesmajor
         \Cminor
         \Emajor
         \Cisminor
         \Aesmajor
         \Fminor
         \pageBreak
         \Bmajor
         \Gisminor
         \Dismajor
         \Besminor
         }
}
         
\score	{
    \new StaffGroup <<
       \new Staff  {
          \Fismajor
          \Disminor
        }
    \new Staff  {
        \Gesmajor
        \Eesminor
        }
    >>

}

%--------------------------------------------------------
%{
\score {
  {
    \transpose c d \Cmajor
  } %end staff
} %end score
%}