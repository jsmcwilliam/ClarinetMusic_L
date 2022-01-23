\version "2.22.1"

%Header formatting for police marches. Customize to get name in the tag line.
%Bring in the time/date package. Set format to month day, year. Set format for
%headers: piece, meter and composer.

#(set-global-staff-size 15) % set staff-size when ready to print
#(set-default-paper-size "a5" 'landscape)
#(ly:set-option 'relative-includes #t)

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

OneBR = R1^\markup{\normalsize\number 1}	%4/4 bar rest
OneBarRest = R2.^\markup{\normalsize\number 1}	%3/4 bar rest

\paper {
    indent = 0.0\cm
    ragged-last = ##t    
    ragged-bottom = ##t
tagline = \markup {
%    	    \line {\concat {"Malm" \char#246 "Polisensbl" \char#229 "sorkester. Kopierad: John S. McWilliam, (rev. " \date ")" }}}
    	    \line {\concat {"PMRS: Kopierad: John S. McWilliam, (rev. " \date ")" }}}

scoreTitleMarkup = \markup {
	    \fill-line {
%	    \null
	    \fontsize #4 \bold \fromproperty #'header:piece
	    \fromproperty #'header:composer
		}}
}

%\layout { }
