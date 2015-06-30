\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here

%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 17) % set staff-size when ready to print

OneBarRest = R2.^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Liberty Bell   
    \relative c'' { 
    	    \key g \major \time 6/8 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    g'4\ff (fis8 e4 ees8 |d4 cis8 c4 b8) |a b c b4 a8 |d4 r8 r4 d8
    	    \repeat volta 2 {
    	    	b8\p [r b] b ais b |g' [r d] d [r b] |c\< [r c] c [r d] 
    	    	e4.~\> e4 c8\!
    	    	a [r a] a gis a |fis' [r e] e [r c] |b\< [r b] b [r c\!] 
    	    	d4.~ d4 d8
    	    	b\p [r b] b ais b |b'[r g] g [r d] |cis\< [r a'] a [r a] 
    	    	a4.~ a4 g8 |fis\f [r a] a gis a |e [r a] a gis a 
    	    d [r cis] d [r cis] }
    	        \alternative {
    	        	{d4 r8 d,4.->}
    	        	{d'4 r8 c!4.->}
    	        }
    	    \repeat volta 2 {
    	    	    b8\ff ais b g4 d'8 |b4. g |e a |g~ g4 g8 |a b c d4 c8
    	    	    b4. bes |a g |fis8 (g a d,4) d8 
    	    	    e\mf\< [r e] \acciaccatura fis8 e dis e |fis4. fis
    	    	    g4 g8 \acciaccatura b a g a |b4.~->\ff b4 b8 
    	    	    a [r g] e [r c'] |b4. g | a fis }
    	    	    \alternative {
    	    	    	    {g4.~ g4 d'8}
    	    	    	    {g,4.~ g4 g,8}
    	    	    }
    	    \repeat volta 2 {
    	    	   \key c \major
    	    	   \mark \markup {\bold {TRIO}}
    	    	   e4.\p\< (f |fis g) 
    	    	   e'8\! [r e] e [r dis]
    	    	   e4.~ e4 g,8 |e4.\p\< (f |fis g) |f'8\! [r f] f [r e] 
    	    	   f4.~ f4 e8 |d4.\mf (cis |d4) g,8 (fis4 g8) |e'4.(dis 
    	    	   e4) g,8 (fis4 g8) }
      	    	   \alternative {
   	    	   	   {b4.\< d |c4 (d8) a4 (c8) |b4\> (c8) a4 (b8) 
   	    	   	   g4 (a8) f4 (g8)\!}
    	    	   	   {a4.\< f' |e4 (c8) d4 (b8)\! |c2.~ |c4 r8 r4 r8
    	    	   	   \bar "||"}
    	    	   }
    	   r4 f8\ff f e d |c4 r8 r4 r8 |r4 f8\ff f e d |c4 r8 r4 r8 
    	   r4 f8\ff f e d |c4 c8 d c d |e4 r8 e4 r8 
    	   \OneBarRest |r4 a8 a g f |e4 r8 r4 r8
    	   r4 a8 a g f |e4 r8 r4 r8 |r4 a8 a g f |e4 e8 fis e fis |g4 r8 g4-> r8
    	   \OneBarRest |r4 r8 r4 fis8-> |g4-> d8-> g4-> r8
    	   r4 r8 r4 fis8-> |g4-> d8-> g4-> r8 |fis2. |g |aes2. |g4 r8 f!4.->
    	   \repeat volta 2 {
    	   	   e4.\f\< f |fis g\! |e8-> [r e] e [r dis] |e4.~ e4 g8 
    	   	   e4.\< f |fis g\! |f!8-> [r f] f [r e] |f4.~ f4 e8 |d4. cis 
    	   	   d4 g8 (fis4 g8) |e4. dis |e4 g8 (fis4 g8) }
    	   \alternative {
    	   	   {b4.\< d |c4 (d8) a4 (c8) |b4\> (c8) a4 (b8) 
    	   	   g4 (a8) f4 (g8)\!}
    	   	   {a4.\< a |g4 (e8) f4 (d8)\! |c8 e f g a b |c4 r8 c4-> r8}
    	   }
    	   \bar "|."
    }%end relative
    \header {
    	    piece = "Liberty Bell"
    	    composer = "John Philip Sousa"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
