\version "2.18.0"
% When ready to include in collection: 1. Comment out version, paper, score 
%					  and book.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Kong Fredrick Honnormarch    
    \relative c'' { 
    	    \key c \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	     
    	    R1*2      | % 1
    	    c'4.->\ff (b16 c) c4.-> (d16 c)       | % 3
    	    b4->  b8 b b4 r      | % 4
    	    R1*2      | % 5
    	    e4.-> (f16 e) d4.-> (e16 d) | % 7
    	    c4->  r r2      | % 8
    	    
    	    \repeat volta 2 {
    	    r r4 e,8\f (g      | % 9
    	    c4) r r2      | % 10
    	    r r4 g8 (c      | % 11
    	    e4) r8 \tuplet 3/2{c16 c c } \tuplet 3/2{c4 c c }      | % 12
    	    b4 r8 b b4 b      | % 13
    	    b b b b
    	    c-> b8 (d) c4 a      | % 14
    	    g r r2   | % 15
    	    r r4 e8 (g) | % 16
    	    c4 r r2     | % 17
    	    r r4 g8 (c      | % 19
    	    e4) r8 \tuplet 3/2{c16 c c  } \tuplet 3/2{c4 c c  }      | % 20
    	    c4 r8 a a4 c      | % 21
    	    b  d d r8 cis16 (d) | % 22
    	    c!2 c4.  a16( c)  | % 23
    } % end of repeat except alternate endings
    	   \alternative {        
    	   	{b4->  r r2 | } % 24 close alt1
    	   	{b4->  r r2 | } % 25
    } %close alternatives
    
    \key es \major
    
    \repeat volta 2 { %startrep  
    	    aes2->  aes->       | % 26
    	    aes2.->  aes4->       | % 27
    	    g->  bes ees c      | % 28
    	    bes r r2      | % 29
    	    r aes8-.\f aes-.  aes-.  aes-.       | % 30
    	    aes4-.  r r2      | % 31
    	    r g8-.  g-.  g-.  g-.       | % 32
    	    g4-.  r r2     | % 33
    	    aes->  aes->       | % 34
    	    aes2.->\ff  aes4->       | % 35
    	    g bes ees c      | % 36
    	    bes4 g( f ees)      | % 37
    } % end of repeat except alternate endings
    	    \alternative{
    	    	{c'2-> c->      | % 38
    	    	bes4-> g8-.  c-.  bes  (g)  ees-.  c-. | % 39
    	    	bes'4-. r d2->\trill | % 40
    	    	\acciaccatura {c16 d} g4 r r2      | % 41
    	    	}
    	    	{ d,4 r8 b' b4 b      | % 42
    	    	b b g b      | % 43
    	    	c gis8 (a) c4 c->	| % 44
    	    	b->  r r2 \bar "||"     | % 45
    	    	}
    	    } %close alternatives
    	    
    \key c \major 
    r2 r4 e,8( g      | % 46
    c4) r r2      | % 47
    r r4 g8( c      | % 48
    e4) r8 \tuplet 3/2{c16 c c  } \tuplet 3/2{c4 c c  }      | % 49
    b4 r8 b b4 b      | % 50
    b b b b      | % 51
    c-> b8 (d) c4 a      | % 52
    g r r2      | % 53
    r r4 e8( g      | % 54
    c4) r r2      | % 55
    r r4 g8( c      | % 56
    e4) r8 \tuplet 3/2{c16 c c  } \tuplet 3/2{c4 g c  }      | % 57
    c2->  c->       | % 58
    c4->  r r2      | % 59
    r f,->       | % 60
    e4 e8 e e4 r  \bar "||"    | % 61

    \key f \major 
    \time 2/2 
    a4-> \ff ^\markup {\upright  "TRIO"} r r2      | % 62
    R1*3      | % 63 
    \bar "||"     | % 65
    a, \p      | % 66
    c2 d      | % 67
    a4.( g8 f4. g8)      | % 68
    a1      | % 69
    a2.( c4)      | % 70
    d( f e4. d8)      | % 71
    bes4 g8( c e4) c8( e      | % 72
    g4) r r2      | % 73
    bes,1      | % 74
    d2( e)      | % 75
    bes4._( a8 g4. a8)      | % 76
    bes1      | % 77
    c,2.( d4)      | % 78
    e( f g4. gis8)      | % 79
    a2.( d4)      | % 80
    c( bes g4. gis8)      | % 81
    a1      | % 82
    c2( d)      | % 83
    a4.( g8 f4. g8)      | % 84
    a1      | % 85
    a2.( c4)      | % 86
    d( f e4. d8)      | % 87
    a'4 e,8\< (a cis4) a8( c      | % 88
    e4) r bes'4.-> ( \f a8)      | % 89
    g2.( f4)      | % 90
    des2( f)      | % 91
    c4 a8( c f4) c8( f      | % 92
    a4) a,( \p e'4. d8)      | % 93
    c2.( b4)      | % 94
    bes!2 e,      | % 95
    f4 g8 (a bes c d e | % 96
    f4) r r2 \bar "||"      | % 97
    
    d'2->  \ff cis->       | % 98
    d4  (c!8 bes a4) r8 d16 (e)      | % 99
    d4 cis a d      | % 100
    cis cis8 cis cis4 r      | % 101
    f2->  e->       | % 102
    c4 bes aes r      | % 103
    f' e c f      | % 104
    e e8 e e4 r      | % 105
    r des8 des des4 r      | % 106
    r c8 c c4 r      | % 107
    r aes->  aes->  aes->     | % 108
    g4->  r r2 \bar "||"     | % 109
    
    a,1 \ff ^\markup {\upright  "Grandioso"}      | % 110
    c2( d)      | % 111
    a4.( g8 f4. g8)      | % 112
    a1      | % 113
    a2.( c4)      | % 114
    d( f e4. d8)      | % 115
    bes1~      | % 116
    bes2. r4      | % 117
    bes1      | % 118
    d2( e)      | % 119
    bes4.( a8 g4. a8)      | % 120
    bes1      | % 121
    c,2.( d4)      | % 122
    e( f g4. gis8)      | % 123
    a2.( d4)      | % 124
    c( bes g4. gis8)      | % 125
    a1      | % 126
    c2( d)      | % 127
    a4.( g8 f4. g8)      | % 128
    a1      | % 129
    a2.( c4)      | % 130
    d( f e4. d8)      | % 131
    a'1~      | % 132
    a4 r bes4.-> ( a8)      | % 133
    g2.( f4)      | % 134
    des2( f)      | % 135
    c1~      | % 136
    c4 a( e'4. d8)      | % 137
    c2.( b4)      | % 138
    bes2 e,      | % 139
    f4 g8 (a bes c d e | % 140
    f4) r a->\fz r \bar "|."
    
    }%end relative
    \header {
    	    piece = \markup {\concat {"Kong Fredrick den 9'e Honn" \char #246 "rmarch"}}
    	    composer = "Kai Neilsen"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
