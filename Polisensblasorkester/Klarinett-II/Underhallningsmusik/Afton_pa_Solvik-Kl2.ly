\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of score and
%					  header.
#(allow-volta-hook "|")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {
    % Svenska Polisens Marscher: 1. Afton pa Solvik  
    \relative c'' {
    	    \clef treble \key g \major \time 3/4
    	    \compressFullBarRests
    	    
    	    \mark \markup { \musicglyph #"scripts.segno" }

    	    R2.*3 |g4\mf^\markup {\bold {Soli}} \(a ais |b\< (g'2->\)) 
    	    dis4 fis2-> |e4\> (c2~-> |c\!) r4 |R2.*3 |r4 r b,\mf ( |c2 d4
    	    b2 a4 |d2.) |c-> |R2.*3 |g'4\mf^\markup {\bold {Soli}} \(a ais 
    	    b\< (g'2->\)) |dis4 fis2-> |e4\> (c2~-> |c\!) r4 |R2.*3 
    	    r4 r b,\mf ( |c2 d4 |b2 a4 |g2.~) 
    	    \once \override Score.RehearsalMark.font-size = #4
    	    \mark \markup { \musicglyph #"scripts.coda" }
    	    g4 r e'\p
    	    
%Rehearsal mark A
	\mark \default
	\repeat volta 2 {
	    e8 (g-.) g (ais-.) ais (b-.) |b (e,-.) e (g-.) g (ais-.)
	    ais (b-.) b (dis,-.) dis (fis-.) |fis4 r r 
	    dis8 (fis-.) fis (ais-.) ais (b-.) |b (dis,-.) dis (fis-.) fis (ais-.)
	    ais (b-.) b (e,-.) e (g-.) |g4-. r r |e8 (g-.) g (a-.) a (b-.)
	    b (gis-.) gis (e-.) e4 |e8 (a-.) a (b-.) b (c-.) 
	    c (a-.) a (e-.) e4 |g8 (a-.) b (e,-.) g4 |fis8 (g-.) a (dis,-.) fis4
	    e2.~ }
	    \alternative {
	    	    {e4 r e}
	    	    {e4\repeatTie r r}
	    }
	    
\once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
\mark \markup { \musicglyph #"scripts.segno" }
\cadenzaOn
\stopStaff
\once \override TextScript.extra-offset = #'( 2 . -3.5 )
        | s1*0^\markup { D.S. al Coda } 

       \repeat unfold 3 {
          s4 s4 s4
          \bar ""
        }
\startStaff
\cadenzaOff
\break

% Coda on new line, use this:
     \once \override Score.RehearsalMark.extra-offset = #'( -8.42 . 1.75 )
     \once \override Score.RehearsalMark.font-size = #4
     \mark \markup { \musicglyph #"scripts.coda" }

   % The coda
	g,8\p\< \repeatTie g' (a b c d)
	\key c \major
	\mark \markup {\bold {TRIO}}
	\repeat volta 2 {
		c2\f e4 |c2 c4 |e2 c'4 |b2 e,4 |f2 f4
		e2 e4 |d2.~ |d |b2 b4 |b2 b4 |b2 f'4 |e2 b4 |c2 (a4) |a2. 
		b2 (g4) |b2. |c2--^\markup {\bold {Soli}} e4 |d2 (c4) |e2-- c'4
		a2. |R2.*4 |r4^\markup {Div.......} <g, e>\p <g e> |r <g e>2
	        r4 f f |r4 e2 |c'2.\mf\< | b |c~\! 
	}
		\alternative {
			{c4 r r}
			{c4\repeatTie r r}
		}
	\bar"|." \break
	    	    
    }%end relative
    \header {
    	    piece = \markup {\concat {"Afton p" \char #229 " Solvik"}}
    	    composer = "Olle Jonbrink"
    	}
    \layout {ragged-last = ##t
    	}

  }%end score
