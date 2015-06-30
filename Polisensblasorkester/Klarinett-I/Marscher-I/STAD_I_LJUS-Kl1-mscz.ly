
\version "2.18.2"
% automatically converted by musicxml2ly from C:/Users/Owner/Music/Musescore/Work Area/Kl1/STAD_I_LJUS-Kl1.xml

\header {
  encodingsoftware = "MuseScore 2.0.1"
  copyright = "Malmö Polisens Blårorkester. Kopierad: John McWilliam 2014"
  encodingdate = "2015-06-28"
}

#(set-global-staff-size 20.0762645669)
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
PartPOneVoiceOne =  \relative g' {
  \transposition bes \clef "treble" \key g \major
  \numericTimeSignature\time 4/4 r4 s2. | % 2
  R1 | % 3
  \mark \markup { \box { 3 } } | % 3
  g2 \mp fis4 e4 | % 4
  d4. e8 d2 | % 5
  \time 3/4  g4 fis4 e4 | % 6
  \numericTimeSignature\time 4/4  d2 d2 | % 7
  g2 a2 | % 8
  g2 \< g2 | % 9
  g2 \! g2 | \barNumberCheck #10
  g2 ( fis4 ) \mark \markup { \box { 13 } } fis4 \bar "||"
  g2 fis4 e4 \break | % 12
  d4. e8 d2 | % 13
  \time 3/4  g4 fis4 e4 | % 14
  \numericTimeSignature\time 4/4  d4. d8 d2 | % 15
  R1*4 \bar "||"
  \mark \markup { \box { 19 } } | % 19
  b'2 c2 \trill | \barNumberCheck #20
  d2. e8 [ fis8 ] | % 21
  g2 c,4 b4 | % 22
  a2. r4 | % 23
  b2 fis'2 | % 24
  g2 r8 g8 e8 [ c8 ] \break | % 25
  b2 a2 | % 26
  g2. r4 \bar "||"
  R1*4 \bar "||"
  \mark \markup { \box { 31 } } | % 31
  r4 r8 g8 a8 [ a8 ] c8 [ b8 ] | % 32
  g8 [ g8 ~ ] g2 r8 g8 | % 33
  \time 3/4  g8 [ g8 ] fis8 [ fis8 ] e8 [ e8 ] | % 34
  \numericTimeSignature\time 4/4  d2. r8 d8 | % 35
  b'2 a4 c8 [ b8 ] \break | % 36
  g8 [ g8 ~ ] g4 r8 \< d'8 [ e8 fis8 ] | % 37
  g8 \! [ b,8 b8 b8 ] c8 [ c8 ] r8 b16 [ g16 ] | % 38
  a1 \bar "||"
  R1*7 | % 46
  r16 d,16 \f [ g16 a16 ] b16 [ g16 b16 d16 ] e4 fis4 \bar "||"
  b,2 c2 \trill | % 48
  d2. e8 [ fis8 ] | % 49
  g2 c,4 b4 \break | \barNumberCheck #50
  a2. r4 | % 51
  b2 fis'2 | % 52
  g2 r8 g8 e8 [ c8 ] | % 53
  b2 a2 | % 54
  g4. g16 [ a16 ] b8 [ b16 c16 ] d8 [ e16 fis16 ] | % 55
  g2. r4 \bar "|."
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Bb Clarinet"
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
      >>
    >>

  >>
  \layout {}
  \midi {}
}

