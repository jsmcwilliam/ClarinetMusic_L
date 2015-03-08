\version "2.18.0"

%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4")
#(set-global-staff-size 15) % set staff-size when ready to print
#(allow-volta-hook "||")

date = #(strftime "%d-%m-%Y" (localtime (current-time)))
OneBR = R1^\markup{\normalsize\number 1}
OneBarRest = R2.^\markup{\normalsize\number 1}

\include "Marsch_format.ly"

\book {
	
  
  \header { 
  	  title = \markup {\concat {"Polisensbl" \char#229 "sorkester"}}
  	  subtitle = "Marscher - Klarinett II i Bb"
	  subsubtitle = \markup {\concat {"("\date")"}}
%  	  instrument = "Klarinett II i Bb"
  	  copyright = "Kopierad av John McWilliam"
  }
\pageBreak
\markuplist \table-of-contents
\pageBreak

\tocItem \markup {"1. Du Gamla Du Fria"}
  	  \include "Du_Gamla_Du_Fria-Kl2.ly"
%  	  \pageBreak

\tocItem \markup {\concat {"2. Svenska Arm"\char#233"ns Paradmarsch"}}
  	  \include "Svenska_Armens_Paradmarsch-Kl2.ly" 	  
%  	  \pageBreak

  	  \tocItem \markup {"3. Sommar, Sommar, Sommar..."} 
  	  \include "Sommar_sommar-Kl2.ly" 	  
%    	  \pageBreak

\tocItem \markup {"4. PSALM 425 - Den blomstertid nu kommer"} 
   		 \include "Den_blomstertid_nu_kommer-Kl2.ly" 	  
   		 \pageBreak

\tocItem \markup {\concat {"5. Afton p"\char #229 " Solvik"}}
		\include "Afton_pa_Solvik-Kl2.ly"
%		\pageBreak

\tocItem \markup {"6. Beatrice-Aurore"}
		\include "Beatrice_Aurore-Kl2.ly"
		\pageBreak

\tocItem \markup {"7. Colonel Bogey (saknas)"} 
%   		 \include "Colonel_bogey-Kl2.ly" 	  
%   		 \pageBreak

\tocItem \markup {\concat {"8. Den f" \char #246 "rsta g" \char #229 "ng jag s"
		\char #229 "g dig"}}
		\include "Den_forsta_gang_jag_sag_dig-Kl2.ly"	
%		\pageBreak

\tocItem \markup {"9. Estrellita"}
		\include "Estrellita-Kl2.ly"
		\pageBreak

\tocItem \markup {"10. Fanvakten"}
		\include "Fanvakten-Kl2.ly"
%		\pageBreak
		
\tocItem \markup {"11. Ge mig en dag (Ta mig till havet)"}
		\include "Ge_mig_en_dag-Kl2.ly"
		\pageBreak

\tocItem \markup {"12. Granada (saknas)"} 
%   		 \include "Granada-Kl2.ly" 	  
%   		 \pageBreak

\tocItem \markup {"13. Hock Heideckburg"}
		\include "Hock_Heideckburg-Kl2.ly"
		\pageBreak

\tocItem \markup {\concat {"14. I Pratern blommar "\char #229 "ter tr"
		\char #228 "den"}}
		\include "I_pratern_blommar_ater_traden-Kl2.ly"
%		\pageBreak

\tocItem \markup {"15. Islands in the stream"}
		\include "Islands_in_the_stream-Kl2.ly"
		\pageBreak
		
\tocItem \markup {"16. Just the way you are"}
		\include "Just_the_way_you_are-Kl2.ly"
%		\pageBreak

\tocItem \markup {"17. Karlskrona (Chefsmarsch)"}
		\include "Karlskrona-Kl2.ly"
		\pageBreak
		
\tocItem \markup {18. Kom i min famn}
		\include "Kom_i_min_famn-Kl2.ly"
		\pageBreak

\tocItem \markup {"19. Kong Fredrick (Honnormarch)"}
		\include "Kong_Fredrick_Honnormarch-Kl2.ly"
		\pageBreak

\tocItem \markup {"20. Kungl. Vaxholms Kustartilleriregementets marsch (saknas)"}
%		\include "Kungl_vaxholms_artilleri-Kl2.ly"
%		\pageBreak

\tocItem \markup {"21. Liberty Bell"}
		\include "Liberty_Bell-Kl2.ly"
%		\pageBreak

\tocItem \markup {"22. Malaga"}
		\include "Malaga-Kl2.ly"
		\pageBreak

\tocItem \markup {"23. Matador"}
		\include "Matador-Kl2.ly"
%		\pageBreak

\tocItem \markup {"24. Memory"}
%		\include "Memory-Kl2.ly"
%		\pageBreak

\tocItem \markup {"25. National Emblem"}
		\include "National_emblem-Kl2.ly"
		\pageBreak

\tocItem \markup {"26. On the Square"}
		\include "On_the_square-Kl2.ly"
%		\pageBreak
	
\tocItem \markup {"27. On the street where you live (My Fair Lady)"}
		\include "On_the_street_where_you_live-Kl2.ly"
		\pageBreak
			
\tocItem \markup {"28. Our Director"}
		\include "Our_director-Kl2.ly"
%		\pageBreak

\tocItem \markup {\concat {"29. " \char #214 "verste Tillman"}}
		\include "Overste_Tillman-Kl2.ly"
		\pageBreak
		
\tocItem \markup {\concat {"30. P" \char #229 " Vakt"}}
		\include "Pa_vakt-Kl2.ly"
		\pageBreak

\tocItem \markup {"31. Putin' on the Ritz"}
%		\include "Putin_on_the_ritz-Kl2.ly"
%		\pageBreak   
     
\tocItem \markup {32. Svensk Polismarsch}
		\include "Svensk_Polismarsch-Kl2.ly"
		\pageBreak
	  
\tocItem \markup {"33. Svenska Fygarmarsch"}
		\include "Svenska_Flygarmarschen-Kl2.ly"
		\pageBreak
		
\tocItem \markup {\concat {"34. Under den bl" \char #229 " gula fanan"}}
		\include "Under_den_bla_gula_fanan-Kl2.ly"
		\pageBreak
		
\tocItem \markup {"35. We'll meet again (saknas)"}
%		\include "Well_meet_again-Kl2.ly"
%		\pageBreak

\tocItem \markup {"36. Wien_Bleibt_Wien (saknas)"}
%		\include "Wien_bleibt_wien-Kl2.ly"
%		\pageBreak

\tocItem \markup {\concat {"37. Visa vid vindens "\char #228 "ngar"}}
		\include "Visa_vid_vindens_angar-Kl2.ly"
%}		
}%end book

