\version "2.22.1"
% When ready to include in collection: 1. Comment out top section.
% 				       2. Create include file of relative and
%					  header.
%#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c''' { 
    	    \key a \major \time 4/4 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-letters	    
    	    \mark \markup {"March Tempo"}
    	    
    R1*4 \bar "||"
    \mark \markup { \box { A } } a2 ~ _\f \times 2/3 {
      a8 ( [ g8 fis8 ) ]
    }
    \times 2/3  {
      e8 ( [ cis8 b8 ) ]
    }
    | % 6
    a2. r4 | % 7
    a'2 ~ \times 2/3 {
      a8 ( [ g8 fis8 ) ]
    }
    \times 2/3  {
      e8 ( [ cis8 b8 ) ]
    }
    | % 8
    a2. r4 | % 9
    a'2 ~ \times 2/3 {
      a8 ( [ fis8 e8 ) ]
    }
    \times 2/3  {
      c8 ( [ a8 fis8 ) ]
    }
    | \barNumberCheck #10
    d2. r4 | % 11
    a''2 ~ \times 2/3 {
      a8 ( [ g8 fis8 ) ]
    }
    \times 2/3  {
      e8 ( [ cis?8 b8 ) ]
    }
    | % 12
    a2. r4   | % 13
    R1*3 | % 16
    r2 r4 r8 c'8 ( \bar "||" |
    \mark \markup { \box { B } } cis?8
    [ e8 cis8 a8 ~ ] a2 ) | % 18
    r8 eis8 ( fis8 [ a8 ] c4
    b8. [ a16^> ) ] | % 19
    R1*2 | % 21
    r8 fis8 a8 [ b8 ~ ] b2 ~
    | % 22
    b8 [ eis,8 ( fis8 a8 ]
    c4 ) b8. [ a16 ] | % 23
    R1*2 | % 25
    gis8 ( [ b8 gis8 e8 ) ~
    ] e2 | % 26
    r8 bis'8 \( cis8. [ a16 ] 
    bis8. [ cis16 ] \times 2/3 {
      e,8 [ ( eis8 fis8 ) ] \)
    }
      | % 27
    a4 ^> r8 cis8 ^> d4 ^> 
    dis4 ^> | % 28
    e4^- d8 [ cis8 ^> ] r2 \bar "||"
    \mark \markup { \box { C } } r2 _\p fis,,,2 |
    \barNumberCheck #30
    f2 e2 | % 31
    r2 r4 r8 _\f b''8 ( | % 32
    dis,8 [ e8 ) _> _- ^> ] r4 r2 | % 33
    r2 f,4. ^- e8 ~ ^- | % 34
    e1 | % 35
    R1 | % 36
    r2 ^ "soli" r8 e'''8 [ _\f e8 c8 ]
    \bar "||"
    \mark \markup { \box { D } } e8 [ c8
    d8 e8 ~ ] e2   | % 38
    r8 d8 [ d8 dis8 ] e8 [
    d8 ] c4 | % 39
    b4 r4 r2 | \barNumberCheck #40
    r2 r4 d8 ^> [ b8 ( ] | % 41
    d8 [ b8 c8 d8 ~ ]
    d2 ) | % 42
    es8 ( [ d8 c8 a8 ]
    d4. ) c8 | % 43
    a2 b4. e8 ~ | % 44
    e2. c,8 ( [ cis8 ] \bar "||"
    \mark \markup { \box { E } } a4 ) ^> bis8 ( [
    cis8 ] a4 ) ^> bis8 ( [ 
    cis8 ]   | % 46
    a8 [ bis8 cis8 a8 ] 
    bis?8 [ cis8 ] e8 ) ^> r8 | % 47
    a1 ( | % 48
    e'4 ) ^> r4 r4 bis,8 ( [ cis8 ] | % 49
    b?4 ) a8 ( [ fis8 ] a4 ) ^-
    b8 ( [ c8 ] | \barNumberCheck #50
    b8 [ a8 ) fis8 _> bis8 ( ]
    cis8 [ e8 ] fis4 ) ^> | % 51
    a1 ( | % 52
    cis4 ) ^> r4 r8 e,8 ^- [ _\p e8 ^-
    e8 ^- ]   | % 53
    e8 ^- [ e8 ^- e8 ^- e8
    ^- ] e8 ^- [ e8 ^- e8 ^- 
    e8 ^- ] | % 54
    e8 [ e8 ^- e8 ^- e8 ^- ]
    es4 ( cis8 ) [ a8 ] | % 55
    R1 | % 56
    r2 r4 \times 2/3 {
      d8 ( [ b8 d8 ) ]
    }
    \bar "||"
    \mark \markup { \box { F } } cis'4. a8 ~
    a2 | % 58
    c8 [ b8 a8 fis8 ]
    b4. a8 | % 59
    fis8 [ e8 ~ ] e4. e,8 _\p
    \times 2/3 {
      fis8 ( [ a8 c8 ) ]
    }
    | \barNumberCheck #60
    \times 2/3  {
      b8 ( [ a8 fis8 ) ]
    }
    \times 2/3  {
      e8 ( [ fis8 e8 ) ]
    }
    fis8 [ a8 ~ ] a4 | % 61
    a'8 [ a8 ] a4 ^> a8 [
    a8 ] a4 ^>   | % 62
    a8 [ a8 ] a4 ^> a8 ( [
    e8 gis?8 a8 ) ^> ] | % 63
    R1*4 | % 67
    r2 e8 ( [ a8 e8 c8 ] | % 68
    cis?8 [ e8 ) ] \times 2/3 {
      e,8 ( [ fis8 a8 ) ~ ]
    }
    \times 2/3  {
      a8 ( [ a8 b8 ) ]
    }
    \times 2/3  {
      cis8 ( [ e8 fis8 ) ]
    }
    \bar "||"
    \mark \markup { \box { G } } a4 ^> r4 r2 |
    \barNumberCheck #70
    R1*5 | % 75
    c8 ^> [ cis8 ~ ] cis2. ~ | % 76
    cis4 r4 r2 | % 77
    R1 | % 78
    r4 r8 a8 \times 2/3 {
      cis8 ( ^> [ d8 a8 ) ]
    }
    cis8 [ d8 ] | % 79
    c8 [ cis8 ~ ] cis2. ~   |
    \barNumberCheck #80
    cis4 r4 r4 \times 2/3 {
      e,8 ( [ fis8 e8 ) ]
    }
    | % 81
    b'8.^> [ ( ais16 ~ ) ] ais4
    fis8. ( ^> [ eis16 ) ~ ] eis4 | % 82
    cis8. ( ^> [ c16 ) ~ ] c4 (
    b4 ) bes8. [ _\< a16 ~ ] | % 83
    a2 r2 -\! | % 84
    r2 r8 a'4. ^> _\ff \bar "||"
    \mark \markup { \box { H } } a4 ^> r4 r8 a4.
    | % 86
    a4 ^> r4 r8 a4. | % 87
    a4. a8 ^> r4 a4 ~ ^> | % 88
    a8. [ a16 ] r4 a4 ( ^- 
    ais8. [ b16 ) ^> ] | % 89
    R1 | \barNumberCheck #90
    r2 r8 a8 ^> [ ais8 ^> b8 ^> ]
      | % 91
    R1 | % 92
    r2 \times 2/3 {
      r8 ^\markup{ \teeny {3rd. Cl.} } f,8 ( [ 
      f8 ) ]
    }
    \times 2/3  {
      e8 ( [ es8 d8 ) ]
    }
    \bar "||"
    \mark \markup { \box { I } } e4. ^> _\pp f8 ~ ^>
    f4 _\< fis4 ~ ^> | % 94
    fis8 g4. ^> gis4 ^> -\! a4 ^> | % 95
    bes4. ^> b8 ^> ~  b4 _\< 
    c4 ~ | % 96
    c8 cis4. ^- -\! d4 dis4
    | % 97
    e4. ^> eis8 ( ^> eis4 ) 
    fis4 ~ | % 98
    fis8 g4. ^> gis4 ^> a4
    ^> | % 99
    ais8. [ b16 ^> ] r8 e,8 (
    g8. [ gis16 ) ] e4 ^> |
    \barNumberCheck #100
    cis8. ( [ d16 ] b4 ) ^> g8.
    ( [ gis16 ] e4 ) ^>   | % 101
    e16 ( _> [ f16 gis16 b16 ) ]
    f16 ( _> [ gis16 b16 d16 ) ]
    gis,?16 ( _> [ _\< b16 d16 e16 )
    ] b16 ( ^> [ d16 e16 f16
    ) ] -\! | % 102
    d16 ( ^> [ e16 f16 gis16
    ) ] e16 ( ^> [ f?16 gis16 
    b16 ) ] e2^^ \startTrillSpan | % 103
    c8  \stopTrillSpan [ cis8 ^> ~ ] cis2. ~ | % 104
    cis1 ~ | % 105
    cis1 ~ | % 106
    cis4 cis4 ^> r2
    \bar "|."
  
  }%end relative
    
    \header {
    	    piece = "St. Louis Blues"
    	    composer = "W. C. Handy"
    	}
    \layout {ragged-last = ##t
    	}
    	
  }%end score
