\version "2.18.0"
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
    	    \key c \major \time 4/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-box-letters
    	    \set Score.markFormatter = #format-mark-box-numbers
%    	    \override TupletBracket #'bracket-visibility = ##t
    	    r4^\markup {\bold {Slowly}} \times 2/3 { e,8\mp (g c } e2)
    	    r4 \times 2/3 { e,8 (g c } e2) 
    	    
%Rehearsal mark 3
	\mark 3
    	\repeat volta 2 {
    		\repeat unfold 3 { r4 \times 2/3 { c,8 (e a } c2)}
    		r4 \times 2/3 { e,8 (g c } e2 |g4--) \times 2/3 { d4 e8} 
    		f-- g-- a-- b-- |\times 2/3 { c8 (b a } g4) g 
    		\times 2/3 { e4 (c8} 
    	}
    	\alternative {
  		{g'4--) \times 2/3 {g,8 (b d} g4 f 
  		 e) \times 2/3 { c,8 (e a } c2) }
  		{g'4--\repeatTie \times 2/3 {g,8 (b d} g4 f 
  		e2) \times 2/3 {c4\mf d8} \times 2/3 {e8 (d c} }
        }
        
%Rehearsal mark 13
	\mark 13        
        b4\<)_\markup {Legato} e b\> a\! |b4\< e b\> \times 2/3 {a4 a8\!} 
        b4 e e \times 2/3 {d4 c8} |d4 \times 2/3 {d,8\< (g b} 
        \times 2/3 { d4) d8} \times 2/3 {d8 (e fis\!} 
        
%Rehearsal mark 17
	\mark 17                
        g4\f) g g8-- b~ b a16 (g) |fis2 fis8-- a~ a g |g2 g4-- g-- 
        fis--\> fis2.\!
        
%Rehearsal mark 21
	\mark 21                
	c4--\mf c~ \times 2/3 {c8 b (c} \times 2/3 {d8 c a} 
    	c4--) c~ \times 2/3 {c8 b (c} \times 2/3 {d8 c g} 
    	a4--) a-- c-- \times 2/3 {a'8 (g f} |e2.) \times 2/3 {e4 g8}
    	g4-- \times 2/3 {d4 e8} f-- g-- a-- b-- |\times 2/3 {c8 (b a} g4) g
    	\times 2/3 {e4 c8} |g'4-- \times 2/3 {g,8 (b d} g4) f-- 
    	e2 \times 2/3 {c4\mf d8} \times 2/3 {e8 (d c} 

%Rehearsal mark 29
	\mark 29                
	b4\<)_\markup {Legato} e b\> a\! |b4\< e b\> a\! 
	b4 e e \times 2/3 {d4 c8} |d4 d~ \times 2/3 {d4 c8} 
	\times 2/3 {d8 (e fis} 
	
%Rehearsal mark 33
	\mark 33
	g4)  g g8-- b~ b a16 (g) |fis2 fis8-- a~ a g 
	g2_\markup {\italic {cresc. poco a poco}} g4-- g-- 
	fis2 r4 \times 2/3 {c8->\< d-> e->\!} \bar "||"
	
%Rehearsal mark 37
	\mark 37                
	\key f \major
	f4->\f f~-> \times 2/3 {f8-> e-> f->} \times 2/3 {g8-> f-> d->}
	f4-> f~-> \times 2/3 {f8-> e-> f->} \times 2/3 {g8-> f-> c->}
	d4-> d~-> \times 2/3 {d8-> bes-> d->} \times 2/3 {d8-> (c)-> bes->}
	a2.-> \times 2/3 {a4 c8} c4-- \times 2/3 {g4 a8} bes-- c-- d-- e--
	\times 2/3 {f8-> (e) d->} c2\> \times 2/3 {a4 f8\!} 
	c'4--\mf c2_\markup {\italic {poco rit.}} \times 2/3 {d,4 f8}
	f2.^\markup {\italic {a tempo}} r4
	
%Rehearsal mark 45
	\mark 45                
	r2 c4\mf (g' |c1)\>^\markup {\italic {rit.....}} 
	r4\! c,\mp (f a8 c |f1~ |f2.)\fermata r4
	\bar "|."
	
    }%end relative
    \header {
    	    piece = "Memory"
    	    composer = "Andrew Lloyd Webber"
    	}
  }%end score
