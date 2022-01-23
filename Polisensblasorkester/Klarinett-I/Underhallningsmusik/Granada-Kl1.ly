\version "2.22.1"
% When ready to include in collection:	1. Comment out top section with \Include file(s)
%					2. \midi section if present.
%Comment out from here
%{
\include "../../../Includes/Polis_format.ily"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key ees \major \time 4/4 
    	    \compressEmptyMeasures
    	    \set Score.markFormatter = #format-mark-box-numbers
    	    \partial 4 g8\f^\markup {\bold {Moderato}} b |d2~ d8 d d d 
    	    d d ees4~ ees8 ees ees ees |ees-> r r4 r2 | r4 r g-> r |g r g r8 g 
    	    g4 r4 r\fermata r8 g, \bar "||"
    	    
%Rehearsal mark 1
	\mark \default
    	c2\mf bes~ |bes4 g ees f |g8 bes4 aes8 g2~ |g r4 g8 g |c4. c8 d4 d8 d 
    	bes2:8 c4 c8 c |g1~ |g2 r4 g8->\f b->
    	
%Rehearsal mark 2
	\mark \default
	d2~ d8 d d d |ees4 f \times 2/3 {ees16 f ees} d8~ d4~ |d2 r4 g,8 b
	d2~ d8 d d d |d d ees4~ ees8 ees ees ees \bar "||"

%Rehearsal mark 3
	\mark \default
   	\time 3/4
   	ees r\fermata ees4 (c) \bar "||"
   	d2.~\f^\markup {\bold {Piu mosso.}} |d ( |ees) ( |d4) (c2) |d2.~ |d ( |
   	ees) ( |d4) (c2) |d8-> r r4 r |d8-> r r4 r8 d-> |d-> r r4\fermata r8 e,\p
   	\bar "||"
   	
%Rehearsal mark 4
	\mark \default
	\key c \major
	g4 g4. g8 |a4 a4. a8 |b4 b4. b8 |c4^\markup {rall........} d4. b8 
	\times 2/3 {a8 (b a} g2~)
	g2.~ |g~ |g2 r8 d\mf |g4 g4. g8 |a4 a4. a8 |b4 b4. b8 
	c4^\markup {rall........} d4. b8 
	c16 (d c b a2~)|a2.~ |a~ |a2 r8 e\mf
	
%Rehearsal mark 5
	\mark \default
	g4 g4. g8 |a4 a4. a8 |b4 b4. b8 |c4 d c 
	e8 d16 c b2~ |b2.~ |b2.~ 
	b2 r8 g'\f 
%Rehearsal mark 6
	\mark \default
	fis4 dis4. dis8 |fis4 fis4. a8 |\repeat percent 2 {g4 g4. g8} 
	\repeat percent 2 {fis4 dis4. dis8} |b4^\markup {rall.....} dis (e) 
	f2\fermata r8 e,
	
%Rehearsal mark 7
	\mark \default
	g4 g4. g8 |a4 a4. a8 |b4 b4. b8 |c4 d4. b8 |\times 2/3 {a8 (b a} g2~)
	g2.~ |g~ |g2 r8 d\mf |g4 g4. g8 |a4 a4. a8 |b4 b4. b8 |c4 d4. b8 
	c16 (d c b a2~)|a2.~ |a~ |a2 r8 e'\mf

%Rehearsal mark 8
	\mark \default
	c'4 c4. c8 |bes4 bes4. bes8 |a4 a4. a8 |aes4 aes4. aes8 |g4 g4. g8
	f4 f4. f8 |e f g2~ |g r8 g\ff |c4^\markup {rall.....} c4. c8 
	d4 c4.\fermata d8 
	e8.-> d16 c4.-- (b8) |d4-> c4. a8 |b8. a16 g4. g8 |a4 g4. (a8) |c2.~
	c~ |c~ |c8 r r4 f,~-> |f2 f4 ( |g8->) r r4 r \bar "|." 
	
    }%end relative
    \header {
    	    piece = "Granada"
    	    composer = "A. Lara"
    	}
  }%end score
