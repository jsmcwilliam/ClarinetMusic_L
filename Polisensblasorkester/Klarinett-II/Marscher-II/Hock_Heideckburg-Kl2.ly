\version "2.16.0"
% When ready to include in collection: 1. Comment paper.
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

    % Svenska Polisens Marscher: 1. Hock Heideckburg    
    \relative c'' { 
    	    \key f \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    \partial 4*1
    r4 R1*5  | % 
    c4\ff a f d      | % 6
    c c'8 c c4 c      | % 7
    c \mf \times 2/3{c8( d c  } b4 c)      | % 8
    
    \repeat volta 2 {
    	    d r c2~      | % 9
    	    c4 c c4. c8
    	    a1~      | % 11
    	    a4 \times 2/3{c8( d c  } b4 c)      | % 12
    	    d r c2~      | % 13
    	    c4 c c4. c8      | % 14
    	    bes1~      | % 15
    	    bes4 \times 2/3{d8( e d  } cis4 d)      | % 16
    	    e r d2~      | % 17
    	    d4 bes bes4. bes8      | % 18
    	    bes1~      | % 19
    	    bes4 r bes2 \<      | % 20
    	    bes e      | % 21
    	    e e \!      | % 22
    	    f1~ \f      | % 23
    	    f4 \mf \times 2/3{c8( d c  } b4 c)      | % 24
    	    d r c2~      | % 25
    	    c4 c c4. c8      | % 26
    	    a1~      | % 27
    	    a4 \times 2/3{c8( d c  } b4 c)      | % 28
    	    d r c2~      | % 29
    	    c4 f e4. ees8      | % 30
    	    d1~      | % 31
    	    d4 r d2 \<      | % 32
    	    d f      | % 33
    	    e d \!      | % 34
    	    c1~      | % 35
    	    c4 c c4. a8      | % 36
    	    bes4 r e2 \>      | % 37
    	    e e      | % 38
    	    c1~ \!      | % 39
    } % end repeat
    \alternative {
    	    {c4 \mf \times 2/3{c8( d c  } b4 c) |} %40
    	    {c\repeatTie  r r2 |}	 %41
    } % end alternatives
    
    \repeat volta 2 { %startrep 
    	    r4 \ff g' r g | % 42
    	    r4 g r g	| % 43
    	    r4 f8 f f4 f      | % 44
    	    f f f f      | % 45
    	    r a r a      | % 46
    	    r a r a      | % 47
    	    r g8 g g4 g      | % 48
    } % end repeat
    \alternative {
    	    {g r d4. \mf des8      | % 49
    	    c4 e c e		| %50
    	    ces4 e bes e      | % 51
    	    f8 f f f f4 c      | % 52
    	    f a, e'4. d8      | % 53
    	    e e e e e4 e      | % 54
    	    e bes e4. d8      | % 55
    	    a' a a a a4 f      | % 56
    	    c r r2      | % 57
    	    }
    	    {g'4 r d4. \mf d8      | % 58
    	    bes4 bes f bes 	| %59
    	    bes4 f d' bes      | % 60
    	    f'8 \< f f f f4 c      | % 61
    	    c f, a c \!      | % 62
    	    e1 \f      | % 63
    	    bes      | % 64
    	    a4 d8 c b c d e      | % 65
    	    f4 f8 f f4 r      | % 66
   	    \bar "||" }  	    
    } % end alternatives
    
    \time 2/2 \key bes \major
    \grace{\stemUp f,16^\markup {\upright  "TRIO"} [( g a ) ]  } 
    \stemNeutral bes4_\markup{\dynamic ffz} r4 r2      | % 67
    R1^\markup{\normalsize\number 1}	 | % 68
    
    \repeat volta 2 { %startrep
    	    r4 r8 f'( \pp e f g f)      | % 69
    	    f4 f d bes    | % 70
    	    r4 r8 f'( e f g f)      | % 71
    	    d4 f bes, f'      | % 72
    	    r r8 g,( bes ees g ees)      | % 73
    	    ees4 bes ees ees      | % 74
    	    r r8 bes( d f bes, d)      | % 75
    	    f4 f d f      | % 76
    	    r \times 2/3{f8( g f  } c4 a)      | % 77
    	    ees' f c a      | % 78
    	    r \times 2/3{d8( ees d  } bes4 d)      | % 79
    	    d d bes d      | % 80
    	    c8 r r4 g8( a bes b)      | % 81
    	    c( cis e d c bes a g)      | % 82
    	    f-> ( e f g) f-> ( \< e f g)      | % 83
    	    f-> ( e f g) f-> ( e f g) \!      | % 84
    	    r4 r8 f'( \p e f g f)      | % 85
    	    f4 f d bes      | % 86
    	    r r8 f'( e f g f)      | % 87
    	    d4 f bes, f'      | % 88
    	    r r8 g,( bes ees g ees)      | % 89
    	    ees4 bes ees ees      | % 90
    	    r r8 bes( d f bes, d)      | % 91
    	    f4 f d f      | % 92
    	    r \times 2/3{bes,8( c bes  } bes4 bes)      | % 93
    	    g' bes, des bes      | % 94
    	    r \times 2/3{bes8( c bes  } d4 bes)      | % 95
    	    f' bes, d bes      | % 96
    	    r \times 2/3{f8( g f  } a4 ees')      | % 97
    	    d a f' ees      | % 98    
    } % end repeat
    \alternative{
    	    {d r ees2->  \mf      | % 99
    	    d->  c->	|} % 100
    	    {d4 \times 2/3{f,8( g f)  } d'4 d      | % 101
    	    <<{\set fontSize = #-4  % make note heads smaller
    	       r4^\markup {\bold {Tr.}} f8 f f4 f  | % 102
    	       \unset fontSize } % return to default size
    	    \\
    		{d4 r r2 \bar "||"} >>
    	    }
    } %close alternatives
    
    ees4 f d f      | % 103
    c f e8( f g f)  | % 104
    d4 f c f      | % 105
    bes, d c8( bes a bes)      | % 106
    a4. ees'8 ees4 ees      | % 107
    ees2 bes8( a gis a)      | % 108
    g4. d'8 d4 d      | % 109
    d4. f8 e( f g f)      | % 110
    ees4 f d f      | % 111
    c f e8( f g f)      | % 112
    d4 f c f      | % 113
    bes, d bes4. bes8      | % 114
    bes g d g bes4 _\markup{"cresc."} bes      | % 115
    bes bes c cis      | % 116
    d1~      | % 117
    d4 d d d      | % 118
    d8 bes g bes d4 g      | % 119
    g g g e      | % 120
    a1~      | % 121
    a4 r r2      | % 122
    \set countPercentRepeats = ##t
    \repeat percent 7
    {\times 2/3{ees4 \ff ees ees  }  \times 2/3{ees ees ees  }      |} % 129
    \mark "Rall...."
    \repeat percent 4
    {\times 2/3{ees4 \ff ees ees  }  \times 2/3{ees ees ees  }      |} % 133
    d1~      | % 134
    d2 ees4( e)      | % 135
    f1      | % 136
    d2 bes      | % 137
    bes'1      | % 138
    a2 g      | % 139
    f1~      | % 140
    f4 r g2      | % 141
    c,1~      | % 142
    c2 f      | % 142
    bes,1~      | % 144
    bes2 d      | % 145
    c bes'      | % 146
    a g      | % 147
    f c->  \<      | % 148
    c->  c->  \!      | % 149
    \tempo "a tempo" 2 = 71  d1~ \fff      | % 150
    d2 ees4( e)      | % 151
    f1      | % 152
    d2 bes      | % 153
    bes'1      | % 154
    a2 g      | % 155
    f1~      | % 156
    f2 fis      | % 157
    g1      | % 158
    a2 bes      | % 159
    bes1      | % 160
    d,2 a'4. g8      | % 161
    f1      | % 162
    d2. c4      | % 163
    bes d8 d d4 d      | % 164
    d r r2 \bar "|."    
    
    }%end relative
    \header {
    	    piece = "Hock Heideckburg"
    	    composer = "R. Herzer Op10"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
