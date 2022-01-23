\version "2.22.1"

% When ready to include in collection: 1. Comment out paper, score.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(ly:set-option 'relative-includes #t) 
#(set-default-paper-size "a5" 'landscape)

\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {
  
% Svenska Polisens Marscher: 1. Svenska Polisens Paradmarsch

\relative c''' { 
    \clef treble \time 2/2 \key f \major
    \bar ".|:"
    \repeat volta 2 {
    a2^^\f c4.. d32 e |f8 [c16 c] c8 c c r c8.-> (d32 e 
    f8) r c8.-> (d32 e f8) r c8. (d32-> e
    f4) f r r8 c,8 |a'4.. g16 \acciaccatura g8 f8. e16 f8. a16
    c,2~ c8. c16 d8. e16 
    \acciaccatura g8 f8. e16 f8. g16 a8. g16 a8. f16 
    bes4.~ (bes32 a g f e4) r8 c 
    bes'4.. a16 \acciaccatura a8 g8. fis16 g8. bes16 
    c,2~ c8. c16 e8. f16 
    \acciaccatura a8 g8. fis16 g8. a16 bes8. a16 bes8. b16
    c4.~ (c32 bes! a g f4) r8 f8 |f'4.. e16 f8. e16 f8. d16
    c4.. b16 c8.b16 c8. a16 
    \acciaccatura a8 g8. fis16 g8. a16 bes8. a16 bes8. d16
    b2 (c8) r r f, |f'4.. e16 f8. e16 f8. d16
    c4.. b16 c8.b16 c8. a16 
    \acciaccatura a8 g8. fis16 g8. a16 bes8. c16 d8. e16
    f4 f, f r
      }
 }%end relative
    
\header {
    piece = \markup {\concat {"Svenska Arm"\char#233"ns Paradmarsch"}}
    composer = ""
    }
  }%end score
