\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Our Director   
    \relative c'' { 
    	    \key c \major \time 6/8 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 8 r8 |R2.*2 |r8 g'\ff a g g f |e4 r8 r4 r8
    	    
    	    \repeat volta 2 {
    	    g8\f [r g~] \grace a g fis g |e [r e~] \grace f e dis e |e4. e
    	    g4.~ g8 d c |b4 (f'8) f4 (g8) |g f e f4. |e4 r8 f4. ( |e4) r8 g4.->
    	    g8\f [r g~] \grace a g fis g |e [r e~] \grace f e dis e |e4. e
    	    g bes-> |b!4\ff b16 b b8 g d |b d g b4 r8 
    	    \afterGrace d,2.\trill { cis32[ (d)] } }
    	    
    	    \alternative {
    	    	    {b4 r8 g'4.->}
    	    	    {b,4 r8 r4 r8 \bar "||"}
    	    }

    	    \repeat volta 2 {
    	    	    g'2.~\ff\startTrillSpan |g |g~ 
    	    	    \afterGrace g\stopTrillSpan {fis16 [(g)]} 
    	    	    g4\f g16 g g8 a ais |b2. |e,4 e16 e e8 f fis |g4 r8 r4 r8
    	    	    g2.~\startTrillSpan |g |g~ 
    	    	    \afterGrace g\stopTrillSpan {fis16 [(g)]}
    	    	    a4 f8 f g f |e4 e8 e f e |d c b a' g f }
    	    	     
    	    	    \alternative {
    	    	    {e4 r8 r4 r8}
    	    	    {e4 <g e>16_\markup {divisi.} <g e> <g e>4 r8\bar "||"}
    	    	    }
    	    	    
    	  \key f \major
    	  \mark \markup {\bold TRIO}
    	  a4->\ff r8 a4-> r8 
    	  a4-> r8 \mark \markup { \musicglyph #"scripts.coda" } r4 r8 
    	  R2.*7 
    	  r4 r8 \mark \markup { \musicglyph #"scripts.coda" } c,4.\mf
 
    	  \repeat volta 2 {
    	  c2.~ |c4 b8 (c4 d8) |c2. ( |a) |d ( |e4. d) |c2.~ |c |bes ( |c4. bes)
    	  a2.\< ( |c) |b4.\f f' |e d |c4 r8 r4 r8 |r4 r8 c4.-> |c2.~\mf 
    	  c4 b8 (c4 d8) |c2. ( |a) |d ( |e4. d) |c2.~ |c |f ( |e4. d) |c2. (
    	  d4. des) |c2. |bes | }

    	  \alternative {
    	  	  {a2.~ |a4 r8 c4.->}
    	  	  {a2.~ |a4 r8 r4 \bar "|."}
    	  }   	  
    }%end relative
    \header {
    	    piece = "Our Director"
    	    composer = "F. E. Bigelow"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
