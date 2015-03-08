\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here"
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. On the street where you live   
    \relative c'' { 
    	    \key c \major \time 4/4 
    	    \tempo 
            	\markup {\bold "Moderato"}
		4 = 92
	    \override BreathingSign.text = \markup
	    	{ \musicglyph #"scripts.caesura.curved" }
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    g'1\p\< |fis |a\ff\> _\markup {Rall.} |a4 (g\fermata) c,,\mf\fermata
    	    d\fermata
    	    
    	    \repeat volta 2 {
    	    \tempo \markup {\bold Animato} 4 = 120
    	    e4\mf a a2~ |a g4 f |e c c2~ |c2 c'4 b |c g g g |ges ges ges ges
	    f f d2~ |d r |a''1~ |a2 aes |g4 e e2~ |e c'4\f b |a1 }
	    \alternative {
	    	    {g1 |e~ |e2 f,\mf}
	    	    {g'1 |g~ |g2. r4 \bar "||"}
	    }
	    r2 b,4\mf (gis |fis2 gis |a) c ( |d4 c b a |aes2.) c4 ( |d2 dis
	    e) b4. (b8 |bes4. bes8 a2) |R1*4 |e'2 (ees |d c) |d ( e |d) r
	    e,4\mf a a2~ |a g4 f |e c c2~ |c c'4 b |c g' g g |ges ges ges ges
	    f f d2~ |d\f d4\< cis |d a' a2~ |a\ff aes4\fermata aes |g e e2~
	    e g4 g |e2 e4 e |g2 f4 f |g1 |a2.^^_\markup {Rit.} a4 |a2 a4 a
	    f2 \breathe f |aes1 ( |g2.\>\fermata) r4\! \bar "|."
    }%end relative
    \header {
    	    piece = "On the street where you live (My Fair Lady)"
    	    composer = "Frederick Loewe"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
