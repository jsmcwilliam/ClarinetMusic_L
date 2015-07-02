
\version "2.18.2"
% automatically converted by musicxml2ly from C:/Users/Owner/Music/Musescore/Work Area/Kl1/SVENSKA_ORD_I_TONER.xml

\header {
  encodingsoftware = "MuseScore 2.0.1"
  encodingdate = "2015-06-29"
  copyright = "Polisens Blåsorkester: kopierad av John McWilliam 2015"
  title = "Svenska Ord i Toner"
}

#(set-global-staff-size 17.8000440945)
\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  top-margin = 1.0\cm
  bottom-margin = 2.0\cm
  left-margin = 1.0\cm
  right-margin = 1.0\cm
}
\layout {
  \context {
    \Score
    skipBars = ##t
    autoBeaming = ##f
  }
}
PartPOneVoiceOne =  \relative a'' {
  \clef "treble" \key d \major \time 4/4 | % 1
  a8. \ff -. [ a16 \< -> ] gis8. \! -. [ gis16 -> ] g8. -. [ g16 -> ]
  fis8. -. [ fis16 \> -> ] | % 2
  e8 \! \mf -. a,4 -. gis8 a8. ( [ fis16 ) ] d4 -. \repeat volta 2 {
    | % 3
    \mark \markup { \musicglyph #"scripts.segno" } \mark \markup {
      \box { A }
    } | % 3
    cis2 b2 ( | % 4
    b8 ) b4 -. ais8 b8. ( [ d16 ) ] b'4 -. | % 5
    b1 | % 6
    r8 b4 -. ais8 -. b8. ( [ g16 ) ] e4 | % 7
    d2 cis2 ( \break | % 8
    cis8 ) d4 c8 -. cis8. ( [ e16 ) ] cis'4 -. | % 9
    cis2. r4 | \barNumberCheck #10
    R1 | % 11
    r8 a'16 ( [ b16 ] a2 ) r4 | % 12
    r8 a16 ( [ b16 ] a2 ) r4 | % 13
    R1
  }
  \alternative {
    {
      | % 14
      r8. d,16 [ g8. b,16 ] e4 ( d4 ) | % 15
      R1*2 | % 17
      r8. b'16 ( [ cis8. ) a16 ( ] b8. [ g16 ) ] \once \override
      TupletBracket #'stencil = ##f
      \times 2/3  {
        cis,8 ( [ d8 dis8 ) ]
      }
      | % 18
      e8 \mf -. a,4 -. gis8 a8. ( [ fis16 ] d4 ) -.
    }
    {
      | % 19
      r8. a'16 -. [ a8 -. gis8 ] a8. ( [ fis16 ] d4 ) -.
    }
  } | \barNumberCheck #20
  cis'2 b2 ( | % 21
  b8 ) d4 -. b8 cis8. ( [ d16 ) ] e4 -. | % 22
  \mark \markup { \musicglyph #"scripts.coda" } | % 22
  d2. \> fis4 -. \break | % 23
  e8. \! -> [ fis16 ] e8. [ a,16 ( ] a8 ) \mark \markup { \box { B } }
  a4. -> \bar "||"
  R1*3 | % 27
  r8. a'16 [ gis8. a16 ] \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    g8 [ e8 g8 ]
  }
  e4 -. | % 28
  R1*2 | \barNumberCheck #30
  d8. \f [ cis16 \< ] d8. [ e16 ] fis4 -. b8 -> [ a8 -. ] | % 31
  r8 \! a,4 gis8 a8. [ fis16 ] d4 -. \bar "||"
  \break | % 32
  \mark \markup { \musicglyph #"scripts.coda" } | % 32
  d'2 ^"D.S. al Coda" e4 eis8 -> [ fis8 -. ] | % 33
  R1 \bar "||"
  \key g \major | % 34
  \mark \markup { \box { C } } r8. \p ais16 ( [ b8. ais16 ] b4. ais8 | % 35
  b4 ) -. r4 r2 | % 36
  r8. b16 ( [ c8. b16 ] c4. b8 | % 37
  c4 ) -. r4 r2 | % 38
  r8. b16 ( [ c8. b16 ] c4. b8 | % 39
  c4 ) -. r4 r2 \break | \barNumberCheck #40
  r8. ais16 ( [ b8. fis16 ] a8. [ g16 ] \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    b,8 [ c8 cis8 ]
  }
  | % 41
  d8 ) -. r8 r4 r2 | % 42
  r8. ais'16 ( [ b8. ais16 ] b4. ais8 | % 43
  a2 ) r2 | % 44
  r8. dis,16 ( [ e8. dis16 ] e4. dis8 | % 45
  e4 ) r4 r2 \break | % 46
  r4 r8 d8 ( \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    g8 [ d8 g8 ]
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gis8 [ f8 gis8 ]
  }
  | % 47
  a8 ) -. r8 r4 r2 | % 48
  r8. d,16 ( [ g8. b16 ] c4 d,4 | % 49
  e8 ) -. r8 g,4 \< ( b4 d4 ) \repeat volta 2 {
    | \barNumberCheck #50
    fis8. \! [ fis16 ] fis8. [ fis16 ] fis8. [ fis16 ] fis8. [ fis16
    ] | % 51
    fis4 -. gis,4 \p ( a4 \< fis'4 ) | % 52
    e4 \! -. r8 b8 \p b4 b4 \break | % 53
    b4 -. r4 r2 | % 54
    d8. \< [ d16 ] d8. [ d16 ] d8. [ d16 ] d8. [ d16 ] | % 55
    d4 \! -. dis,4 \< ( e4 fis4 )
  }
  \alternative {
    {
      | % 56
      c'4 \! -. r8 b8 -. g4 e4 | % 57
      d8 r8 g4 ( b4 d4 )
    }
    {
      | % 58
      a4 -. r8 g8 g4 -. fis4 -.
    }
  } | % 59
  g8 r8 r4 r2 \bar "||"
  \break | \barNumberCheck #60
  r8. \p ais'16 ( [ b8. ais16 ] b4. ais8 | % 61
  b4 ) -. r4 r2 | % 62
  r8. b16 ( [ c8. b16 ] c4. b8 | % 63
  c4 ) -. r4 r2 | % 64
  r8. b16 ( [ c8. b16 ] c4. b8 | % 65
  c4 ) -. r4 r2 \break | % 66
  r8. ais16 ( [ b8. fis16 ] a8. [ g16 ] \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    b,8 [ c8 cis8 ]
  }
  | % 67
  d8 ) -. r8 r4 r2 | % 68
  r8. ais'16 ( [ b8. ais16 ] b4. ais8 | % 69
  a2 ) r2 | \barNumberCheck #70
  r8. b16 ( [ c8. b16 ] c4. b8 | % 71
  c8 ) r8 r4 r2 | % 72
  g2 \< ( gis2 \break | % 73
  a2 \! \> fis2 ) | % 74
  g2 \! \< ( gis2 | % 75
  a2 \! \> fis2 ) | % 76
  g2 \! \< ( gis2 | % 77
  a2 \! \> fis2 ) | % 78
  g8 \! -. r8 r4 r2 | % 79
  r2 c8 \p -. r8 r4 | \barNumberCheck #80
  cis8 -. r8 r8 d8 -> r2 \bar "|."
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
      >>
    >>

  >>
  \layout {}
  \midi {}
}

