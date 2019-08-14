\version "2.18.2"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Hock Heideckburg    
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    \partial 4 r4
    R1*5  |  
    c'4\fff a f d      | % 6
    c c'8 c c4 c      | % 7
    c \mf\< \times 2/3{c8( d c  } b4 c\!)      | % 8
    
    \repeat volta 2 {
    	    a r a2~      | % 9
    	    a4 a f4. a8
    	    c,1~      | % 11
    	    c4 \times 2/3{c'8( d c  } b4 c)      | % 12
    	    a r a2~      | % 13
    	    a4 a f4. d8      | % 14
    	    e1~      | % 15
    	    e4 \times 2/3{d'8( e d  } cis4 d)      | % 16
    	    bes r bes2~      | % 17
    	    bes4 bes g4. bes8      | % 18
    	    e,1~      | % 19
    	    e4 r d2      | % 20
    	    c\< c'->      | % 21
    	    c-> bes \!      | % 22
    	    a1~ \f      | % 23
    	    a4 \mf \times 2/3{c8( d c  } b4 c)      | % 24
    	    a r a2~      | % 25
    	    a4 a f4. a8      | % 26
    	    c,1~      | % 27
    	    c4 \times 2/3{c'8( d c  } b4 c)      | % 28
    	    a r a2~      | % 29
    	    a4 a a4. a8      | % 30
    	    bes1~      | % 31
    	    bes4 r bes2 \<      | % 32
    	    bes d      | % 33
    	    c bes \!      | % 34
    	    a1~      | % 35
    	    a4 a f4. d8      | % 36
    	    c4 r a'2 \>      | % 37
    	    a g      | % 38
    	    f1~ \!      | % 39
    } % end repeat
    \alternative {
    	    {f4 \mf \times 2/3{c'8( d c  } b4 c) |} %40
    	    {f,\repeatTie  r r2 |}	 %41
    } % end alternatives
    
    \repeat volta 2 { %startrep 
    	    r4 \ff bes r bes | % 42
    	    r4 bes r bes	| % 43
    	    r4 a8 a a4 a      | % 44
    	    a a a a      | % 45
    	    r c r c      | % 46
    	    r c r c      | % 47
    	    r bes8 bes bes4 bes      | % 48
    } % end repeat
    \alternative {
    	    {bes r d4. \mf des8      | % 49
    	    c4 e, c' e,		| %50
    	    ces'4 e, bes' e,      | % 51
    	    a8 a a a a4 c      | % 52
    	    a a e'4. d8      | % 53
    	    c c c c c4 bes      | % 54
    	    e, bes' e4. d8      | % 55
    	    c c c c c4 a      | % 56
    	    f r r2      | % 57
    	    }
    	    {bes4 r d,4. \mf d8      | % 58
    	    d4 d bes d 	| %59
    	    e4 c f d      | % 60
    	    a'8 \< a a a a4 f      | % 61
    	    c c f a \!      | % 62
    	    c1 \f      | % 63
    	    e,      | % 64
    	    f4 d8 c b c d e      | % 65
    	    f4 a8 a a4 r      | % 66
    	    \bar "||"
    	    }
    } % end alternatives
    
    \time 2/2 \key bes \major
    \mark \markup {\bold  "TRIO"}
    \grace{\stemUp f16 [( g a ) ]  } 
    \stemNeutral bes4_\markup{\dynamic ffz} r4 r2      | % 67
    R1^\markup{\normalsize\number 1}	 | % 68
    
    \repeat volta 2 { %startrep
    	    r4 r8 f( \pp e f g f)      | % 69
    	    bes4 f bes f    | % 70
    	    r4 r8 f( e f g f)      | % 71
    	    bes4 f d f      | % 72
    	    r r8 g,( bes ees g bes)      | % 73
    	    a4 bes g g      | % 74
    	    r r8 bes, ( d f bes d)      | % 75
    	    d4 f, bes f      | % 76
    	    r \times 2/3{f8( g f)  } a4 f      | % 77
    	    c' f, a f      | % 78
    	    r \times 2/3{d8( ees d)  } g4 d      | % 79
    	    bes' d, g d      | % 80
    	    c8 (d e f g8 a bes b)      | % 81
    	    c( cis e d c bes! a g)      | % 82
    	    f-> ( e f g) f->\< ( e f g)      | % 83
    	    f-> ( e f g) f-> ( e f g) \!      | % 84
    	    r4 r8 f( \p e f g f)      | % 85
    	    bes4 f bes f      | % 86
    	    r r8 f( e f g f)      | % 87
    	    bes4 f d f      | % 88
    	    r r8 g,( bes ees g bes)      | % 89
    	    a4 bes g g      | % 90
    	    r r8 bes, ( d f bes d)      | % 91
    	    d4 f, bes fis      | % 92
    	    r \times 2/3{bes,8( c bes)  } ees4 bes      | % 93
    	    bes' bes, g' bes,      | % 94
    	    r \times 2/3{bes'8( c bes)  } bes4 bes      | % 95
    	    d bes bes bes      | % 96
    	    r \times 2/3{f8( g f)  } f4 f      | % 97
    	    f f a f      | % 98    
    } % end repeat
    \alternative{
    	    {bes f,\mf f' f,        | % 99
    	     f' f, f' f,	|} % 100
    	    {bes'4 \times 2/3{f8( g f)  } bes4 f |bes   % 101
    	    	    
    	    <<{\set fontSize = #-4  % make note heads smaller
    	      f8^\markup {\bold {Tr.}}  f f4 f  | % 102
    	       \unset fontSize } % return to default size
    	    \\
    		{r4\mf r2 \bar "||"} >>
    	    }
    } %close alternatives
    
    c'4 f, bes f      | % 103
    a f e8( f g f)  | % 104
    bes4 f a f      | % 105
    bes f c'8( bes a bes)      | % 106
    a4.-> a8 a4 aes      | % 107
    g2 bes8( a gis a)      | % 108
    g!4.-> g8 g4 ges      | % 109
    f4. f8 e( f g f)      | % 110
    c'4 f, bes f      | % 111
    a f e8( f g f)      | % 112
    bes4 f a f      | % 113
    bes f bes4. bes8      | % 114
    bes g d g bes4 _\markup{"cresc."} bes      | % 115
    bes bes c cis      | % 116
    d1~      | % 117
    d4 d d d      | % 118
    d8 bes g bes d4 bes      | % 119
    bes bes bes bes      | % 120
    c1~      | % 121
    c4 r r2      | % 122
    \set countPercentRepeats = ##t
    \repeat percent 9
    {\times 2/3{c4\ff  c c  } \times 2/3{c c c  }} % 129
    \repeat percent 3
    {\times 2/3{c4^\markup {Rall.....}  c c  } \times 2/3{c c c  }}
    \bar "||"
    r4^\markup {a tempo} r8 f,\ff e (f g f)     | % 134
    bes4 f bes4 bes | % 135
    r r8 f (e f g f) | % 136
    bes4 d, f d | % 137
    r r8 g, (bes ees g bes) | % 138
    a4 f g bes, | % 139
    r r8 bes (d f bes d) | % 140
    bes4 f bes f      | % 141
    r \times 2/3{f8 (g f)} a4 f | % 142
    c' f, a f      | % 142
    r \times 2/3{d8 (ees d)} g4 d     | % 144
    bes' d, g d | % 145
    c8 (d e f g a bes b)  | % 146
    c (cis e d c bes! a g) | % 147
    f-> (e f g) f2->\<      | % 148
    e->  ees->  \!      | % 149
    r4 r8 f\ff (e f g f)      | % 150
    bes4 f bes bes | % 151
    r r8 f (e f g f) | % 152
    bes4 d, f d | % 153
    r r8 g, (bes ees g bes) | % 154
    a4 f g bes, | % 155
    r r8 bes (d f bes d) | % 156
    bes4 f bes bes | % 157
    r \times 2/3{bes,8 (c bes)} ees4 bes | % 158
    bes'4 a des bes | % 159
    r \times 2/3{bes8 (c bes)} bes4 bes | % 160
    d bes f bes | % 161
    r \times 2/3{f8 (g f)} c'4 f, | % 162
    f f a a | % 163
    bes bes8 bes bes4 bes      | % 164
    bes r r2 \bar "|."    
    
    }%end relative
    \header {
    	    piece = "Hock Heideckburg"
    	    composer = "R. Herzer Op10"
    	}
  }%end score
