\version "2.18.2"

#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 14) 

today = #(strftime "%d-%m-%Y" (localtime (current-time)))

\paper {
%    #(set-paper-size "a4" 'landscape)
    #(set-paper-size "a4")
    indent = 0.0\cm
%    ragged-bottom = ##t
tagline = \markup {
        \line {
            "Copied by John McWilliam,"
            \concat { "(rev. " \today ")" }
        }
    }

}

\layout {
    \context {
        \Score
        \remove "Bar_number_engraver"
        \override PhrasingSlur.direction = #UP
    }
    
     \override Staff.TimeSignature #'break-visibility = #end-of-line-invisible 
     \set Staff.explicitClefVisibility = #end-of-line-invisible 
     \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible 

}
