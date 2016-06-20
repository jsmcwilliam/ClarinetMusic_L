\version "2.18.0"
% When ready to include in collection: 1. Comment out version, paper, score 
%					  and book.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Kong Fredrick Honnormarch    
    \relative c'' { 
    	    \key c \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    
    \repeat volta 2 {  
    	    R1*2      | % 1
    	    g'2->  \ff a->       | % 3
    	    g4->  g8 g g4 r      | % 4
    	    R1*2      | % 5
    	    c2->  b->       | % 7
    	    c4->  r r2      | % 8
    	    r r4 c,8( \f e      | % 9
    	    g4) r r2      | % 10
    	    r r4 e8( g      | % 11
    	    c4) r8 \tuplet 3/2{g16 g g  } \tuplet 3/2{g4 g g  }      | % 12
    	    f4 r8 f f4 f      | % 13
    	    f f f f      | % 14
    	    e->  r d c      | % 15
    	    b r r2      | % 16
    	    r r4 c8( e      | % 17
    	    g4) r r2      | % 18
    	    r r4 e8( g      | % 19
    	    c4) r8 \tuplet 3/2{g16 g g  } \tuplet 3/2{g4 g g  }      | % 20
    	    fis4 r8 fis fis4 a      | % 21
    	    g b g r | % 22
    	    g2->  fis4.->  e16( f)  | % 23
    } % end of repeat except alternate endings
    	   \alternative {        
    	   	{g4->  r r2 | } % 24 close alt1
    	   	{g4->  r r2 | } % 25
    } %close alternatives
    
    \key es \major
    
    \repeat volta 2 { %startrep  
    	    f2->  f->       | % 26
    	    f2.->  f4->       | % 27
    	    ees->  g g g      | % 28
    	    g r r2      | % 29
    	    r f8-.  \f f-.  f-.  f-.       | % 30
    	    f4-.  r r2      | % 31
    	    r bes8-.  bes-.  bes-.  bes-.       | % 32
    	    bes4-.  r r2     | % 33
    	    f->  f->       | % 34
    	    f2.->\ff  f4->       | % 35
    	    ees->  g g g      | % 36
    	    g4 g( f ees)      | % 37
    } % end of repeat except alternate endings
    	    \alternative{
    	    	{aes2 a      | % 38
    	    	bes4 g8-.  c-.  bes-.  g-.  ees-.  c-.       | % 39
    	    	bes4 r aes'2-> | % 40
    	    	 g4 r r2      | % 41
    	    	}
    	    	{d4 r8 g g4 g      | % 42
    	    	g g d g      | % 43
    	    	fis r fis a->	| % 44
    	    	g4->  r r2 \bar "||"     | % 45
    	    	}
    	    } %close alternatives
    	    
    \key c \major 
    r2 r4 c,8( e      | % 46
    g4) r r2      | % 47
    r r4 e8( g      | % 48
    c4) r8 \tuplet 3/2{g16 g g  } \tuplet 3/2{g4 g g  }      | % 49
    f4 r8 f f4 f      | % 50
    f f f f      | % 51
    e->  r d c      | % 52
    b r r2      | % 53
    r r4 c8( e      | % 54
    g4) r r2      | % 55
    r r4 e8( g      | % 56
    c4) r8 \tuplet 3/2{g16 g g  } \tuplet 3/2{g4 e g  }      | % 57
    a2->  a->       | % 58
    g4->  r r2      | % 59
    r g->       | % 60
    g4 g8 g g4 r  \bar "||"    | % 61
    %barkeysig: 
    \key f \major 
    %bartimesig: 
    \time 2/2 
    \mark \markup {\bold  "TRIO"}
    c4 \ff r r2      | % 62
    R1*3      | % 63 
    \bar "||"     | % 65
    a, \p      | % 66
    c2 d      | % 67
    a4.( g8 f4. g8)      | % 68
    a1      | % 69
    a2.( c4)      | % 70
    d( f e4. d8)      | % 71
    bes4 e,8( g c4) g8( c      | % 72
    e4) r r2      | % 73
    bes1      | % 74
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
    cis4 cis,8( \< e \! a4) e8( a      | % 88
    cis4) r bes'4.-> ( \f a8)      | % 89
    g2.( f4)      | % 90
    des2( f)      | % 91
    c4 f,8( a c4) a8( c      | % 92
    f4) a,( \p e'4. d8)      | % 93
    c2.( b4)      | % 94
    bes2 e,      | % 95
    f1~    | % 96
    f4 r r2 \bar "||"      | % 97
    a'->  \ff g->       | % 98
    a4->  g->  f->  r      | % 99
    a a a a      | % 100
    a a8 a a4 r      | % 101
    c2->  bes->       | % 102
    aes4 g ees r      | % 103
    c' c c c      | % 104
    c c8 c c4 r      | % 105
    r bes8 bes bes4 r      | % 106
    r aes8 aes aes4 r      | % 107
    r f->  f->  f->     | % 108
    e4->  r r2 \bar "||"     | % 109
    a,1 \f ^\markup {\upright  "Grandioso"}      | % 110
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
    f1~     | % 140
    f4 r \grace{\stemUp c'16(  [ d e  ]  } \stemNeutral f4-> ) r \bar "|."
    
    }%end relative
    \header {
    	    piece = "Kong Fredrick Honnormarch"
    	    composer = "Kai Neilsen"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
