\version "2.12.3"

\include "Globals.ly"

%{ Cue notes

Arch = {
   d4. d,8 d4
   R2._\markup{\small "G.P."} ^\markup{\normalsize\number 1}
   a'4. a,8 a4 
   R2._\markup{\small "G.P."} ^\markup{\normalsize\number 1}   
}
\addQuote "Arch" { \Arch}

\new Staff \relative c'' <<
	\Atime \Akey \AstringTempo
	\new CueVoice \with
	{instrumentCueName = "Archi."}
  \new Voice {
  	  \cueDuring #"Arch" #UP { R2.*4 }  
  }
>> 

%}

%{Staff_symbol_engraver.

\relative c''' {
  \Atime \Akey \AstringTempo
  	\set fontSize = #-4  % make note heads smaller
  	<<{d4.^\markup{ "Archi." }d,8 d4} 
  	{\override MultiMeasureRest #'staff-position = #-4
  	R2.}>> 
  	\revert MultiMeasureRest #'staff-position
  	R2._\markup{\small "G.P."} ^\markup{\normalsize\number 1}
  	<<{a'4.^\markup{ "Archi." }a,8 a4} 
  	{\override MultiMeasureRest #'staff-position = #-4
  	R2.}>>
  	\revert MultiMeasureRest #'staff-position
  	R2._\markup{\small "G.P."} ^\markup{\normalsize\number 1}	
  	<<{\ottava #1 
  	   \set Staff.ottavation = #"8"
  	   f'4. ^\markup{ "Timp." }
	   f,8 f4 \ottava #0 }
	   {R2.}>>
	\unset fontSize  % return to default size
	d'4.\ff d,8 d4
  	R2._\markup{\small "G.P."} ^\markup{\normalsize\number 2}
  \repeat volta 2 {
  	  \set fontSize = #-4  % make note heads smaller
  	  <<{a''4.^\markup{ "Viol I." } a,8 a4}
  	 {\override MultiMeasureRest #'staff-position = #-4
  	  R2.}>>
  	\unset fontSize  % return to default size
  }
}   %}

%{ Transpose
padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})

semppK = #(make-dynamic-script (markup #:line( #:normal-text #:
           	   italic "sempre" #:dynamic "pp")))

% Section 1
\transpose d e {
\relative c {
	\Atime \Akey \AstringTempo
	\set Score.currentBarNumber = #1
	\compressFullBarRests
	\override DynamicLineSpanner #'staff-padding = #2
	
  	
		\set fontSize = #-4  % make note heads smaller
  		<<{d'''4.^\markup{ "Archi." }d,8 d4} 
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.}>> 
  		   \revert MultiMeasureRest #'staff-position
  		   
  		   R2._\markup{\small "G.P."}
  	
  		<<{a'4.^\markup{ "Archi." }a,8 a4} 
  		  {\override MultiMeasureRest #'staff-position = #-4 R2.}>>
  		   \revert MultiMeasureRest #'staff-position
  		   
  		   R2._\markup{\small "G.P."}
  		   
  		<<{\ottava #1 
  		   \set Staff.ottavation = #"8"
  		   f'4. ^\markup{ "Timp." }
  		   f,8 f4 \ottava #0 } {R2.}>>
  		   
	\unset fontSize  % return to default size
	
	d'4.\ff d,8 d4
  	R2._\markup{\small "G.P."} ^\markup{\normalsize\number 2}
  	} % end transpose 	
} % end music
%}

% Cues again
%{
Archa = \relative c {
  \AstringTempo \Atime \Akey
  d'''4. d,8 d4	
}
\addQuote "Archa" { \Archa }

Archb = \relative c {
	a'4. a,8 a4
}

\addQuote "Archb" { \Archb }

  \new CueVoice \with {
    instrumentCueName = "Archi."
  }

  \new Voice {
    \AstringTempo \Atime \Akey
    \cueDuring #"Archa" #UP { R2. }
    R2._\markup{\small "G.P."} ^\markup {\normalsize\number 1}
    \cueDuring #"Archb" #UP { R2. }
  }


\relative c {
\Dkey \DstringTempo

<<{\stemDown\partial 4*2 d'4 e |fis g a b} 
\\ {\override MultiMeasureRest #'staff-position = #4 
    \partial 4*2 d\rest d\rest |R1}>> 
    \revert MultiMeasureRest #'staff-position
}
%}

\relative c''{
\Dkey \DstringTempo
\compressFullBarRests
R1*5 ( |c4\repeatTie a) b' ais
}
