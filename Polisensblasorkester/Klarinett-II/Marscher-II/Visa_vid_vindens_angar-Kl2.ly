\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a5" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Visa vid vindens angar    
    \relative c' { 
    	    \key g \major \time 3/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-circle-numbers
    	    <<{\set fontSize = #-4  % make note heads smaller
    	       d8\mf\<^\markup {\bold {KlI Solo}} (e) g b d fis\! 
    	       \afterGrace e2.\startTrillSpan { dis16[ e16\stopTrillSpan]}
    	       c2.~|c4. 
    	       \unset fontSize } % return to default size
    	    \\
    		{\override MultiMeasureRest.staff-position = #-4 R2.*2
    		a2.~\> |a4.\!}>> 
  		 \revert MultiMeasureRest.staff-position
 		 
  		 r8 r4 \bar "||" 
  		 
%Rehearsal mark 1
		\mark \default
		d,\p (b d |b d b) |c2 (cis4 |c!2.) |b8\< (d g b\! a4 |g\> e g\!) 
		g2 (fis4) |e (d8) r r4 \bar "||"
		
%Rehearsal mark 2
		\mark \default
		\set doubleSlurs = ##t
		r4 <e c>2\mf |r4 <fis d>2 |r4 <d b>2 |r4 <e b>2 |r4 <c a>2
		r4 <fis d>2 |r4 <d b>4 (<cis a>) 
		<d a>8 ([<e b>] <fis c!>)^\markup {\bold {tenuto}} r r4 \bar "||"		

%Rehearsal mark 3
		\mark \default
		\set doubleSlurs = ##f
		<d' b>2\p <d b>4~ |<d b> <e b>2 |<e g,>2. (<d fis,>4.) r8 r4
		b,8\mf\< (d g b\! a4 |g\> e8\!) r r4 |g2 (fis4) |e (d8) r r4

%Rehearsal mark 4
		\mark \default
		e2\mf (g4 |fis2.) |r8 fis~ (fis4 d |e4.) r8 r4 |c2 (e4 |d2.)
		g,4\< (b cis\> |e d8\!) r r4 
		
%Rehearsal mark 5
		\mark \default
		g4\mp (e g |e g e) |g (e g) |<g e> (<fis d>8) r r4
		b,8\mf\< (d g b\! a4 |g\> e8\!) r r4 |c'2.\p ( 
		b4.)\fermata r8 r4 \bar "||"
		
%Rehearsal mark 6
		\mark \default
		\key c \major
		r8 a4\p a8 (c4) |b8 (d4.) r4 |r8 b4 b8 (d4) |c8 (e4.) r4
		R2.^\markup{\normalsize\number 1} |r8 f4 (d8 f4 |e) r r
		R2.^\markup{\normalsize\number 1} 
		
%Rehearsal mark 7
		\mark \default
		r4 r8 c,\mf\< (e g)\! |a2 (e4) |f2 (e4) |d8 (e f4) r 
		e8 (\< g c e d4\> |c a8)\! r r4 
		R2.^\markup{\normalsize\number 1} 
		\time 4/4
		r2 r4 a'16->\mf\> (aes g fis) 
		f! (e ees d) c2.\p\fermata \bar "."
    }%end relative
    \header {
    	    piece = \markup {\concat {"Visa vid videns "\char#228"ngar"}}
    	    composer = "Mats Paulsson"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
