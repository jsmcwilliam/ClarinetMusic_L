\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
%Comment out from here
%{
#(set-default-paper-size "a4" 'Portrait)
#(set-global-staff-size 15) % set staff-size when ready to print

OneBR = R1^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

%...to here
%}
  \score {
  	  
    % Svenska Polisens Marscher: 1. Svenska Flygarmarsch    
    \relative c'' { 
    	    \key f \major \time 2/2 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \set Staff.instrumentName = #""
    	    \set Staff.shortInstrumentName = #""
    	    \clef treble
    a'4. \f a8 bes2      | % 1
    g4. g8 a2      | % 2
    f4 g e f       | % 3
    d a'\p (g f)      | % 4
    
    \repeat volta 2 { %startrep
    	    e4. f8 g2~      | % 5
    	    g4 g (f e)      | % 6
    	    f4. e8 d2~      | % 7
    	    d4 a' (gis a)      | % 8
    	    bes4. c8 d2~      | % 9
    	    d4 d (c bes)      | % 10
    	    bes a8 (gis) a2~      | % 11
    	    a4 gis8( a bes a g f)      | % 12
    	    e4 e8 (f) g2~      | % 13
    	    g4 f8( g a g f e)      | % 14
    	    d4 d8 (e) f2~      | % 15
    	    f4  \tuplet 3/2 {a8\< (bes a)  } gis4 a \!      | % 16
    	    bes4.-. \f a8-. bes4-. g-.      | % 17
    	    a4.-. gis8-. a4-. f-. 	| % 18
    	    d e f g |} % end of repeat except alternate endings
    \alternative{ 
    	    {a4 a\p (g f)       |} % 20
            {a4 a\ff gis a   |} % 21
    } %close alternatives
    
    \repeat volta 2 { %startrep 
    	    bes4. (c8) c4 a      | % 22
    	    g4.( a8) a4 e      | % 23
    	    f a c e      | % 24
    	    d \p \tuplet 3/2{c8( d c)  } b4 c      | % 25
    	    bes! r e2~      | % 26
    	    e4 \tuplet 3/2{c8( d c)  } b4 c      | % 27
    	    a r d2~      | % 28
    	    d4 a \ff gis a      | % 29
    	    bes4.( c8) c4 a      | % 30
    	    g4.( a8) a4 e      | % 31
    	    f a c e      | % 32
    	    d \tuplet 3/2{c8( d c)  } b4 c      | % 33
    	    d4. cis8 d4 c      | % 34
    	    bes a g f 
    	    e4 r c8 cis d e} % end of repeat except alternate endings
    \alternative{ {f4 a gis a       |} % 35
    	          {f4 f8 f f4 r     |} % 36
                } %close alternatives

    \bar "||"     | % 37
    %barkeysig: 
    \key bes \major 
    \acciaccatura {f16 [g a]} bes4 ^\markup {\upright  "TRIO"} \fz r r2 
    \bar "||"     | % 39
    \OneBR     | % 40
    r4 f,8( \p e f4) bes      | % 41
    a f d' f,      | % 42
    r d'8( c bes a bes c      | % 43
    d4) r r2      | % 44
    r4 \tuplet 3/2{f,8( g f)  } e4 f      | % 45
    d'8( cis d c bes a bes g      | % 46
    a4) c8( d ees f ees d      | % 47
    c4) r r2      | % 48
    r4 f,8( e f4) c'      | % 49
    bes f ees' f,      | % 50
    r ees'8( d c b c d      | % 51
    ees4) r r2      | % 52
    r4 \tuplet 3/2{g,8( a g  } fis4) g      | % 53
    ees'8( d ees d c b c a      | % 54
    bes4) d8( c bes a bes c      | % 55
    d4) r r2      | % 56
    r4 f,8( e f4) bes      | % 57
    a f d' f,      | % 58
    r d'8( c bes a bes c      | % 59
    d4) r r2      | % 60
    bes8( a bes c d cis d c      | % 61
    bes c d ees f d ees f      | % 62
    g4) c,8( d ees f ees d      | % 63
    c4) r r2      | % 64
    r4 c8( d ees f ees d      | % 65
    c4) c r c      | % 66
    r bes8( c d ees d c      | % 67
    bes4) bes r bes      | % 68
    ees8( f ees d c d c bes      | % 69
    a g f g a ees' d c      | % 70
    bes4) c8( d ees f g a   | % 71
    bes4) r r2 \bar "||"    | % 72
    r4 \f a bes c      | % 73
    d c bes a      | % 74
    g4. fis8 g4 a      | % 75
    bes r r2      | % 76
    r4 g a bes      | % 77
    c bes a g      | % 78
    f4. e8 f4 g      | % 79
    a c, f a      | % 80
    bes1(      | % 81
    a4) f a c      | % 82
    des1(      | % 83
    c4) e, f g \mf      | % 84
    a gis8 _\markup{"cresc."} a bes4 a8 bes      | % 85
    c4 b8 c d4 c8 d      | % 86
    ees4 d c bes 
    \bar "||"     | % 87
    a4 r d4. \ff cis8      | % 88
    d2 bes      | % 89
    a d      | % 90
    g,1~      | % 91
    g4 a,( bes c      | % 92
    d) f( e f)      | % 93
    a2 g      | % 94
    g a,~      | % 95
    a4 r ees''4. d8      | % 96
    ees2 c      | % 97
    bes ees      | % 98
    a,1~      | % 99
    a4 b,( c d      | % 100
    ees) g( fis g)      | % 101
    bes2 a      | % 102
    g d (      | % 103
    d4) r d'4. cis8      | % 104
    d2 bes      | % 105
    a d      | % 106
    g,1~      | % 107
    g4 a,( bes c      | % 108
    d2) f4. e8      | % 109
    f2 aes      | % 110
    g1~      | % 111
    g4 r bes4. a8      | % 112
    bes2 c,~      | % 113
    c4 r a'4. gis8      | % 114
    a2 bes,~      | % 115
    bes4 r g'4. fis8      | % 116
    g2 g      | % 117
    a f      | % 118
    bes1~     | % 119
    bes4 r \acciaccatura {f16 [g a]} bes4-^ r \bar "|." 
}%end relative

    \header {
    	    piece = "Svenska Flygarmarsch"
    	    composer = "Helge Damberg"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
