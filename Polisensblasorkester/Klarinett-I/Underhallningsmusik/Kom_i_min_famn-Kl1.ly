\version "2.22.1"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Kom i min famn  
    \relative c'' { 
    	    \clef treble \key c \major \time 3/4
    	    \set Score.markFormatter = #format-mark-numbers
    	    \set Score.markFormatter = #format-mark-box-numbers
    	    \compressEmptyMeasures

    	    e2.~\mf^\markup {\bold {Valse Mod.}} |e |ees~ |ees |f~ |f |d~\> |d 
    	    \bar "||"
% Rehearsal mark 1
    	    \mark \default
    	    g4..\p g16 g4 |\tuplet 3/2 {g8 (a g)} fis g a g |fis (g) a g fis g
    	    e2. |c'4\mf (b4. a8 |g2.) |c4 (b4. a8 |a2 g4) |f4..\p f16 f4
    	    \tuplet 3/2 {f8 (g f)} e f g f |e (f) g f e f |f2. |f'4\mf e4. d8
    	    d4 d dis |e2.~\> |e2 r4\! | g,4..\p g16 g4 
    	    \tuplet 3/2 {g8 (a g)} fis g a g |fis (g) a g fis g |e2. |e4 e e
    	    e (g8) r r8. g16 |g2\> (f4 |f2.) |R2.*4\! |b,2. ( |d ) ( |c~) |c2 r4

% Rehearsal mark 2
    	    \mark \default
    	    R2.*4 |a'2.~\p |a ( |b~) |b |e,4..\mf e16 e4 |e d c |c b a |b c cis 
    	    d4.. d16 d4 |d e4. d8 |g2.~\> |g2 r4\!
    	    
% Rehearsal mark 3
    	    \mark \default
	    e4..\p e16 e4 |e (d c) |c4 (b4. a8) |a2 (gis4) |gis2 gis8 gis 
	    gis4 (b d
	    f e4. b8 |d2 c4) |a' f'4. e8 |e2 (d4) |g, e'4. d8 |d2 (c4) 
	    g b4. g8 |a2 b4 |c2.~ |c4 r r |R2.*2 |gis2.~\f gis4 r r
	    
% Rehearsal mark 4
    	    \mark \default
    	    \repeat volta 2 {
	    f,2.~\p |f~\cresc |f~\< |f |f\!\f |r4 g\> (b) |c r\! r |r r r8 c\mf 
	    e4 e4. b8
	    d4 d4. a8 |c4 c4. b8 |f2 r8 a |c4 c4. g8 |b4 b4. f8 |a4 a4. f'8
	    e2 r4 |f,2.\p ( |g\cresc) ( |f~) |f |R2.*2 |r4 d\> (f) |a (e) b'\p
	    a2\cresc (b4) |c2 (cis4) |d\< (dis e |f fis g) |a2.\f	  }
	    \alternative {
	    	    {b,2. |c~\> |c4\! r r}
	    	    {b'2._\markup {Rit........} |c~ |c4 r r}
	    }
	    \bar "|."
    }%end relative
    \header {
    	    piece = "Kom i min famn"
    	    composer = ""
    	}
  }%end score
