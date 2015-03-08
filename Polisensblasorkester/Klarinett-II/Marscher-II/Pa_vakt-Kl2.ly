\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Pa Vakt    
    \relative c'' { 
    	    \key bes \major \time 2/2 \clef treble
    	    \override DynamicLineSpanner.staff-padding = #2
    	    \compressFullBarRests
    	    d4->\ff r r2 |r4 d8-> d-> ees2-> |f4-> r r2 |r4 f8-> f-> f2-> 
    	    d'4-> r r2 |r4 r8 <d f,> (<c e,>4. <bes d,>8 |<a c,>4) r r2 
    	    r bes4.\f bes8
    	    
    	    \repeat volta 2 {
    	    bes4 r d,4. d8 |d4 r a'4. (g8) |f1~ |f4 r c'4. bes8 |a4.(bes8 a4. g8)
    	    f4-. r ees-. r |d1~ |d4 r bes'4. bes8 |bes4 r d,4. d8 
    	    d4 r bes'4. (bes8) |a1~ |a4 r f4. f8 |a2\< g |f bes |a1~\ff }
    	    \alternative {
    	    	    {a4 r bes4.\f bes8}
    	    	    {a4\repeatTie r r2}
    	    }
    	    \repeat volta 2 {
    	    r4 gis r a |r a r a |r bes8 bes bes4 bes |bes bes bes2-> 
    	    r4 fis r g |r g r g |r g8 g g4 g 
    	    g ees8\mf (d ees4-.) ees8 (d |ees4-.)\< ees8 (d ees4-.) ees8
    	    (d ees4-.) ees8 (d ees4-.) ees4-.\! |d2\f \tuplet 3/2 {d4 bes ees}
    	    d2.~ d4 |ees2 a,4. a8 |c2. (ees4--) |d2 d4. cis8 | d2.~ (d4--
	    ees4) ees8\mf (d ees4-.\<) ees8 (d |ees4-.) ees8 (d ees4-.) ees4-.
	    g\! r g2->\f |ees-> e-> |f4-. r r2 |r f4.-> (ees8) |d1~  }
	    \alternative {
	    	    {d4 r r2}
	    	    {d4\repeatTie r r bes'8\ff bes}
	    }
	    \bar "||"
	    \key ees \major \time 2/2
	    bes2->^\markup {\bold "TRIO"} d4-. c-. |bes4. a16->\trill bes 
	    bes4. aes16->\trill bes |g4 g, r g |r g

	    << {r g}
	    	    \\
	    {bes,2 (}
    	    >> 
	    \repeat volta 2 {
	    <<
	    {
    	    r4 ees'8^\p (c ees4) g4-. |aes-. r g-. bes,-. 
    	    ees g8 (fis g4) g8 (fis |g4) r r2 |r4 ees8 (g g4) bes |g r r2
    	    r4 aes,8 (bes c d dis e f4) r r2 |r4 f8 (e) f4 aes |bes r aes c,
    	    d bes'8 (a bes4) bes8 (a bes2) r |s2 c2 |bes bes |bes4
    	    }
    	    \\
	    {
    	    a,,2\repeatTie bes |c bes) |g'1~ |g2 d  |f1~ |f4 ees (bes g) |f1~ 
    	    f2 c' ( |b c |d c) |aes'1~ |aes4. g8 f4. ees8 
    	    	<< {\stemDown d4 r ees2 |d c |bes4}
    	    	\\
    		   {\stemUp r4 a'8 (bes) c4 c |bes bes bes bes |bes} >>
            	   } 
    	    >>
   	    r4 r2 |r2 g'\f ( |fis g\< |aes g\!) |g1~\> |g2\! c\< ( |g1~ |g\!) 
   	    aes~ |aes4 r ees4. ees8 |ees2~->\< (ees4. d16 ees) 
   	    f4.-> (e16 f) ees4.-> d16 ees |ees4\ff r c! r |bes\<
   	    << {\tuplet 3/2 {bes'8 (c bes} a4 bes)}
   	    \\ 
   	       {\tuplet 3/2 {bes,8 c bes} a4 bes}
   	    >>
    	    d4-.\! r cis r |d\<
    	    << {\tuplet 3/2 {bes'8 (c bes} a4 bes)}
    	    \\
    	       {\tuplet 3/2 {bes,8 c bes} a4 bes}
    	    >> 
    	   ees-.\! r c! r |bes  r ees4. ees8 |ees1~->( |ees2.. d16 ees)
   	   f2~-> (f4. ees16 f) |ees4.-> (d16 ees) c4.-> (b16 c) |ees2-> r
   	    r g4.-> f8-> |ees2-> aes-> |g1~-> }
   	    
   \alternative {
   	  {g4 r 
   	  << {r2} 
   	  \\
   	    {\once \override Slur.control-points = #'((1 . -5) (3 . -5.6) (3 . -5.6) (5 . -5))
   	     bes,,2\mf( <>)} >> }
  	    {g''4\repeatTie r r2}
   	        }
   	   \bar "|."
    }%end relative
    \header { 
    	    piece = \markup {\concat {"P"\char#229" Vakt"}}
    	    composer = "Sam Rydberg"
    	}
    \layout {ragged-last = ##t
    	}

  }%end score
