\version "2.18.0"

%Header formatting for police marches. Customize to get name in the tag line.
%Bring in the time/date package. Set format to month day, year. Set format for
%headers: piece, meter and composer.

today = #(strftime "%d-%m-%Y" (localtime (current-time)))

\paper {
    indent = 0.0\cm
    ragged-bottom = ##t
    tagline = \markup {
        \line {
            "Copied by John McWilliam,"
            \concat { "(rev. " \today ")" }
        }
    }
	scoreTitleMarkup = \markup {
		\fill-line {
			\null
			\fontsize #4 \bold \fromproperty #'header:piece
			\fromproperty #'header:composer
		}}
        tocItemMarkup = \tocItemWithDotsMarkup
}
