\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key c \major \time 2/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \set Score.explicitKeySignatureVisibility = #begin-of-line-visible
    	    
    	    c'8\ff e,16 f g e c a |g8 b'16 b b8 b |c8 r r4 | r r8 g,\ff

    	    \repeat volta 2 {
    	    	    c8 c c c |c \acciaccatura c8 b16 ais b8 g |f' f f f 
    	    f \acciaccatura f8 e16 dis e8 c |g' g g g |g f16 e d8 c16 a
    	    g8 c16 d e8 d16 e \bar "||" 
    	    \mark \markup { \musicglyph #"scripts.coda" } }
    	    \alternative {
    	    	    {d4 (c8) g }
    	    	    {d'4-> (c8) d16\p (c) }
    	    }
    	    
    	    \repeat volta 2 {
    	    	    b8 d-. d-. d16 (c') |b8 d,-. d-. d16 (b') 
    	    	    a8 d,-. d-. d16 (a') |g8-> fis16 e d8-> cis16 c!
    	    	    b8 d-. d-. d16 (c') |b8 d,-. d-. d16 (b') 
    	    	    a8 d,-. d-. d16 (fis) }
    	    \alternative {
    	    	    {g8 d16 (e) d8 d16 (c) }
    	    	    {g'8 fis,16\< g gis a ais b\! \bar "||"}
    	    }
    	    
    	    c8\ff c c c |c \acciaccatura c8 b16 ais b8 g |f' f f f 
    	    f \acciaccatura f8 e16 dis e8 c |g' g g g |g f16 e d8 c16 a
    	    g8 c16 d e8 d16 e |d4 (c8) r \bar "||"
    	    
    	    \key f \major \time 2/4 
    	    \mark \markup { \musicglyph #"scripts.segno" }
    	    a2~\p^\markup {TRIO} |a8 r r4 |bes2 ( |a8) c-. a-. c-. |c'4 (g)
    	    a8 f a f |a4 g8. f16 |e8 d c bes |a2~ |a8 r r4 |bes2 ( 
    	    a8) c-. a-. c-. |a'4 (d,8.) d16 |c'8 bes a g |f c a' g 
    	    g4-> (f8) r^\markup {\bold\large "Fine"}
    	    \bar "||"
    	    
    	    f16\ff e d e f8 f, |a f c' r |f16\ff e d e f8 f, |a f c' r
    	    bes'16\p a g a bes8 g |bes16\< a g a bes8 g |bes16\f a g f e d c b
    	    d c bes! g e8 r \bar "||"
    	    
% \cadenzaOn will suppress the bar count and \stopStaff removes the staff lines.
     \cadenzaOn
    	 \stopStaff
    	   \override Staff.TimeSignature #'break-visibility = #end-of-line-invisible
    	   \set Staff.explicitClefVisibility = #end-of-line-invisible 
    	   \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 
    	   \set Staff.printKeyCancellation = ##f 
    	   
    	   \once \override TextScript.extra-offset = #'( 2 . -3.5 )
    	   s1*0^\markup { "Trio D.S. al Fine e. Da Capo al Coda" }
% Increasing the unfold counter will expand the staff-free space
          \repeat unfold 6 {
          s4 s4
          \bar "" }
% Resume bar count and show staff lines again
        \startStaff
     \cadenzaOff

% Coda on new line, use this:
     	\break
     	\once \override Score.RehearsalMark.font-size = #5
     	\mark \markup { \musicglyph #"scripts.coda" }

% The coda
	\key c \major \time 2/4
	d'4 (c8) r |c8->\p e16-. f-. g8-._\markup {dolce} g16-. a-. |g4-> (f8) r
	b,-. d16-. e-. f8-. f16-. g-. |f4-> (e8) r |c'\ff c16 b a g f e
	d8 c-> b-> a-> |g8 a'16 (g) e (g) c, (e) |g,8 b'16 b b8 b |c r c-> r 
	c,2\fermata
	%{	\repeat unfold 3 
          s4 s4 s4
          \bar "" 
        %}
	\bar"|." \break	    
    }%end relative
    \header {
    	    piece = "Britta-polka"
    	    composer = "H.C.Lumbye"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
