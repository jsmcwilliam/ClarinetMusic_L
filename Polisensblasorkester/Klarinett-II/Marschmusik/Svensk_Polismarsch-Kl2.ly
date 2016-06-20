\version "2.18.0"
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

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \time 2/2 \key f \major \clef treble
    	    \override DynamicLineSpanner.staff-padding = #2
    	    \compressFullBarRests
    	    R1*2 |g'4->\ff r r2 |r c,\mf 
   	    \repeat volta 2 {
    	    c2 c |c a |a4 r a'2~ |a f |e4 r e2~ |e4 b8 (c\< d e f g\!)
    	    f2.\> c4 |a2\!\breathe c |c c |c aes |c4 r e2~ 
    	    e4 g,8 a (b\< c d e\!) |d2.\f \tuplet 3/2 {f8 (g f} |e4) f-. f4. f8 
    	    e1~ 
    	    }
  	    \alternative {
    	    	    {e4 r c2}
    	    	    {e4 r r2}
 	    }
 	    \repeat volta 2 {
 	    \repeat percent 2 {r4 bes'\f r bes} |r a8 a a4 a |a r r2
 	    \repeat percent 2 {r4 c r c} |r bes8 bes bes4 bes 
 	    bes r g8\f (f g f |e4) r d r |c r bes r |a2. (f4) |a2 \breathe f'
	    e2. (g4) |e2 \breathe g |f2. (a4) |f2 e4.\p f8 |g4 r a\cresc r 
	    bes r g r |a2. f4\! |f2.->\ff r4 |r aes8-> aes-> aes4-> r
	    r a!8-> a-> a4-> r |r bes-> bes-> bes-> 
 	    }
 	    \alternative {
 	    	    {a-> r r2}
 	    	    {a4 a8 a a4 r \bar "||"}
 	    }
    \break
    \key bes \major
    \time 2/2
    \mark \markup {\bold TRIO}
    d,4\ff r d r |d r r2
    \repeat volta 2 {
    	    \set countPercentRepeats = ##t
    	    \repeat percent 6 {d4 r d r} 
    	    \repeat percent 8 {ees r ees r} |d r d r |d r f2\f
    	    \set countPercentRepeats = ##f
    	    f1~ |f4 a bes4. g8 |d1~ |d4 a (bes d) |\repeat percent 2 {d2 d}
    	    ees1~ |ees2 \breathe g }
    	    \alternative {
    	    	    {g1~ |g4 bes a4. g8 |d1~ |d4 d (bes g') |d2-> c-> |bes-> a->
    	    	     f1~ |f4 r r2}
    	    	    {g'1~ |g4\> r g2\!  |f1~\f |f4 bes (d, g) |f2.. e16-.\< f-.
    	    	    e2-> ees->\! |d1~\ff |d4-> r r2}
    	    }
    \bar "|."

    }%end relative
    \header {
    	    piece = "Svensk Polismarsch"
    	    composer = "P. Grundström"
    	}
    \layout {ragged-last = ##t
    	}

  }%end score
