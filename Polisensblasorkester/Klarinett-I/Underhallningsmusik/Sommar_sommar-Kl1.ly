\version "2.22.1"

% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Sommar, sommar, sommar    
    \relative c''' {
    	    \time 3/4 \key f \major \clef treble
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-alphabet
    	    \override DynamicLineSpanner #'staff-padding = #2
    	    \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
    	    c8\f\< (b bes a\! aes g |ges f e\> ees d des\!)
    	    
% Rehersal mark A
	\mark \default

        \repeat volta 2 {
        c2\mf^\markup {\bold \musicglyph #"scripts.segno" } 
        (f4 |d2 g4 |e c'2) |r4 c, (d |a'2.  |aes
        }
        \alternative {
        	{g )|c8 (d c) bes g e}
        	{g2.~ |g4 c,, d \bar "||"}
        }
        
        g f2 |r4 ees (d |c bes2) |r4 a (bes |ees d2) |r4 c (bes | a g2) 
        c8 (e) g bes c e \bar "||"
        r8 a, c (f a c) |r8 b, d (f aes b) | r g, c (e g bes!) 
        c2\startTrillSpan r4\stopTrillSpan |a2. ( |aes) |g (|fis4) bes (a
        d,2 f4 
        
        \once \override Score.RehearsalMark.font-size = #4
        \mark \markup { \musicglyph #"scripts.coda" }

        e2 a4 |f2) fis4->\< |g8-> g-> g4-> g->\!
        
% Rehersal mark B
        \mark #2
        \key c \major
        \repeat volta 2 {
        	R2.*6 |r8 f, (a c f a |g4) a8 (g e cis) | R2.*4
        }
        \alternative {
        	{fis2.~ fis f!~ f}
        	{fis2. f! |e |e8->\< e-> e4-> e->\! 
        	 \bar "||"}
        }
    % \cadenzaOn will suppress the bar count and \stopStaff removes the staff lines.
    \cadenzaOn
      \stopStaff
        \once \override TextScript.extra-offset = #'( 2 . -3.5 )
        | s1*0^\markup { D.S. al Coda (Med Repris)} 

        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 20 {
          s4 s4 s4 s4 s4 s4 s4
          \bar "" }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff

     % Coda on new line, use this:
     \break
     \once \override Score.RehearsalMark.font-size = #5
     \mark \markup { \musicglyph #"scripts.coda" }

   % The coda
   	\key f \major
   	\override TextScript #'outside-staff-horizontal-padding = #10
	e2 (a4) |f8-._\markup {\bold Rit..........} f-. c-. c-. a-. a-. |f4-. r r
	\bar"|." \break
    } %end relative
    
    \header {
    	    piece = "Sommar, Sommar, Sommar"
    	    composer = "Sten Carlberg" 
    	}
 	
  }%end score

