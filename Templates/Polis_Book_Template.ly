\version "2.18.0"    

#(ly:set-option 'relative-includes #t) 
#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 15) % set staff-size when ready to print

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 
%VoltaTxtTwoFour = \markup { 2. \text\fontsize #2 {--Parts: 2 & 4}} % PM Donald McLean

\include "bagpipe.ly"
%\include "bagpipe_extra.ly"
%\include "bagpipe_new.ly"
\include "../Includes/BP_format.ly"

\book {

\header {
    title = "Heather Pipes & Drums"
    subtitle = "Grade 2 Band Collection - 2015"
    copyright = \markup {
    	    		\line {"Compiled by John S. McWilliam,"
    	    			\concat { "(rev. " \date ")" }}}
%    parttagline = "Copied by John S. McWilliam"
  }


\paper {
%    ragged-last-bottom = ##t
    %% Page footer: add a different part-tagline at part last page
    oddFooterMarkup = \markup {
      \column {
        \fill-line {
          %% Copyright header field only on book first page.
          \on-the-fly #first-page \fromproperty #'header:copyright
        }
        \fill-line {
          %% Part tagline header field only on each part last page.
          \on-the-fly #part-last-page \fromproperty #'header:parttagline
        }
        \fill-line {
          %% Tagline header field only on book last page.
          \on-the-fly #last-page \fromproperty #'header:tagline
        }
      }
    }
%    line-width = 11.0\cm
    tocTitleMarkup = \markup {\huge \column { 
    	    \fill-line { \null "Table of Contents" \null } 
    	    \hspace #1 
    	    } 
    }     
    tocItemMarkup = \tocItemWithDotsMarkup
    tocSectionMarkup = \markup {\large \column { 
    	    \hspace #1 
    	    \fill-line { \null \italic \fromproperty #'toc:text \null } 
    	    \hspace #1 
    	    } 
    }
}%end paper
	
	\pageBreak %after title page		
	\markuplist \table-of-contents
	\pageBreak

	\bookpart {
		\header {
			title = "2/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 2/4 Marches }		
		\tocItem \markup {1. }
		\include "../2-4_marches/.ly"
		\pageBreak
		}
%{
	\bookpart {
		\header {
			title = "3/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 3/4 Marches } 
		\tocItem \markup {1. }
		\include "../3-4_marches/.ly" 
		\pageBreak
		}	

			\bookpart {
		\header {
			title = "4/4 Marches"
			subtitle = ##f}
		\tocSection \markup { 4/4 Marches } 
		\tocItem \markup {1. }
		\include "../4-4_marches/.ly" 
		\pageBreak
		}	

	\bookpart {
		\header {
			title = "6/8 Marches"
			subtitle = ##f}
		\tocSection \markup { 6/8 Marches } 
		\tocItem \markup {1. }
		\include "../6-8_marches/.ly"
		\pageBreak
		}

			\bookpart {
		\header {
			title = "Other Marches"
			subtitle = ##f}
		\tocSection \markup { Other Marches } 
		\tocItem \markup {1.}
		\include "../9-8_marches/.ly" 
		}	

	\bookpart {
		\header {
			title = "Airs"
			subtitle = ##f}
		\tocSection \markup { Airs }
		\tocItem \markup {1. }
		\include "../Airs/.ly"
		\pageBreak
		}

		\bookpart {
		\header {
			title = "Competition Marches"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Competition Marches } 
		\tocItem \markup {1. }
		\include "../2-4_marches/.ly"
		\pageBreak
		}
		
		\bookpart {
		\header {
			title = "March, Strathspey & Reel"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { March, Strathspey & Reel } 
		\tocItem \markup {1. Balmoral Highlanders }
		\include "../2-4_marches/Balmoral_highlanders_4.ly"
		\pageBreak
		\tocItem \markup {2. Atholl Cummers }
		\include "../Strathspeys/Atholl_cummers.ly"
		\pageBreak
		\tocItem \markup {3. Charlies Welcome }
		\include "../Reels/Charlies_welcome.ly"
		\pageBreak
		\tocItem \markup {1. Highland Wedding }
		\include "../2-4_marches/Highland_wedding.ly"
		\pageBreak
		\tocItem \markup {2. Dora MacLeod }
		\include "../Strathspeys/Dora_macleod.ly" 
		\pageBreak
		\tocItem \markup {3. Pretty Marion }
		\include "../Reels/Pretty_marion.ly" 
		\pageBreak 		
		
		}
%{
		\bookpart {
		\header {
			title = "Medley-1"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-1 } 
		\tocItem \markup {1. }
		\include "../Polka/.ly" 
		\pageBreak
		}
		
		\bookpart {
		\header {
			title = "Medley-2"
			subtitle = ##f
			picture = ##f}
		\tocSection \markup { Medley-2 } 
		\tocItem \markup {1. }
		\include "../Airs/.ly" 
		\pageBreak
		}
%}
}%end book
