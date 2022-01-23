\version "2.22.1"

% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Beatrice Aurore   
    \relative c'' { 
    	    \key bes \major \time 4/4 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \partial 4 d4\f^\markup {\bold {Moderato}} ( |f4.) f8 f2~ 
    	    f4 g (bes8 a g f |a4. f8) f2~ |f2. f4~
    	    f^\markup {\bold {T:o di Bossa Nova}} r r2 |r r4 d\mf (
    	    
%Rehearsal mark A
	    \mark \default
    	    \repeat volta 2 {
    	    	    f4.) f8 f4 f |f (g bes g) |a4. (f8) f4 f |f2. f4 ( 
    	    	    c' d ees c | d bes c a) |bes-- (bes-- bes-- bes-- 
    	    	    bes2.) d,4 ( 
    	    	    
%Rehearsal mark B
	    \mark \default   	    	    
    	    	    f4.) f8 f4 f |f (g bes g) |a4. (f8) f4 f |f2. f4 ( 
    	    	    c' d ees c |d bes c a) |bes-- (bes-- bes-- bes-- |bes2.) r4
    	    	    
%Rehearsal mark C
	    \mark \default
    	    r2 c2~\f |c1 |c2 (b |bes!1) |r2 c~ |c1 |c2 (cis |d2.) d,4\mf (

%Rehearsal mark D
	    \mark \default
	    f4.) f8 f4 f |f (g bes g) |a4. (f8) f4 f |f2. f4 ( |c' d ees c
    	    d bes c a) |bes-- (bes-- bes-- bes-- }
    	    \alternative {
    	    	    {bes2) r |R1 |r2 r4 
{\once \override Slur.control-points = #'((1 . 3) (3 . 4.6) (3 . 3.6) (4 . 4))
                    d,4\mf( <>)} }
    	    	    {bes'2\repeatTie r \bar "||"}    	    
    	    }
    	    
%Rehearsal mark E
	    \mark \default
	    \key c \major
    	    R1*3 |r2 r4 a\p ( |d e d c |a b c a) |b (d a b |g2.) r4 
    	    
%Rehearsal mark F
	    \mark \default
    	    r2 g\f ( |c a) |a1~ |a2. g4 |a (bes b a |c g a f) 
    	    g-- (g-- f-- fis-- |g2) r |R1 |r2 b-> |c1~ |c2.\fermata r4
    	    \bar "|."
    }%end relative
    \header {
    	    piece = "Beatrice-Aurore"
    	    composer = "Nj. Casserman"
    	}
  }%end score
