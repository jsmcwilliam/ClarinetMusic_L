\version "2.18.0"
% When ready to include in collection: 1. Comment out top section.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key ees \major \time 2/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    
    	    \partial 8
    	    << {\set fontSize = #-4  % make note heads smaller
    	    	\override Stem #'direction = #DOWN
    	    	g16\ff g |g4. g16 g |g4. g16 g |g8 [g aes fis] |g8
    	    	\revert Stem #'direction
	    \unset fontSize  % return to default size
           }
	\\
	   {\override Stem #'direction = #UP 
	    g'8\rest |g8\rest^\ff ees'^. c^. g8\rest |g8\rest c^. b^. g8\rest 
	    g8\rest g^. [aes^. fis^.] | g^.
	    \revert Stem #'direction
	   }>>
	   
	   r\pp g,^- (c,)
	   
	   \repeat volta 2 {
	   	   c4. b16 (c) |ees4 (d) |b16 (c) c4.~ |c8 r g'^- (c,) 
	   	   c4. b16 (c) |ees8-. r d-. r |ees2~ |ees8 r bes''8-- (ees,)
	   	   ees4. d16 (ees) |ees4 (d) |ees16 (f) ees4.~ |ees8 r g (c,)
	   	   c4. b16 (c) |bes!8-. r aes-. r |g2~ }
	   \alternative {
	   	   {g8 r g (c,) }
	   	   {g'8 r bes'8.\p\> (a16)\! \bar "||" }
	   }

	   aes2~ |aes8. (g16 aes 8. g16) |aes 4 (c8) r |f,\< (g aes a)\!
	   bes2~ |bes8. (a16 bes8. a16) |bes4 (ees8) r |bes8\< (c d ees)\!
	   d4 d |d \times 2/3 {c8 (d ees)} |d2~ |d8\< c16 (d c8 bes)
	   bes4--->\>  bes--\! |a-- \times 2/3 {a8 bes c} |bes2~ 
	   bes4 \grace {bes16 (c)} bes8.\p\> (a16)\! |aes!2~ 
	   aes8. (g16 aes 8. g16) |aes 4 (c8) r |f,\< (g aes a)\!
	   bes2~ |bes8. (a16 bes8. a16) |bes8 r ees,-. r |g-. r r4 
	   r8 c16 c r8 c16 c |c8 r r4 |r8 c16 c r8 c16 c |c8\< ees d c
	   g2~\ff\startTrillSpan |g~ |g8\stopTrillSpan g-> aes-> fis-> 
	   g-. r g--\p (c) \bar "||"
	   c4. b16 (c) |ees4 (d) |b16 (c) c4.~ |c4 g8-- (c) |c4. b16 (c) 
	   ees8-. r d-. r |ees2~ |ees8 r bes-- (ees,) |ees4. d16 (ees)
	   g4 (f) |g16 (aes g4.~) |g4 bes8-- (ees,) ees4. d16 (ees) |g8-. r f-. r
	   ees2~ |ees8 r\pp g,^- (c,) \bar "||"
	   c4. b16 (c) |ees4 (d) |b16 (c) c4.~ |c8 r g'^- (c,) 
	   c4. b16 (c) |ees8-. r d-. r |ees2~ |ees8 r bes'^- (ees,) 
	   ees4. d16 (ees) |g4 (f) |g16 (aes) g4.~ |g8 r bes^- (ees,) 
	   ees4. d16 (ees) |g8-. r f-. r |ees2~ |ees8 r r4 \bar "||"
	   
	   \key aes \major \time 2/4
	   R2*4^\markup {TRIO} |\bar "||" ees8--\p r ees4->~ \( 
	   ees  \times 2/3 {d8 ees f\)} |ees4\< (aes |g\> f)\! |ees (aes,~) 
	   aes \times 2/3 {aes8 (bes b)}| c2~ |c |des8-. r des4->~ ( 
	   des \times 2/3 {c8 des ees)} |des4\< (bes |g'\> f\!) 
	   ees8.\> (d16 des4~ |des c\!) |bes2~ |bes |ees8 r ees4->~ ( 
	   ees \times 2/3 {d8 ees f)} |ees4 (aes |g f) |e8-. r e4->~ ( 
	   e \times 2/3 {d8 e f)} |e2~ |e |ees!8-. r ees4->  
	   ees \times 2/3 {c8 (des ees!)} |des4\< (c |bes f') |ees8\> r aes,4~ (
	   aes g\! |aes2~ |aes8) r r4 \bar "||"
	   ees'''8-.\ff r ees4->~ |ees \times 2/3 {d8 ees f} |ees4-> c-> |c-> c->
	   c aes~ |aes \times 2/3 {aes8 bes b} |c2~ |c |bes8-. r bes4->~
	   bes \times 2/3 {a8 bes c} |bes4 g |bes4. des8 |c8. b16 bes4~ |bes aes
	   g2~ |g |ees'8-.\ff r ees4->~ |ees \times 2/3 {d8 ees f} |ees4-> c-> 
	   c-> c-> |c8-. r c4->~ |c \times 2/3 {b8 c d} |c2~ |c |ees8-. r ees4~ 
	   ees \times 2/3 {c8 des ees} |des4\< c |bes f'\!
	   ees_\markup {rit.....} aes,->~ |aes g |aes2~ |aes8 r r4 \bar "|."
	   
	   
    }%end relative
    
    \header {
    	    piece = "The Vanished Army"
    	    composer = "Kenneth J. Alford"
    	}
    \layout {ragged-last = ##t
    	}
    	
  }%end score
