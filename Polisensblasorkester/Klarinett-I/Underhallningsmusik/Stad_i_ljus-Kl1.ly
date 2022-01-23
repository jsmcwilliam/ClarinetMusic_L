\version "2.22.1"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key g \major \numericTimeSignature\time 4/4 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-numbers
  R1*2 | % 1
  
\mark #3
  g2 \mp fis4 e4 | %3
  d4. e8 d2 | % 4
  \time 3/4  
  g4 fis4 e4 | % 5
  \numericTimeSignature\time 4/4  
  d2 d2 | % 6
  g2 a2 | % 7
  g2 \< g2 | % 8
  g2 \! g2 | % 9
  g2 ( fis4 ) fis4 \bar "||" | %10
  
\mark #11
  g2 fis4 e4 | % 11
  d4. e8 d2 | % 12
  \time 3/4  
  g4 fis4 e4 | % 13
  \time 4/4  
  d4. d8 d2 | % 14
  R1*4 \bar "||" | % 15
  
\mark #19
  b'2 c2 \trill | % 19
  d2. e8 [ fis8 ] | % 20
  g2 c,4 b4 | % 21
  a2. r4 | % 22
  b2 fis'2 | % 23
  g2 r8 g8 e8 [ c8 ] | % 24
  b2 a2 | % 25
  g2. r4 \bar "||" | %26
  R1*4 \bar "||" | %27
  
\mark #31
  r4 r8 g8 a8 [ a8 ] c8 [ b8 ] | % 31
  g8 [ g8 ~ ] g2 r8 g8 | % 32
  \time 3/4  
  g8 [ g8 ] fis8 [ fis8 ] e8 [ e8 ] | % 33
  \numericTimeSignature\time 4/4  d2. r8 d8 | % 34
  b'2 a4 c8 [ b8 ] \break | % 35
  g8 [ g8 ~ ] g4 r8 \< d'8 [ e8 fis8 ] | % 36
  g8 \! [ b,8 b8 b8 ] c8 [ c8 ] r8 b16 [ g16 ] | % 37
  a1 \bar "||" | %38
  R1*7 | % 39
  r16 d,16 \f [ g16 a16 ] b16 [ g16 b16 d16 ] e4 fis4 \bar "||" | %46
  b,2 c2 \trill | % 47
  d2. e8 [ fis8 ] | % 48
  g2 c,4 b4 | %49
  a2. r4 | % 50
  b2 fis'2 | % 51
  g2 r8 g8 e8 [ c8 ] | % 52
  b2 a2 | % 53
  g4. g16 [ a16 ] b8 [ b16 c16 ] d8 [ e16 fis16 ] | % 54
  g2. r4 \bar "|." | %55

    }%end relative
    
    \header {
    	    piece = "Stad i Ljus"
    	    composer = \markup {\concat{"Py B"\char#228"ckman"}}
    	}
  }%end score
