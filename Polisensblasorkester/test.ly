\version "2.14.2"


\include "globals.ly"
%\include svenska.ly
	
	\relative c' { 
		\clef treble
		\Atime \Akey \AstringTempo
%{		\set Score.currentBarNumber = #1

  		bes''2.\p^\markup {\bold "Tempo poco ritenuto"}	
  		(fis2_\markup {\italic "con duolo"} 
  		g4 		|d2 \acciaccatura {f8} ees8. d16 | d2) r4 %}
  		
  		s2. 
  		\clef bass
  		c2.
  		bes4 bes \times 1/6 {bes16 bes bes bes bes bes}
  		a4 a a
}

\relative c' {
c4.(\p e8 g c d e)
\once \override Script #'extra-offset = #'(2.5 . 0) f2(\turn g4 f)
}

\relative c' {	\Atime \Akey \AstringTempo
		\set fontSize = #-4
		\override Script #'extra-offset = #'(2.5 . 0)
  		f,4.\turn^\markup {\natural}  d' c8. [bes16]
}

\relative c' {  \Atime \Akey

		d'1~\startTrillSpan d d\stopTrillSpan
		e8. e16 e4~ \times 2/3 {e8 [b b] b [c d]}
		\bar "|."

}

  \relative c' { 
  	    \time 2/4 
  	    d4 d
<<
  \new Voice = "one" {
    \autoBeamOff
    c'4 b8. a16 g4. f8 e4 d c2
  }
  \new Lyrics \lyricsto "one" {
    No more let sins and sor -- rows grow.
  }
 
>>
    \autoBeamOn
    c2 s1 d4 d f2 f2
 
  }
  
  %{
  \relative c' {
  	  \time 4/4
  	  r2 r8
<<        
	\new Voice = "melody" {
	\autoBeamOff
	\partial 4. c'4.^\markup {Sjung.........}

% Rehersal mark A
        \mark \default \slurDown
	\repeat volta 2 {
	 a4 a a8 a4 g8~ |g4. g8~ g4 r8 g8 |g4 g8 g~ g g g4 |f2. r4
	 \times 2/3 {r4 c (f a d a)} |e4 e8 d~ d c bes4 |e4 e8 d~ d c bes4
	}
	\alternative {
		{a2 r8 c'4.}
		{a,4 r4 r2}
	}
    	}
    	\new Lyrics \lyricsto "melody" {
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La,
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La
    	}
>>
	\autoBeamOn	
        s1
% Rehersal mark A
        \mark \default
        \Bkey
	d1\mf (e f g2) r4 d4
	}% end relative c

	melody = {	
	\repeat volta 2 {
	 a4 a a8 a4 g8~ |g4. g8~ g4 r8 g8 |g4 g8 g~ g g g4 |f2. r4
	\times 2/3 {r4 c f} 
	\times 2/3 {a d a} |e4 e8 d~ d c bes4 |e4 e8 d~ d c bes4
	}
	\alternative {
		{a2 r8 c'4.}
		{a,4 r2 r4 \bar "||"}
	}
    	}


 \relative c' {
  	  \time 4/4
  	  r2 r8
<<	
	\new Voice = "melody" {
	\autoBeamOff
	\partial 4. c'4.^\markup {Sjung.........}

% Rehersal mark A
        \mark \default 
        \slurDown
	\repeat volta 2 {
	 a4 a a8 a4 g8~ |g4. g8~ g4 r8 g8 |g4 g8 g~ g g g4 |f2. r4
	\times 2/3 {r4 c f} 
	\times 2/3 {a d a} |e4 e8 d~ d c bes4 |e4 e8 d~ d c bes4
	}
	\alternative {
		{a2 r8 c'4.}
		{a,4 r2 r4 \bar "||"}
	}
   	}
    	\new Lyrics \lyricsto "melody" {
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La,
    	La, La, La, La, La, La, La, La, La, La, La, La, La, La
    	}
>>
	\autoBeamOn \oneVoice
	s1
% Rehersal mark A
        \mark \default
	\Bkey 
	d1\mf (e f g2) r4 d4 |	
        
	\bar "|."
	} %end relative
%}
\version "2.14.2"

       <<

        \new Staff

        \relative c' {
        	\time 4/4
        	r2 r8
        	 <<
        	 \new Voice = "melody" {
        	         \autoBeamOff
        	         c'4.^\markup {Sjung.........} 
% Rehersal mark L
	         \mark \default
	         \repeat volta 2 {
	         	 a4 a a8 a4 g8~ |g4. g8~ g4 r8 g8 |g4 g8 g~ g g g4
|f2. r4
	         	 \times 2/3 {r4 c f}
	         	 \times 2/3 {a d a} |e4 e8 d~ d c bes4 |e4 e8 d~ d c
bes4
	         }
	         \alternative {
	         	 {a2 r8 c'4.}
	         	 {a,4 r2 r4 \bar "||"}
	         }
	 }
	 >>
	\autoBeamOn
% Rehersal mark B
                \mark \default
                %\Bkey
                d1\mf (e f g2) r4 d4 |
                \bar "|."
        } %end relative

        \new Lyrics \lyricsto "melody" {
        	La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La, La
                La, La, La, La, La, La, La, La, La, La, La, La, La, La.
        }
       >>


\relative c' {
	e'8 d b a

  <<
    { g2^\startTrillSpan_( }
    { s4. \grace { fis16[ g])\stopTrillSpan } }
  >>
  a1
}

\score {
  \relative c'' {
    c1 \mark \markup { \char ##x03EE }
    c1_\markup { \tiny { \char ##x03B1 " to " \char ##x03C9 } }
  }
  \addlyrics { O \markup { \concat { Ph \char ##x0153 be! } } }
}
\markup { "Copyright 2008--2011" \char ##x00A9 }

{
  \clef treble
%  \key f \major
  \time 3/4
  \relative c'' {
  	  
% Rehersal mark B
        \mark \default
        \key c \major
        \compressFullBarRests
        \repeat volta 2 {
        	R2.*6 |r8 c, (f a c f |e4) g8 (e cis g) | R2.*4
        }
        \alternative {
        	{c2.~ c b~ b}
        	{c2. b |r4 g a\< |bes8 bes\! bes4 bes 
        	 \bar "||"}
        }

    % Set segno sign as rehearsal mark and adjust size if needed
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
%    \once \override Score.RehearsalMark #'font-size = #3
    \mark \markup { \musicglyph #"scripts.segno" }

    % \cadenzaOn will suppress the bar count and \stopStaff removes the staff lines.
    \cadenzaOn
      \stopStaff
        % Some examples of possible text-displays

        % text line-aligned
        % ==================
        % Move text to the desired position
        \once \override TextScript #'extra-offset = #'( 2 . -3.5 )
        | s1*0^\markup { D.S. al Coda (Med Repris)} 

        % Increasing the unfold counter will expand the staff-free space
       \repeat unfold 3 {
          s4 s4 s4
          \bar ""
        }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff

   \break

     % Coda on new line, use this:
     \once \override Score.RehearsalMark #'extra-offset = #'( -8.42 . 1.75 )
     \once \override Score.RehearsalMark #'font-size = #5
     \mark \markup { \musicglyph #"scripts.coda" }

   % The coda
	bes2 e4 |c8-._\markup {\bold Rit..........} c-. a-. a-. f-. f-. |c4 r r

	\bar"|." \break
  }
}

  \clef treble
  \relative c'' {
  	    \key f \major
  	    \time 4/4
  	    c4 c c c | \break
  	    c4 c c c |
  }


