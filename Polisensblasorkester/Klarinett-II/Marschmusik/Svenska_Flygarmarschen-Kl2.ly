\version "2.18.0"
% When ready to include in collection: 1. Comment out paper.
% 				       2. Create include file of relative and
%					  header.
#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
#(set-default-paper-size "a4" 'Portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

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
    d4 f( \p e d)      | % 4
    
    \repeat volta 2 { %startrep
    	    cis4. d8 e2~      | % 5
    	    e4 bes( a g)      | % 6
    	    a4. g8 f2~      | % 7
    	    f4 f'( e f)      | % 8
    	    g4. a8 bes2~      | % 9
    	    bes4 bes( a g)      | % 10
    	    g f8( e) f2~      | % 11
    	    f4 gis,8( a bes a g f)      | % 12
    	    e4 cis'8( d) e2~      | % 13
    	    e4 f8( g a g f e)      | % 14
    	    d4 f,8( g) a2~      | % 15
    	    a4 \< \tuplet 3/2{f'8( g f)  } e4 f \!      | % 16
    	    g4. \f fis8 g4 e      | % 17
    	    f4. e8 f4 d 	| % 18
    bes4 bes d d |} % end of repeat except alternate endings
    \alternative{ 
    	    {cis4 f \p e d       |} % 20
            {cis4 a' \ff gis a   |} % 21
    } %close alternatives
    
    \repeat volta 2 { %startrep 
    	    d,4.( e8) e4 c      | % 22
    	    bes4.( c8) c4 c      | % 23
    	    c f a c      | % 24
    	    a \p \tuplet 3/2{c,8( d c)  } b4 c      | % 25
    	    e r bes'2~      | % 26
    	    bes4 \tuplet 3/2{c,8( d c)  } b4 c      | % 27
    	    f r a2~      | % 28
    	    a4 f \ff e f      | % 29
    	    d4.( e8) e4 c      | % 30
    	    bes4.( c8) c4 c      | % 31
    	    c f a c      | % 32
    	    a \tuplet 3/2{c,8( d c)  } b4 c      | % 33
    	    d4. cis8 d4 c      | % 34
    	    bes a g f 
    	e4 r bes'2} % end of repeat except alternate endings
    \alternative{ {a4 a' gis a       |} % 35
    	          {a,4 a8 a a4 r     |} % 36
                } %close alternatives

    \bar "||"     | % 37
    %barkeysig: 
    \key bes \major 
    \mark \markup {\bold  "TRIO"}
    f'4  \fz r r2 
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
    r4 \f fis g a      | % 73
    bes a g fis      | % 74
    d4. d8 d4 fis      | % 75
    g r r2      | % 76
    r4 e f g      | % 77
    a g f e      | % 78
    c4. c8 c4 e      | % 79
    f c f a      | % 80
    e1(      | % 81
    f4) f a c      | % 82
    bes1(      | % 83
    a4) e, f g \mf      | % 84
    a gis8 _\markup{"cresc."} a bes4 a8 bes      | % 85
    c4 b8 c d4 c8 d      | % 86
    ees4 d c bes 
    \bar "||"     | % 87
    a4 r bes'4. \ff a8      | % 88
    bes2 f      | % 89
    d bes'      | % 90
    d,1~      | % 91
    d4 a( bes) c      | % 92
    bes d( cis d)      | % 93
    f2 d      | % 94
    ees f,~      | % 95
\pageBreak    
    f4 r c''4. b8      | % 96
    c2 a      | % 97
    f c'      | % 98
    f,1~      | % 99
    f4 b,( c d      | % 100
    c) ees( d ees)      | % 101
    ees2 ees      | % 102
    d bes~      | % 103
    bes4 r bes'4. a8      | % 104
    bes2 f      | % 105
    d bes'      | % 106
    d,1~      | % 107
    d4 a( bes c      | % 108
    bes2) d4. cis8      | % 109
    d2 f      | % 110
    ees1~      | % 111
    ees4 r g4. fis8      | % 112
    g2 g,~      | % 113
    g4 r ees'2      | % 114
    f f,~      | % 115
    f4 r d'4. d8      | % 116
    ees2 ees      | % 117
    ees ees      | % 118
    d1~     | % 119
    d4 r f-^ r \bar "|." 
}%end relative

    \header {
    	    piece = "Svenska Flygarmarsch"
    	    composer = "Helge Damberg"
    	}
    	\layout {ragged-last = ##t
    	}
  }%end score
