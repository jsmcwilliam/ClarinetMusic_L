\version "2.18.0"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Roslagsvar    
    \relative c''' { 
    	    \key d \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \override DynamicLineSpanner #'staff-padding = #2
    	    \set Score.explicitKeySignatureVisibility = #begin-of-line-visible

    r2 a2~ \mf | %1
    a2 \times 2/3 {g8 \> ( [ f8 es8 ] cis8 [ c8 bes8 ]} | % 2
    a1 \! \p ) ~ | % 3
    a2 _"dim." \times 2/3 {g8 ( [ fis8 es8 ] cis8 [ c8 bes8 ]} | % 4
    a1 ^"morendo" ) ~ | % 5
    a1 \bar "||" | %6
    
    \mark \markup { \musicglyph #"scripts.segno" }
    \acciaccatura { b''8 ( } a4 \p ) -. fis4 -. d'2 | % 7
    cis4 -. e,4 -. e8 -. [ e8 -. ] e4 -. | % 8
    g4 -. e4 -. cis'4 -. e,4 -. | %9
    d'4 -. fis,4 -. fis8 -. [ fis8 -. ] fis4 -. | % 10
    \acciaccatura { b8 ( } a4 ) -. fis4 -. d'2  | % 11
    cis4 -. e,4 -. e8 -. [ e8 -. ] e4 -. | % 12
    g4 -. e4 -. cis'4 -. e,4 -. | % 13
    d'8 -. [ d8 -. d8 -. d8 -. ] d4 -. r4 | % 14
    
\mark \default %A
    r2 d,8 ( [ fis8 a8 d8 ] | % 15
    cis8 ) r8 r4 r2 | % 16
    r2 e,8 ( [ g8 cis8 e8 ] | % 17
    d8 ) r8 r4 r2 | % 18
    r2 d,8 ( [ fis8 a8 d8 ] | %19
    cis8 ) r8 r4 r2 | % 20
    r2 cis,8 ( [ e8 g8 cis8 ] | % 21
    d8 ) r8 b8 -. r8 d8 -. r8 r4 | % 22
    
\mark \default %B
    fis,8 \mf -> [ e8 -. ] d8 -. r8 d8 -> [ cis8 -. ] b8 -. r8 | % 23
    a'4 -. g4 -. \acciaccatura { a8 ( } g8 ) -. [ fis8 -. ] g4 -. | % 24
    e8 \mp ( [ dis8 ) e8 -. g8 -. ] b4 a4 | % 25
    fis8 ( [ cis8 ) d8 -. fis8 -. ] b4 a4 | % 26
    fis8 \mf -> [ e8 -. ] d8 -. r8 d8 -> [ cis8 -. ] b8 -. r8 | % 27
    a'4 -. g4 -. \acciaccatura { a8 ( } g8 ) -. [ fis8 -. ] g4 -.| % 28
    e8 \mp ( [ dis8 ) e8 -. g8 -. ] b4 a4 | %29
    d8 -. [ d8 -. d8 -. d8 -. ] d4 -. r4 \bar "||" | %30
    
\mark \default %C
    fis,8 \f -> [ e8 -. ] d8 -. r8 d8 -> [ cis8 -. ] b8 -. r8 | % 31
    a'4 -. g4 -. \acciaccatura { a8 ( } g8 ) -. [ fis8 -. ] g4 -. | % 32
    e8 \mf ( [ dis8 ) e8 -. g8 -. ] b4 a4 | % 33
    fis8 ( [ cis8 ) d8 -. fis8 -. ] b4 a4 | % 34
    fis8 \f -> [ e8 -. ] d8 -. r8 d8 -> [ cis8 -. ] b8 -. r8 | % 35
    a'4 -. g4 -. \acciaccatura { a8 ( } g8 ) -. [ fis8 -. ] g4 -. | % 36
    e8 ( [ dis8 ) e8 -. g8 -. ] b4 a4 | % 37
    d4 e4 e2 \bar "||" | %38
    
\mark \default %D
    \acciaccatura { b8 ( } a4 ) -. fis4 -. d'2 -. | %39
    cis4 -. e,4 -. e8 -. [ e8 -. ] e4 -. | % 40
    g4 -. e4 -. cis'4 -. e,4 -. | % 41
    d'4 -. fis,4 -. fis8 -. [ fis8 -. ] fis4 -. | % 42
    R1*3 \bar "||" | %43
    \mark \markup { \musicglyph #"scripts.coda" } \mark \markup {
    \musicglyph #"scripts.coda"}
    r2 a2 \mf ~ | % 46
    a2 \times 2/3 {g8 \> ( [ f8 es8 ] cis8 [ c8 bes8 ]} | % 47
    a1 \! \p ) ~ | % 48
    a2 \times 2/3 {g8 ( [ fis8 es8 ] cis8 [ c8 bes8 ]} | %49
    
\mark \default %E
    \key f \major
    a2 ) d2 ~ | % 50
    d1 | % 51
    d2 ( e2 ) | % 52
    a,2 ( d4 bes4 ) | % 53
    c1 | % 54
    f1 ( | % 55
    g2 ) bes,2 | % 56
    a2 ( a'2 ) \bar "||" | %57
    
\mark \default %F
    a1 \pp | % 58
    bes2 ( a2 ) | %59
    g2 ( d'2 ) | % 60
    c4 ( bes4 a4 g4 ) | % 61
    fis2 es2 | % 62
    d2 ( e2 ) | % 63
    a,2 ( b4 cis4 | % 64
    d2 ) ~ d4 _"rit..." r4 \bar "|." | %65
    R1*3 | % 66

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
   \override TextScript #'outside-staff-horizontal-padding = #5
   r2  bes'16 \mf ^"accel." ( [ c16 d16 \< e16 ] f16 [ g16 a16 bes16 ) ] | %69
   c8 \! \f ^"Con Brio" -. [ a8 -. f8 -. a8 -. ] c8 -. [ a8 -. f8 -. a8-. ] | % 70
   c4 g4 g8 -. [ g8 -. ] g4 -. | % 71
   bes8 -. [ g8 -. e8 -. g8 -. ] bes8 -. [ g8 -. e8 -. g8 -. ] | % 72
   c4 a4 a8 -. [ a8 -. ] a4 -. | % 73
   c8 -. [ a8 -. f8 -. a8 -. ] c8 -. [ a8 -. f8 -. a8 -. ] | % 74
   c4 g4 g8 -. [ g8 -. ] g4 -. | % 75
   bes8 -. [ g8 -. e8 -. g8 -. ] bes8 -. [ g8 -. e8 -. g8 -. ] | % 76
   f4 r4 bes,16 ( [ c16 d16 e16 ] f16 [ g16 a16 bes16 ) ] | % 77
   a4 \f -. f4 -. c'2 | % 78
   bes4 -. e,4 -. e8 -. [ e8 -. ] e4 -. | %79
   g4 -. e4 -. bes'4 -. e,4 -. | % 80
   c'4 -. f,4 -. f8 -. [ f8 -. ] f4 -. | % 81
   \acciaccatura { d8 ( } c4 ) -. a4 -. f'2 | % 82
   e4 -. g,4 -. g8 -. [ g8 -. ] g4 -. | % 83
   bes4 -. g4 -. e'4 -. g,4 -. | % 84
   f'8 -. [ f8 -. f8 -. f8 -. ] f4 -. r4 \bar "|." | %85

    }%end relative
    
    \header {
    	    piece = \markup {\concat{"Roslagsv"\char#229"r"}}
    	    composer = \markup {\concat {"Hugo Alfv"\char#233"n"}}
    	}
  }%end score
