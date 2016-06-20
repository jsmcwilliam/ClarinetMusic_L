\version "2.16.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print
  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
%       \fromproperty #'header:opus
    	}}	
  	}
%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Sommar, sommar, sommar    
    \relative c'' {
    	    \time 3/4 \key f \major \clef treble
    	    \compressFullBarRests
    	    c8\f\< (b bes a\! aes g |ges f e\> ees d des\!)
    	    
% Rehersal mark A
%        \mark #1
    	\mark \markup {\lower #2 \bold "A  "\musicglyph #"scripts.segno" }

        \repeat volta 2 {
        a'2\mf (c4 |aes2 d4 |bes e2) |r4 bes bes |f'2.~ |f
        } 
        \alternative {
        	{d |c8 (d c) bes g e}
        	{d'2.~ |d4 c, d \bar "||"}
        }
        g f2 |r4 ees (d |c bes2) |r4 a (bes |ees d2) |r4 c (bes | a g2) 
        c8 (e g) bes c e \bar "||"
        r8 f, (a c f a) |r8 aes, (b d f aes) | r e, (bes' c e g) 
        c,2\startTrillSpan r4\stopTrillSpan |f2.~ |f |ees (|d4) fis (fis
        b,2 d4 
        
        \once \override Score.RehearsalMark #'font-size = #4
        \mark \markup { \musicglyph #"scripts.coda" }

        bes!2 e4 |c2) c4\< |f8-> f->\! f4-> f->
        
% Rehersal mark B
        \mark #2
        \key c \major
        \repeat volta 2 {
        	R2.*6 |r8 c, (f a c f |e4) g8 (e cis g) | R2.*4
        }
        \alternative {
        	{c2.~ c b~ b}
        	{c2. b |r4 g a\< |bes8 bes\! bes4 bes 
        	 \bar "||"}
        }
    % \cadenzaOn will suppress the bar count and \stopStaff removes the staff lines.
    \cadenzaOn
      \stopStaff
        \once \override TextScript #'extra-offset = #'( 2 . -3.5 )
        | s1*0^\markup { D.S. al Coda (Med Repris)} 

        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 3 {
          s4 s4 s4
          \bar ""
        }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff

   \break

     % Coda on new line, use this:
     \once \override Score.RehearsalMark #'extra-offset = #'( -8.42 . 1.75 )
     \once \override Score.RehearsalMark #'font-size = #5
     \mark \markup { \musicglyph #"scripts.coda" }

   % The coda
	bes2 e4 |c8-._\markup {\bold Rit..........} c-. a-. a-. f-. f-. |c4 r r
	%{	\repeat unfold 3 {
          s4 s4 s4
          \bar "" 
        }
        %}
	\bar"|." \break
    }%end relative
    \header {
    	    piece = "Sommar, Sommar, Sommar"
    	    composer = "Sten Carlberg" 
%    	    instrument = "Klarinett II i Bb" 
%	    tagline = "Kopierad av John McWilliam" 
%	    opus = "3"
    	}
    \layout {
		ragged-last = ##t
    	}    	
  }%end score
