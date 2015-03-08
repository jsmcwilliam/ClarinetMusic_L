\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Matador   
    \relative c'' { 
    	    \key f \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    f2.\ff\<^\markup {\bold {Andante}} (d8. f16 |e2~\> e8 c a c)\mf
    	    d2.\< (bes4 |a2\> g)\pp
    	    
%Rehearsal mark A
	    \mark \default
    	    \repeat volta 2 {
    	    r8 a, (c f a f c f)|r8 g, (c e g e c e)|r8 g, (c ees g ees c ees) 
    	    r8 fis, (a d fis d a d) | r8 g, (bes d g d bes d) }
    	    	    \alternative {
    	    	    	    {r8 a (cis e g e cis e) |r8 a, (d f e d b gis) 
    	    	    	    a2 (c)}
    	    	    	    {r8 g (bes c g' e c bes) |r8 a (c f r bes, f' bes,) 
    	    	    	    r8\mf f'\< (a f\! c' a f' c) \bar "||"}
    	    	    }
    	    a'8\mf^\markup {\bold {Piu Mosso}} (e e2) f8 (g  |bes4 a2.)
    	    a8 (g g2) a8 (bes |d4 c2.) |c8 (b b2) c8 (d |f4 e2.) 
    	    e8_\markup {Rall...} (d\< d2.)\! |d8\> (c c2.\!)\p \bar "||"
    	    r8 a,,^\markup {\bold {A Tempo}}(c f a f c f)|r8 g, (c e g e c e)
    	    r8 g, (c ees g ees c ees) r8 fis, (a d fis d a d) 
    	    r8 g, (bes d g d bes d) |r8 g, (bes c g' e c bes)
    	    r8 a (c f r bes, f' bes,) c2~ c8 f\f\< (a c)\!
    	    \bar "||"
    	    f2. \(d8. f16 |e2~ e8 c\> e c\) |d2.\mf\< (bes4 |a2\> g)\!\mf
    	    
%Rehearsal mark B
	    \mark \default    	    
    	    \repeat volta 2 {
    	    c2~ c8 (a d8. c16 |c1) |c2~ (c8 g ees'8. c16 |bes4 a2.) 
    	    d2~ d8 (d, bes'8. g16 }
    	    \alternative {
    	    	    {f4 e2.) |f'4. (a,8 gis b f'8. e16 |e1)}
    	    	    { f,4\repeatTie (e2.) |f2 (e8 f f8. e16 |f2.) r4 \bar "||"}
    	    }	    
    	    a,8\mp (e e2 f8 g |bes4) a2. |a8 (g g2 a8 bes |d4 c2.) 
    	    c8 (b b2 c8 d |f4 e2.) |g'2\< (f)\> ees_\markup {Rall...} (d\p)\! 
    	    \bar "||"
    	    
%Rehearsal mark C
	    \mark \default    	    
    	    \key g \major
    	    r8^\markup {\bold {A Tempo}} b, (d b g'2) |r8 a, (d a fis'2) 
    	    r8 a, (d a f'2)|r8 gis, (b gis e'2) |r8 a, (c a fis'2)
    	    r8 fis, (a fis d'2)
    	    r8 b (g' b,) r c (g' c,)|d2.\breathe r4 |g1\<_\markup {Rall...} 
    	    fis\>\fermata <>\!
    	    \bar "|."

    }%end relative
    \header {
    	    piece = "Matador"
    	    composer = ""
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
