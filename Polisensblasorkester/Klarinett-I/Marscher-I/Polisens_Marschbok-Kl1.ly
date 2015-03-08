\version "2.18.0"

%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 15) % set staff-size when ready to print
#(allow-volta-hook "||")

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
OneBR = R1^\markup{\normalsize\number 1}
OneBarRest = R2.^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

\book {
  
  \header { 
  	  title = \markup {\concat {"Polisensbl" \char#229 "sorkester"}}
  	  subtitle = "Marscher - Klarinett I i Bb"
	  subsubtitle = \markup {\concat {"("\date")"}}
%  	  instrument = "Klarinett I i Bb"
  	  copyright = "Kopierad av John McWilliam"
  }
\pageBreak
\markuplist \table-of-contents
\pageBreak

\tocItem \markup {"1. Du Gamla Du Fria"}
  	 \include "Du_Gamla_Du_Fria-Kl1.ly"
%  	 \pageBreak

\tocItem \markup {\concat {"2. Svenska Arm"\char#233"ns Paradmarsch"}}
  	 \include "Svenska_Armens_Paradmarsch-Kl1.ly" 	  
%  	 \pageBreak

\tocItem \markup {"3. Sommar, Sommar, Sommar..."} 
	 \include "Sommar_sommar-Kl1.ly" 	  
%    	 \pageBreak

\tocItem \markup {"4. PSALM 425 - Den blomstertid nu kommer."} 
   	 \include "Den_blomstertid_nu_kommer-Kl1.ly" 	  
   	 \pageBreak

\tocItem \markup {\concat {"5. Afton p"\char #229 " Solvik"}}
	 \include "Afton_pa_Solvik-Kl1.ly"
%	 \pageBreak

\tocItem \markup {"6. Beatrice-Aurore"}
	 \include "Beatrice_Aurore-Kl1.ly"
	 \pageBreak

\tocItem \markup {\concat {"7. Colonel Bogey"}}
	 \include "Colonel_bogey-Kl1.ly"	
	 \pageBreak

\tocItem \markup {\concat {"8. Den f" \char #246 "rsta g" \char #229 "ng jag s"
	 \char #229 "g dig"}}
	 \include "Den_forsta_gang_jag_sag_dig-Kl1.ly"	
%	 \pageBreak

\tocItem \markup {"9. Estrellita"}
	 \include "Estrellita-Kl1.ly"
	 \pageBreak

\tocItem \markup {"10. Fanvakten"}
	 \include "Fanvakten-Kl1.ly"
%	 \pageBreak
		
\tocItem \markup {"11. Ge mig en dag (Ta mig till havet)"}
	 \include "Ge_mig_en_dag-Kl1.ly"
	 \pageBreak

\tocItem \markup {"12. Granada"}
	 \include "Granada-Kl1.ly"
	 \pageBreak

\tocItem \markup {"13. Hock Heideckburg"}
	 \include "Hock_Heideckburg-Kl1.ly"
	 \pageBreak

\tocItem \markup {\concat {"14. I Pratern blommar "\char #229 "ter tr"
	 \char #228 "den"}}
	 \include "I_pratern_blommar_ater_traden-Kl1.ly"
%	 \pageBreak

\tocItem \markup {"15. Islands in the stream"}
	 \include "Islands_in_the_stream-Kl1.ly"
	 \pageBreak
		
\tocItem \markup {"16. Just the way you are"}
	 \include "Just_the_way_you_are-Kl1.ly"
	 \pageBreak

\tocItem \markup {"17. Karlskrona (Chefsmarsch)"}
	 \include "Karlskrona-Kl1.ly"
%	 \pageBreak
		
\tocItem \markup {"18. Kom i min famn"}
	 \include "Kom_i_min_famn-Kl1.ly"
	 \pageBreak

\tocItem \markup {"19. Kong Fredrick (Honnormarch)"}
	 \include "Kong_Fredrick_Honnormarch-Kl1.ly"
	 \pageBreak

\tocItem \markup {"20. Kungl. Vaxholms Kustartilleriregementets marsch"}
	 \include "Kungl_vaxholms_artilleri-Kl1.ly"	 
	 \pageBreak
		
\tocItem \markup {"21. Liberty Bell"}
	 \include "Liberty_Bell-Kl1.ly"
%	 \pageBreak

\tocItem \markup {"22. Malaga"}
	 \include "Malaga-Kl1.ly"
	 \pageBreak

\tocItem \markup {"23. Matador"}
	 \include "Matador-Kl1.ly"
%	 \pageBreak

\tocItem \markup {"24. Memory"}
	 \include "Memory-Kl1.ly"
	 \pageBreak

\tocItem \markup {"25. National Emblem"}
	 \include "National_emblem-Kl1.ly"
	 \pageBreak

\tocItem \markup {"26. On the Square"}
	 \include "On_the_square-Kl1.ly"
%	 \pageBreak
	
\tocItem \markup {"27. On the street where you live (My Fair Lady)"}
	 \include "On_the_street_where_you_live-Kl1.ly"
	 \pageBreak
			
\tocItem \markup {"28. Our Director"}
	 \include "Our_director-Kl1.ly"
	 \pageBreak

\tocItem \markup {\concat {"29. " \char #214 "verste Tillman"}}
	 \include "Overste_Tillman-Kl1.ly"
	 \pageBreak
		
\tocItem \markup {\concat {"30. P" \char #229 " Vakt"}}
	 \include "Pa_vakt-Kl1.ly"
	 \pageBreak

\tocItem \markup {"31. Puttin' on the Ritz"}
	 \include "Puttin_on_the_ritz-Kl1.ly"
%	 \pageBreak    
    
\tocItem \markup {32. Svensk Polismarsch}
	 \include "Svensk_Polismarsch-Kl1.ly"
	 \pageBreak
  	  
\tocItem \markup {"33. Svenska Fygarmarsch"}
	 \include "Svenska_Flygarmarschen-Kl1.ly"
	 \pageBreak
		
\tocItem \markup {\concat {"34. Under den bl" \char #229 " gula fanan"}}
	 \include "Under_den_bla_gula_fanan-Kl1.ly"
	 \pageBreak

\tocItem \markup {"35. We'll meet again"}
	 \include "Well_meet_again-Kl1.ly"
%	 \pageBreak

\tocItem \markup {\concat {"36. Wein Bleibt Wien"}}
	 \include "Wien_bleibt_wien-Kl1.ly"
	 \pageBreak

\tocItem \markup {\concat {"37. Visa vid vindens "\char #228 "ngar"}}
	 \include "Visa_vid_vindens_angar-Kl1.ly"
%}				
}%end book

