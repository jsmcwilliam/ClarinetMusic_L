\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. I Pratern blommar ater traden   
    \relative c'' {
    	    \clef treble \key f \major \time 3/4
    	    r2 c,4\f^\markup {\bold {Moderato}} |f,8 (a c a c f |a f c a c a) 
    	    e (g bes c e g | c2) r4
    	    f2\mf (aes4) |aes2. |e2\>_\markup {Rit......} (bes4 
    	    <e bes>2.\!)\fermata
    	    \repeat volta 2 {
    	    	    \time 2/4
    	    	    a8.\p^\markup {\bold {Allegretto}} g16 g8 f |a8 a a4
    	    	    bes8. a16 a8 g\< |bes2 |c8.\f bes16 c8. bes16 |g,8 g g4
    	    	    c8. bes16 c8. bes16\> |f'2 |a8.\p g16 g8 f |a8 a a4
    	    	    c8. bes16 bes8 a |c2\< |c8\mf fis, c' fis, |c' g e4 
    	    	    f!8\< f4 (f8 |e4.) r8 |f16\f (g) f-. g-. f8-. g-. 
    	    	    e4. d,16 (e |f8\< ees des\> aes'\!) |\bar "||"
    	    	    \time 3/4
    	    	    e'!2.~_\markup {Rit......} ^\markup {\bold {Lento}}
    	    	    e2 c,4\p^\markup {\bold {A Tempo}} ( |f4. g8 a4) |a4. (g8 f4
    	    	    e2.~ |e2) c4 ( |g'4. a8 bes4) |bes4. (a8 g4 |f2.~ 
    	    	    f2) e4\mf \( |f e d |c bes a |c2. ( |g2)\) g'4\f ( 
    	    	    bes g bes |c_\markup {Rit.......} gis c |f,2.~)\> |f2 c'4\mf
    	    	    (e4.^\markup {\bold {A Tempo}} g8 a4) |a4. \(g8 fis4 |g2. (
    	    	    e2)\) c4 ( |g'4. a8 bes4) |bes4. (a8 g4 |a2.~) |a2 e4 \( |a2.
    	    	    f |fis ( |g4) \) r bes\f ( |d_\markup {Rit......} bes g
    	    	    e) e-- e\fermata }
    	    	    \alternative {
    	    	    	    {f8 (f, a c f a |c4) r r}
    	    	    	    {f,2. |des4--_\markup {Rit.....} des-- des-- 
    	    	    	    f2.\fermata}
    	    	    }
    	    	    \bar "|."
    }%end relative
    \header {
    	    piece = 
    \markup {\concat {"I Pratern blommar "\char#229"ter tr"\char#228"den"}}
    	    composer = "Robert Stoltz"
    	}
    \layout {ragged-last = ##t
    	}

  }%end score
