\version "2.16.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
  }}}
%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Matador   
    \relative c'' { 
    	    \key f \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    d2.\ff\<^\markup {\bold {Andante}} (a8. d16 |c2~\> c8 a e a)\mf
    	    bes2. (f4 |d2\> c)\pp
    	    
%Rehearsal mark A
	    \mark \default
    	    \repeat volta 2 {
    	    c1 |e |ees |c |d }
    	    	    \alternative {
    	    	    	    {cis |d2 d |c (bes)}
    	    	    	    {bes1 |c2 (d |c1) \bar "||"}
    	    	    }
    	    g''8\mf\<^\markup {\bold {Piu Mosso}} (cis, cis2\! cis8 e  |f4 f2.)
    	    e8 (e e2 e8 e |a4 a2.) |f8 (f f2) f8 (b) |c4~ c2. 
    	    b8_\markup {Rall...} (b b2.--) |bes!8\> (bes bes2.--)\pp \bar "||"
    	    c,,1^\markup {\bold {A Tempo}} |e |ees |c |d |bes |c2 d 
    	    a2. r4 \bar "||"
    	    d'2.\f\< (a8. d16 |c2~\> c8 a e a)\mf |bes2.\< (f4 |d2\> c)\mf
    	    
%Rehearsal mark B
	    \mark \default    	    
    	    \repeat volta 2 {
    	    c'2~ c8 (a d8. c16 |c1) |c2~ (c8 g ees'8. c16 |bes4 a2.) 
    	    d2~ d8 (d, bes'8. g16 }
    	    \alternative {
    	    	    {f4 e2.) |f'4. (a,8 gis b f'8. e16 |e1)}
    	    	    { f,4\repeatTie (e2.) |f2 (e8 f f8. e16 |f2.) r4 \bar "||"}
    	    }	    
    	    a,8\mp (g e2 f8 g |bes4) a2. |a8 (g g2 a8 bes |d4 c2.) 
    	    c8 (b b2 c8 d |f4 e2.) |b'2\< (a g\>_\markup {Rall...} fis\p) 
    	    \bar "||"
    	    
%Rehearsal mark C
	    \mark \default    	    
    	    \key g \major
    	    d1^\markup {\bold {A Tempo}} |d |d |d |c |c |d2 c 
    	    b2.\breathe r4 |ees1\<_\markup {Rall...} |d\>\fermata <>\!
    	    \bar "|."

    }%end relative
    \header {
    	    piece = "Matador"
    	    composer = ""
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
