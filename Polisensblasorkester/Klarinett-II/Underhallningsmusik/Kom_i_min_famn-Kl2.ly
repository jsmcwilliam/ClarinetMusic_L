\version "2.18.0"
% When ready to include in collection: 1. Comment out version, paper, score 
%					  and book.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Kom i min famn  
    \relative c'' { 
    	    \clef treble \key c \major \time 3/4
    	    \set Score.markFormatter = #format-mark-numbers
    	    \set Score.markFormatter = #format-mark-box-numbers
    	    \compressFullBarRests

    	    c2.~\mf^\markup {\bold {Valse Mod.}} |c |c~ |c |c~ |c |b~\> |b 

% Rehearsal mark 1
    	    \mark \default
    	    e4..\p e16 e4 |\tuplet 3/2 {e8 (f e)} dis e f e |dis e f e dis e
    	    c2. |c4\mf (b4. a8 |g2.) |c4 (b4. a8 |a2 g4) |d'4..\p d16 d4
    	    \tuplet 3/2 {d8 (e d)} cis d e d |cis d e d cis d |d2. |f4\mf e4. d8
    	    d4 d dis |e2.~\> |e2\! r4 | e4..\p e16 e4 
    	    \tuplet 3/2 {e8 (f e)} dis e f e |dis e f e dis e |c2. |c4 c c
    	    c (e8) r r8. e16 |cis2\< (d4 |d2.\!) |R2.*4 |g,2. ( |b |g~) |g2 r4

% Rehearsal mark 2
    	    \mark \default
    	    R2.*4 |f'2.~\p |f ( |g |f) |g4..\mf g16 g4 |g g e |e e e |e e g 
    	    g4.. g16 g4 |fis fis4. fis8 |d2.~\> |d2\! r4
    	    
% Rehearsal mark 3
    	    \mark \default
	    c4..\p c16 c4 |c (b a) |a4 (e4. e8) |fis2 (e4) |e2 e8 e |e4 (gis b
	    d b4. gis8 |gis4 b a) |c a'4. a8 |c2 (aes4) |e g4. g8 |g2 (ges4) 
	    f d4. d8 |d2 d4 |e2.~ |e4 r r |R2.*2 |<b~ gis~>2.\f <b gis>4 r r
	    
% Rehearsal mark 4
    	    \mark \default
    	    \repeat volta 2 {
	    d,2.~\p |d~ |d~ |d |b\f |r4 e\> (g) |g\! r r |r r r8 c\mf |c4 c4. g8
	    b4 b4. f8 |a4 a4. g8 |d2 r8 f |a4 a4. g8 |g4 g4. d8 |f4 f4. a8
	    g2 r4 |d2.\p ( |cis |d~) |d |R2.*2 |r4 f\> (gis) |e (c) b\p
	    c2\cresc (d4) |e2 (g4) |d\< (dis e |f fis g) |d'2.\f	  }
	    \alternative {
	    	    {d,2. |e~\> |e4\! r r}
	    	    {d'2._\markup {Rit........} |e~ |e4 r r}
	    }
	    \bar "|."
    }%end relative
    \header {
    	    piece = "Kom i min famn"
    	    composer = ""
    	}
    \layout {ragged-last = ##t
    	}

  }%end score
