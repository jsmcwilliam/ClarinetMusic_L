\version "2.18.0"

%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print
#(allow-volta-hook "||")

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
tocSection = #(define-music-function (parser location text) (markup?) 
        	(add-toc-item! 'tocSectionMarkup text)) 
OneBR = R1^\markup{\normalsize\number 1}
OneBarRest = R2.^\markup{\normalsize\number 1}
ignore = \override NoteColumn #'ignore-collision = ##t
logo = \markup {\epsfile #X #30 #"Polisens_logo.eps" }
 
\include "Marsch_format.ly"

\book {
  
  \header { 
  	  title = \markup {\concat {"Malm" \char#246 "Polisens Bl" \char#229 "sorkester"}}
  	  subtitle = "Svartaboken"
	  subsubtitle = "Klarinett I i Bb"
          picture = \logo
          copyright = \markup {
    	    \line {\concat {"Malm" \char#246 "polisens Bl" \char#229 "sorkester. Kopierad: John S. McWilliam, (rev. " \date ")" }}}
%   	  tagline = "Copied by John S. McWilliam"

  }

\paper {
        bookTitleMarkup = \markup {\fill-line { \huge\center-column {
            \fontsize #4 \bold\fromproperty #'header:title
            \vspace #1
            \fontsize #4 \fromproperty #'header:subtitle
            \vspace #1
            \fromproperty #'header:subsubtitle
            \fromproperty #'header:picture
		}}}
        tocTitleMarkup = \markup {\huge \column { 
    	    \fill-line { \null\bold "Table of Contents" \null } 
    	    \hspace #1 
    	        }}     
        tocItemMarkup = \tocItemWithDotsMarkup
        tocSectionMarkup = \markup {\large \column { 
    	    \hspace #1 
    	    \fill-line { \null \italic \fromproperty #'toc:text \null } 
    	    \hspace #1 
    	        }}
    	oddFooterMarkup = \markup {\fill-line { \fromproperty #'header:copyright
    	}}
    	evenFooterMarkup = \oddFooterMarkup
}
  
\pageBreak %after title page
\markuplist \table-of-contents
\pageBreak

   \bookpart {
	\header {
		title = "Ceremonimusiken"
		subtitle = ##f
		subsubtitle = ##f
		picture = ##f}
		\tocSection \markup { Ceremonimusiken }		

	\tocItem \markup {"1. Du Gamla Du Fria"}
	\include "../Ceremonimusik/Du_Gamla_Du_Fria-Kl1.ly"
	
	\tocItem \markup {\concat {"2. Svenska Arm"\char#233"ns Paradmarsch"}}
	\include "../Ceremonimusik/Svenska_Armens_Paradmarsch-Kl1.ly" 	  

	\tocItem \markup {"4. PSALM 425 - Den blomstertid nu kommer."} 
	\include "../Ceremonimusik/Den_blomstertid_nu_kommer-Kl1_ver2.ly" 	  
\pageBreak
   } %end bookpart
   
   \bookpart {
	\header {
		title = "Marschmusiken"
		subtitle = ##f
		subsubtitle = ##f
		picture = ##f}
		\tocSection \markup { Marschmusiken }		

	 \tocItem \markup {"1. Colonel Bogey"}
	 \include "../Marschmusik/Colonel_bogey-Kl1.ly"	
\pageBreak

	\tocItem \markup {"2. Fanvakten"}
	\include "../Marschmusik/Fanvakten-Kl1.ly"
\pageBreak

	\tocItem \markup {"3. Hock Heideckburg"}
	\include "../Marschmusik/Hock_Heideckburg-Kl1.ly"
\pageBreak

	\tocItem \markup {"4. Karlskrona (Chefsmarsch)"}
	\include "../Marschmusik/Karlskrona-Kl1.ly"
\pageBreak
 
	\tocItem \markup {"5. Kong Fredrick (Honnormarch)"}
	\include "../Marschmusik/Kong_Fredrick_Honnormarch-Kl1.ly"
\pageBreak

	\tocItem \markup {"6. Kungl. Vaxholms Kustartilleriregementets marsch"}
	\include "../Marschmusik/Kungl_vaxholms_artilleri-Kl1.ly"	 
\pageBreak
		
	\tocItem \markup {"7. Liberty Bell"}
	\include "../Marschmusik/Liberty_Bell-Kl1.ly"
\pageBreak

	\tocItem \markup {"8. National Emblem"}
	 \include "../Marschmusik/National_emblem-Kl1.ly"
\pageBreak

	 \tocItem \markup {"9. On the Square"}
	 \include "../Marschmusik/On_the_square-Kl1.ly"
\pageBreak
	
	 \tocItem \markup {"10. Our Director"}
	 \include "../Marschmusik/Our_director-Kl1.ly"
\pageBreak

	 \tocItem \markup {\concat {"11. P" \char #229 " Vakt"}}
	 \include "../Marschmusik/Pa_vakt-Kl1.ly"
\pageBreak
 
	 \tocItem \markup {12. Svensk Polismarsch}
	 \include "../Marschmusik/Svensk_Polismarsch-Kl1.ly"
\pageBreak
   	  
	 \tocItem \markup {"13. Svenska Fygarmarsch"}
	 \include "../Marschmusik/Svenska_Flygarmarschen-Kl1.ly"
\pageBreak
		
	 \tocItem \markup {\concat {"14. Under den bl" \char #229 " gula fanan"}}
	 \include "../Marschmusik/Under_den_bla_gula_fanan-Kl1.ly"
\pageBreak

	 \tocItem \markup {"15. Vanished Army"}
	 \include "../Marschmusik/Vanished_army-Kl1.ly"	
\pageBreak
	 
	 \tocItem \markup {\concat {"16. " \char #214 "verste Tillman"}}
	 \include "../Marschmusik/Overste_Tillman-Kl1.ly"
\pageBreak
 } %end bookpart		
  
   \bookpart {
	\header {
		title = \markup {\concat {"Underh" \char#229 "llningsmusiken"}}
		subtitle = ##f
		subsubtitle = ##f
		picture = ##f}
		\tocSection \markup { \concat {"Underh" \char#229 "llningsmusiken"} }		

	\tocItem \markup {\concat {"1. Afton p"\char #229 " Solvik"}}
	\include "../Underhallningsmusik/Afton_pa_Solvik-Kl1.ly"
\pageBreak

	\tocItem \markup {"2. Beatrice-Aurore"}
	\include "../Underhallningsmusik/Beatrice_Aurore-Kl1.ly"
\pageBreak

	 \tocItem \markup {\concat {"3. Britta Polka"}}
	 \include "../Underhallningsmusik/Britta_polka-Kl1.ly"	
\pageBreak

	 \tocItem \markup {\concat {"4. Calle Schewens Vals"}}
	 \include "../Underhallningsmusik/Calle_schewens_vals-Kl1.ly"	
\pageBreak

	\tocItem \markup {\concat 
	{"5. Den f" \char #246 "rsta g" \char #229 "ng jag s" \char #229 "g dig"}}
	 \include "../Underhallningsmusik/Den_forsta_gang_jag_sag_dig-Kl1.ly"	
\pageBreak

	 \tocItem \markup {"6. Estrellita"}
	 \include "../Underhallningsmusik/Estrellita-Kl1.ly"
\pageBreak

	\tocItem \markup {"7. Ge mig en dag (Ta mig till havet)"}
	 \include "../Underhallningsmusik/Ge_mig_en_dag-Kl1.ly"
	 \pageBreak

	 \tocItem \markup {"8. Granada"}
	 \include "../Underhallningsmusik/Granada-Kl1.ly"
\pageBreak
	 
	\tocItem \markup {\concat 
	{"9. I Pratern blommar "\char #229 "ter tr" \char #228 "den"}}
	 \include "../Underhallningsmusik/I_pratern_blommar_ater_traden-Kl1.ly"
	 \pageBreak

	 \tocItem \markup {"10. Islands in the stream"}
	 \include "../Underhallningsmusik/Islands_in_the_stream-Kl1.ly"
\pageBreak
		
	\tocItem \markup {"11. Just the way you are"}
	\include "../Underhallningsmusik/Just_the_way_you_are-Kl1.ly"
\pageBreak

	 \tocItem \markup {\concat {"12. Klinga mina Klockor"}}
	 \include "../Underhallningsmusik/Klinga_mina_klockor-Kl1.ly"	
\pageBreak

	\tocItem \markup {"13. Kom i min famn"}
	\include "../Underhallningsmusik/Kom_i_min_famn-Kl1.ly"
\pageBreak

	\tocItem \markup {"14. Malaga"}
	\include "../Underhallningsmusik/Malaga-Kl1.ly"
\pageBreak

	\tocItem \markup {"15. Matador"}
	\include "../Underhallningsmusik/Matador-Kl1.ly"
\pageBreak

	\tocItem \markup {"16. Memory"}
	\include "../Underhallningsmusik/Memory-Kl1.ly"
\pageBreak

	 \tocItem \markup {"17. On the street where you live (My Fair Lady)"}
	 \include "../Underhallningsmusik/On_the_street_where_you_live-Kl1.ly"
\pageBreak
			
	\tocItem \markup {"18. Puttin' on the Ritz"}
	\include "../Underhallningsmusik/Puttin_on_the_ritz-Kl1.ly"
\pageBreak    

	 \tocItem \markup {\concat {"19. Roslagsv"\char#229"r"}}
	 \include "../Underhallningsmusik/Roslagsvar-Kl1.ly"	
\pageBreak

	\tocItem \markup {"20. Sommar, Sommar, Sommar..."} 
	\include "../Underhallningsmusik/Sommar_sommar-Kl1.ly" 	  
\pageBreak

	 \tocItem \markup {\concat {"21. Stad i Ljus"}}
	 \include "../Underhallningsmusik/Stad_i_ljus-Kl1.ly"	
\pageBreak

	 \tocItem \markup {\concat {"22. Svenska Ord i Toner"}}
	 \include "../Underhallningsmusik/Svenska_ord-Kl1.ly"	
\pageBreak

	\tocItem \markup {"23. We'll meet again"}
	\include "../Underhallningsmusik/Well_meet_again-Kl1.ly"
\pageBreak

	\tocItem \markup {\concat {"24. Welt Potpouri"}}
	\include "../Underhallningsmusik/Welt_potpouri-Kl1-ver2.ly"
\pageBreak

	\tocItem \markup {\concat {"25. Visa vid vindens "\char #228 "ngar"}}
	\include "../Underhallningsmusik/Visa_vid_vindens_angar-Kl1.ly"
   } % end bookpart
%}				
}%end book

