\version "2.16.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Overste Tillman   
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    R1*2 |c1~\startTrillSpan |c4\stopTrillSpan r r2 
    	    
    	    \repeat volta 2 {
    	    	    f4.\mf c8 a4. c8 |f4 (a) a2 |a,-> c-> |f1-> 
    	    	    f4.\mf c8 a4. c8 |f4 (a) a2 |a->\ff a-> |bes1 
    	    	    g4.\mf f8 e4. f8 |g4 (bes) bes2 |f4. c8 a4. c8 |f4 (a) a2 
    	    	    g2.-> a4 |g2 \times 2/3 {g4 (f) e} |e1~ }
    	    	    \alternative {
    	    	    	    {e4\repeatTie r r2 }
    	    	    	    {e4 r bes'-> bes->}
    	    	    }
    	    	    
    	    \repeat volta 2 {	    
    	    	    bes4 r bes2-> |c4-. r8 b,8 (c2) |f8 (e) f-. g-. a (g) f-. d-.
    	    	    c4 r f-> f-> |a-. r8 gis (a2) |cis4 r8 b (c2) 
    	    	    f,8 (e) f-. g-. a (g) f-. e-. |f4-. r d2--\p 
    	    	    bes bes8 (d f bes) |bes4 (a bes2) |a1~ |a4 r a4. a8 
    	    	    g2. (e4) |dis (e bes'2) |a1~ |a4 r a,2->\f 
    	    	    bes-> bes8 (d, f bes) |bes2\< d-> |f1~\! |f4 r r2 |R1*3 }
    	    	    \alternative {
    	    	    	    {r2 bes4->\ff bes->}
    	    	    	    {r4 a8 a a4 r \bar "||"}
    	    	    } 	 
    	    	    
    	   \key bes \major
    	   \mark \markup {\bold{ TRIO }}
    	   f4\f r f r 
    	   f r f r |f r r2 |R1^\markup{\normalsize\number 1} |\bar "||"
    	   
    	   d,1\mf |c2 (bes) |g2. (bes4 |f1) |d'|g2 (d) |f4. (e8 ees2~ |ees1)
    	   ees |d2 (c) |g2. (bes4 |a2) g |f \times 2/3 {a4 (c) f} |a2 (g4.) ges8 
    	   f1~ |f |d|c2 (bes) |g2. (bes4 |f1) |d'|g2 (d) |f4. (e8 ees2~ |ees) g
    	   bes1 |a2 (g) |f4. (d8 bes2~ |bes4.) bes8 (a4. g8) |f2 a4. (c8)
    	   g'2 (a,) |bes4 r r2 |R1^\markup{\normalsize\number 1} |\bar "||"
    	   
    	   bes''1->\ff |f2-> f-> |e2.-> g4 |f1-> |g-> |b,2-> f'-> |f4. g8 g2~->
    	   g1 |a |a2-> a-> |f2.-> f4 |f2-> c-> |c-> \times 2/3 {a4 (c) f}
    	   f2-> ees4.-> ees8 |d1 ( |ees) |bes'-> |f2-> f-> |e2.-> g4 |f1-> |g-> 
    	   b,2-> f'-> |f4. g8 g2~-> |g-> ees-> |g1-> |ees2-> ees-> 
    	   d4.-> d8 d2~-> |d4 r8 bes' a4.-> g8 |f (e f g f g a bes
    	   c bes a g f ees d c) |d1~ |d4 r r2 \bar "|."
    	   
    }%end relative
    \header {
    	    piece = \markup {\concat {\char#214"verste Tillman"}}
    	    composer = "Ingemar Badman"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
