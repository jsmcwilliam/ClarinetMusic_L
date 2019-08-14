\version "2.18.0"
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
    	    \key c \major \time 3/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \override DynamicLineSpanner #'staff-padding = #2
    	    \set Score.explicitKeySignatureVisibility = #begin-of-line-visible
    	    
    R2.*2 |
    c,8. \pp ( [ d16 ) ] e8 -. [ f8 -. ] g8 ( [ e8 ) ] |
    f16 -. [ g16 -. a8 -. ] b8 -. [ c8 ~ ] c4 |
    a8. \< ( [ b16 ) ] c16 ( [ d16 ) e16 -. f16 -. ] g8 ( [ e8 ) ] |
    d16 \! ( [ e16 ) f16 -. d16 \> -. ] \times 2/3 {e16 ( [ f16 e16}
    c8 ) ] c4 |
    c,8. \! ( [ d16 ) ] e8 -. [ f8 -. ] g8 ( [ e8 ) ] |
    f16 -. [ g16 -. a8 -. ] b8 -. [ c8 ~ ] c4 |
    a8. \< ( [ b16 ) ] c16 ( [ d16 ) e16 -. f16 -. ] g8 ( [ e8 ) ] |
    d16 \! ( [ e16 ) f16-. d16-. \> ] \times 2/3 {e16 ( [ f16 e16}
    c8 ) ] c4 ^^ \bar "||"
    
\mark \default | % 11 A
  e8. \! \mf ( [ f16 ) ] g8 -. [ e8 -. ] f8 ( [ d8 ] | % 12
  b8 [ g8 ) ] b8 ( [ c8 ) ] d16 ( [ e16 ) f16 d16 ] \break | % 13
  e16 ( [ f16 ) e16 c16 ] d8 [ b8 ] c8 [ g8 ] | % 14
  a4. \> g8 -. g16 -. [ f16 -. e16 -. d16 -. ] | % 15
  c8. \! \p ( [ d16 ) ] e8 -. [ f8 -. ] g8 ( [ e8 ) ] | % 16
  f16 ( [ g16 ) a8 -. ] b8 -. [ c8 ~ ] c4 | % 17
  a8. \< ( [ b16 ) ] c16 ( [ d16 ) e16 -. f16 -. ] g8 ( [ e8 ) ]
  \break | % 18
  d16 \! ( [ e16 ) f16 -. d16 -. ] \times 2/3 {
    e16 ( [ f16 e16
  }
  c8 ) ] c8 [ g16 \f ( f16 ) ] | % 19
  e16 ( [ g16 ) c16 e16 ] g16 ( [ e16 ) f16 ( d16 ) ] e16 ( [ c16 ) d16
  ( b16 ) ] | % 20
  
  \time 2/4
  c16 _"poco rit......." ( [ g16 ) a16 ( g16 ) ] g16 ( [ f16 ) d16 b16
  ] | % 21
  
  \time 3/4  | % 21
  c8 ^"A Tempo" r8 r4 r4 | % 22
  R2. | % 23
  
  \mark \default %B 
  c2.^\markup {\musicglyph #"scripts.segno"} \p ~ | % 24
  c2. | % 25
  c2. ( | % 26
  g'2 ) b16 \mf ( [ c16 ) e16 f16 ] | % 27
  g4 \( c4 e8 (c8)\) | % 28
  a4 ( g8 [ e8 ~ ] e4 ) | % 29
  f4 a8 ( [ c8 ] e8 [ c8 ) ] |
  b4 c8 ( [ g8 ~ ] g4 ) \bar "||"
  e8. \mf ( [ f16 ) ] g8 [ e8 ] f8 -- [ d8 ] | % 32
  b8 [ g8 ] b8 [ c8 ] d16 ( -> [ e16 ) f16 d16 ] | % 33
  e16 ( -> [ f16 ) e16 ( c16 ) ] d8 [ b8 ] c8 [ g8 ] | % 34
  a4. \> g8 g16 ( [ f16 ) e16 d16 ] | % 35
  c2. \! \p | % 36
  c4 ( d8 [ e8 ~ ] e4 ) -- | % 37
  c2. ( \bar "||"
%  \once \override Score.RehearsalMark #'extra-offset = #'( 8.0 . 1.0 )
  b4 c2 ) | % 39
  
\mark \default %C
  r8^\markup { \musicglyph #"scripts.coda" }  g'8 -. g8 -. [ g8 -. ] g4 -- |
  r8 c8 -. c8 -. [ b8 -. ] c4 -- | % 41
  g4. g8 -. g8 ( [ f8 ) ] | % 42
  g8 ( [ f8 ) ] f4 ( e8 ) g16 ( [ f16 ] | % 43
  e16 [ g16 c16 e16 ] g16 [ e16 f16 d16 ] e16 [ c16 ) g16 ( f16 ] | % 44
  e16 [ g16 c16 e16 ] g16 [ e16 f16 d16 ] e8 ) [ g,16 ( f16 ) ] | % 45
  e16 ( [ g16 ) c16 e16 ] g16 ( [ e16 ) f16 ( d16 ) ] e16 ( [ c16 ) d16
  ( b16 ) ] | % 46
  \time 2/4  | % 46
  c16 _"poco rit..." ( [ g16 ) a16 ( g16 ) ] g16 ( [ f16 ) d16 b16 ]
  \bar "|."
 
    % \cadenzaOn will suppress the bar count and \stopStaff removes the staff lines.
    \cadenzaOn
      \stopStaff

      \override Staff.TimeSignature #'break-visibility = #end-of-line-invisible 
      \set Staff.explicitClefVisibility = #end-of-line-invisible 
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 
      \set Staff.printKeyCancellation = ##f 

%      \once \override TextScript.extra-offset = #'( 2 . -3.5 )
%      \once \override TextScript #'word-space = #1.5
%      \once \override TextScript #'X-offset = #8
      \once \override TextScript #'Y-offset = #-1
        | s1*0^\markup { D.S. al Coda } 

        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 1 {
          s4 s4 s4 s4 s4 s4 s4
          \bar "" }
        % Resume bar count and show staff lines again
        \break
     \startStaff
   \cadenzaOff

     % Coda on new line, use this:
     \once \override Score.RehearsalMark.font-size = #5
     \mark \markup { \musicglyph #"scripts.coda" }

   % The coda
   	\time 3/4
   	\override TextScript #'outside-staff-horizontal-padding = #5
  r8 r16 g'16 -> g8 -> [ g8 -> ] g4 -> | % 49
  r8 r16 g16 -> g8 -> [ g8 -> ] g8 -> [ g16 ( f16 ) ] |
  e16 ( [ g16 ) c16 e16 ] g16 ( [ e16 ) f16 ( d16 ) ] e16 ( [ c16 ) d16
  ( b16 ) ] | % 51
  \time 2/4  | % 51
  c16 _"poco rit..." ( [ g16 ) a16 ( g16 ) ] g16 ( [ f16 ) d16 b16 ] | % 52
  \time 3/4  | % 52
  c8. ^"Poco Maestoso" ( [ d16 ) ] e8 ( [ f8 ) ] g8 ( [ e8 ) ] | % 53
  \time 2/4  f16 -. [ g16 -. a8 -. ] b8 ( [ c8 ) ] c4 ( ^\fermata g'4
  ) ^\fermata \bar "|."


  
    }%end relative
    
    \header {
    	    piece = "Klinga mina Klockor"
    	    composer = \markup {\concat {"Arr. Olle J"\char#246"rnbrink"}}
    	}
  }%end score
