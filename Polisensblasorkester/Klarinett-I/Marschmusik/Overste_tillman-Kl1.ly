\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here  
%{
#(ly:set-option 'point-and-click #t)
%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

OneBR = R1^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}

  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    R1*2 |c'1~\ff\startTrillSpan |c4\stopTrillSpan r r2 
    	    
    	    \repeat volta 2 {
    	    	    a4.\mf g8 f4.g8 |a4 (c) c2 
    	    	    d,->(\ff\trill\grace {cis16 d} f2->)(\trill\grace {e16 f} 
    	    	    a1->) |a4.\mf g8 f4.g8 |a4 (c) c2
    	    	    d->(\ff\trill\grace {cis16 d} f2->)(\trill\grace {e16 f} 
    	    	    e1->) |bes4.\mf a8 g4.a8 |bes4 (e) e2 |a,4.\mf g8 f4.g8 
    	    	    a4 (c) c2 |b2.->\ff a4 |g2 \times 2/3 {g4 f d'} |c1~ \bar "||"
    	    	    } 
    	    \alternative {
    	    	    {c4 r r2}
    	    	    {c4 r c cis}
    	    }
    	    \repeat volta 2 {
    	    	    d4-. r8 cis (d2) |e4-. r8 dis, (e2) |f8 (e) f-. g-. a (g) 
    	    	    f-. d-. |c4 r a'-> b-> |cis-. r8 bis  (cis2) |e4 r8 dis (e2)
    	    	    d8 (cis) d-. e-. f (e) d-. cis-. |d4-. r f,2--\p 
    	    	    e-- d8 (f bes d) |cis4 (d g,4. f8) |c1~ |c4 r c'4. c8 
    	    	    c2. (bes4) |fis (g e'4. d8) |c1~ |c4 r f,2->\f 
    	    	    e-> d8 (f, bes d) |cis4\< (d) f4. (g8)\! |a1~ |a4 r r2 |R1*3
    	    	    \bar "||"
    	    }
	    \alternative {
	    	    {r2 c4->\ff cis}
	    	    {r4 f,8 f f4 r \bar "||"}
	    }
	    \key bes \major
	    \mark \markup {\bold {TRIO}}
	    bes4\f r bes r |bes r bes r |a r r2 |\OneBR
	    \bar "||"
	    d,,1\mf |c2 (bes) |g2. (bes4 |f1) |d' |g2 (d)|f4. (e8 ees2~ |ees1)
	    ees |d2 (c) |g2. (bes4 |a2) g |f \times 2/3 {a4 c f} |a2 (g4.) ges8
	    f1~ |f |d |c2 (bes) |g2. (bes4 ||f1) |d' |g2 (d)|f4. (e8 ees2~ 
	    ees) g |bes1 |a2 (g) |f4. (d8 bes2~ |bes4.) bes8 (a4. g8) 
	    f2 a4.(c8) |g'2 (a,) |bes4 r r2 |\OneBR 
	    \bar "||"
	    d''1->\ff |c2-> bes-> |g2.-> bes4 |f1-> |d-> |g2-> d->
	    f4.-> e8 ees2~-> |ees1 |ees'1 |d2 c |g2.-> bes4 |a2-> g-> 
	    f-> \times 2/3 {a4 c f,} |a2-> g4.-> ges8 |f1 |f->\trill 
	    d'1->\ff |c2-> bes-> |g2.-> bes4 |f1-> |d-> |g2-> d->
	    f4.-> e8 ees2~-> |ees2 g-> |bes1-> |a2-> g-> |f4.-> d8 bes2~
	    bes4 r8 bes' a4.-> g8 |f (e f g f g a bes |c bes a g f ees d c)
	    bes4 (c8 d ees f g a |bes4) r r2 \bar "|."

    }%end relative
    \header {
    	    piece = \markup {\concat {\char #214 "verste Tillman"}}
    	    composer = "Ingemar Badman"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
