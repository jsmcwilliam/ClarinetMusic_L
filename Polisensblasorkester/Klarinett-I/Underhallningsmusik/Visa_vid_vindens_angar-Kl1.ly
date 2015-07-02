\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

OneBarRest = R2.^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: "1. Visa vid vindens" \char #228"ngar"     
    \relative c' { 
    	    \key g \major \time 3/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-circle-numbers
    	    \override DynamicLineSpanner #'staff-padding = #2
    	    <<{\set fontSize = #-4  % make note heads smaller
    	       d'8_\markup {\concat { "1'a Fl" \char #246 "jt"}} _(e) g b d eis  
    	       \unset fontSize } % return to default size
    	    \\
    		{\override MultiMeasureRest.staff-position = #1 R2.
  		 \revert MultiMeasureRest.staff-position }>> 
 	    e,,8\mf\<^\markup {"a. 1"} (a) c-- e-- g-- b--
 	    <a~ d,~>2.\mf\> | <a d,>4. r8\! r4
 	    \bar "||" 
		 
%Rehearsal mark 1
		\mark \default
		g,\p (e g |e g e) |c (e g |e fis e) |d'2\< (dis4\> | e2) r4\! 
		\OneBarRest | r4 r8\mf d\< d d\!
		\bar "||"
		
%Rehearsal mark 2
		\mark \default
 		e4 (g8) e c (b) |a4 a8 a b (c)|d4 (fis8) d fis (d) |b4. b8 (c d)
		e4 g8 (e) g (e) |a,4 a8 a b (c)|b4 d8 (b) a (g) |a4. r8 r4
		\bar "||"		

%Rehearsal mark 3
		\mark \default
		\set doubleSlurs = ##f
		<g' b,>2\p <g b,>4~ |<g b,> <g b,>2 
		
		<<{g2. ( |fis4. ) }
		\\
		  {a,4 (c cis|d4.)  }
		>>
		d,8\mf\< (e g) | d'4\! d8 d b\> b |g4 (e8)\!
		
    	   <<{\set fontSize = #-4  % make note heads smaller
    	       b8_\markup {Horn} b b |c4 e8 g b b |g4. b8\rest b4\rest 
    	       \unset fontSize } % return to default size
    	    \\
    	   {g'8\rest g4\rest \override MultiMeasureRest.staff-position = #6 R2.*2
  		 \revert MultiMeasureRest.staff-position }>> 
 		
		

%Rehearsal mark 4
		\mark \default
		e2\mf (g4 |fis2.) |r8 fis~ (fis4 d |e4.) r8 r4 |c2 (e4 |d2.)
		g,4\< (b cis\> |e d8\!) d,8\< [(e g)]\! 
		
%Rehearsal mark 5
		\mark \default
		d'4 d8 d b b |g4 (e8) b b b|c4 e8 (g) b (g) |a4. r8 r4
		r8 g\mf\< (b d dis4\> |e4.)\breathe b8\! b b 
		c\p\< (e4) g8 (b)\> b32 (bes a aes\! |g4.)\fermata r8 r4 
		\bar "||"
		
%Rehearsal mark 6
		\mark \default
		\key c \major
		r8 <f f,>4\p <f f,>8 (<a a,>4)| <g g,>8 (<b b,>4.) r4 
		r8 <g g,>4 <g g,>8 (<b b,>4) | <a a,>8 (<c c,>4.) r4
		\OneBarRest |r8

		<< { b4 (f8 b4 |a) }
		\\
		   { d,4 (f8 d4 |c) }
		>>
		
		r4 r |r r8\mf g\< (a c)\!
			
%Rehearsal mark 7
		\mark \default
		g'4\mf g8 g e e |c4 (a8) e e e |f4 a8 (c) e (c)|d4. r8 r4 
		r8 c\< (e g gis4\> |a4.) r8\! r4 
		\OneBarRest
		\time 4/4
		r2 r4\mf
		<< {c16-> (b bes a) |aes (g ges f) e2.\fermata  }
		\\
		   {f16-> (e\> ees d) |des (c b\! bes\p) a2.\fermata } >>
		\bar "."
    }%end relative
    \header {
    	    piece = \markup {\concat {"Visa vid videns "\char#228"ngar"}}
    	    composer = "Mats Paulsson"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
