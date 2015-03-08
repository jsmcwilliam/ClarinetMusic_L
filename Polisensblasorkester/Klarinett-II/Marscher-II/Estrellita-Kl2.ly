\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%{					  header.
%Comment out from here
%
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%}
%...to here
  \score {

    % Svenska Polisens Marscher: 1. Estrellita   
    \relative c'' { 
    	    \key bes \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    R1*3^\markup {\bold {Rhumbo tempo}} |r2 f,,4\f^\markup {Soli} (g 
    	    a2 bes4 d8 f |c'2. bes4) 
    	    bes4. (c,8) c2~ |c2. g'4 |g4. (b,8 c4 d |ees!2.) g4 |g4. (a8 f4 f,
    	    d'2) f,4 (g a2 bes!4 d8 f |d'2.) a4 ( |c4. bes8 c,2~) 
    	    c4 a'8 (c bes a bes g) |g4. (f8 bes4 d,) |d (ees g a, |bes1~) 
    	    bes2. r4 |r2 r8 c'\mf (ees! f |a2 ees) |r2 r8 bes (d f |g4 d2) r4
    	    r2 r8 a (c ees |f4 ees2) r4 |r f8 (g a4 g8 a 
    	    f2) f,,4\f^\markup {Soli} (g |a2 bes4 d8 f |d'2.) a4 ( 
    	    c4. bes8 c,2~) | c4 a'8 (c bes a bes g) |g4. (f8 bes4 d,) 
    	    d (ees g a, |bes1~) |bes2. r4 \bar "||"
    	    \key f \major
    	    r4 c'\f (c'2) |r4 c4 (c,2 |d2.) d4 ( |g d8 g bes2) |r4 c,2. 
    	    r4 e!8 (g bes2 |a2. c,4 |d f) r2 |r4 c (c'2) |r4 cis (cis,2 
    	    d2.) f4 ( |g2 gis |a1) |c!2 (bes |a4. c,8 d e f a |f2.) f4\f (
    	    e dis8 e bes'2~) |bes g4 (e~ |e f8 d! a'2~) |a2. f4 ( |e dis8 e g2~)
    	    g e ( |f1~) |f2 r |r4 c\f (c'2) |r4 cis (cis,2 |d2.) f4 ( |g2 gis
    	    a1) |c!2 (bes |a4) r8 f-. a4-. a-. |a-. r8 a-. f4-. d-. |f1\p\<
    	    gis |a8\ff r a-> a-> a-> r f,-> f-> |f-> r r4 r2 
    	    \bar "|."
    }%end relative
    \header {
    	    piece = "Estrellita"
    	    composer = "Manuel M. Ponce"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score

