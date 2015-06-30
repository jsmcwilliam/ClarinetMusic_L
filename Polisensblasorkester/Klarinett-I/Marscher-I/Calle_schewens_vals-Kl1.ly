\version "2.18.0"
% When ready to include in collection: 1. Comment out top section.
% 				       2. Create include file of relative and
%					  header.
%#(allow-volta-hook "||")
%Comment out from here
%{
#(ly:set-option 'point-and-click #t)
%#(set-default-paper-size "a5" 'landscape)
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 18) % set staff-size when ready to print

\include "Marsch_format.ly"

%...to here
%}
  \score {

    % Svenska Polisens Marscher: 1. Title    
    \relative c'' { 
    	    \key f \major \time 3/4 
    	    \compressFullBarRests
    	    \set Score.markFormatter = #format-mark-circle-letters
    	    
    c'4--\f c-- c-- |c-- c-- c-- |c-- c4.-- c8-- |bes2 (a4) |r8 d,,\< e [f g a] 
    bes c d e f g |f\ff r f2 | r4 c2 |R2.*2 \bar "||" 
    
%Rehearsal mark
    \mark \default 
    R2.*15 |r4 r\p a |a8\< d, f a d c |b g b d e d |c e, g a c d\ff\> 
    e2.\trill |R2.*3\! |r4 r\f c' |c c c |\times 2/3 {c8 (d c)} b4 c |d c4. bes!8 
    a2 a4 |bes (d) r8 f, |g4 (bes) r8 e, |f a, c f a c |f,2 r4 \bar "||"
    
%Rehearsal mark
    \mark \default
    \key bes \major
    R2.*15 |r8\p f,\< g [a bes c] |d\! ees f ees d f |fis4. fis8 g a |g2 f!4 
    ees2~ ees16 g (a g) |f4 a f |\times 2/3 {ees'8 (f ees)} d4 cis |d2.~ |d2 r4
    d,8 ees f ees d f |fis4. fis8 g a |
    g2 f!4 |ees2. |f,4. a8 c ees |f2~\trill \times 2/3 {f8 (e f)} bes2.~ 
    bes2 r4 \bar "||"
 
 %Rehearsal mark
    \mark \default
    \key f \major
    R2.*15 |r4 r\p a4\< |a a a |b b b |c c4. d8 |e2->\ff e4 |d c b |a b4. g8 
    c2.~_\markup {\italic {rit.....}} |c2 c4\f |c_\markup {\italic {a tempo}} c c
    \times 2/3 {c8 (d c)} b4 c |d c4. bes!8 |a2 a4 |bes (d) r8 f, 
    g4 (bes) r8 e, |f8 a, c f a c |f,2 r4 \bar "||"
    
%Rehearsal mark
    \mark \default
    d2.\pp^\markup {\left-align {Rolig (con sentimento) \line {Kor. Solo}}} ( 
    a g f) |f (g a) |cis4-- d-- e-- |d2. (a bes a) aes (g f~ 
    f2) a4\mf^\markup {Soli}
    
%Rehearsal mark
    \mark \default
    a4 a a |fis g4. a8 |bes4 bes4. gis8 |a2 a4 |g g4. g8 |f4 f4. f8 |e4 (a2~)
    a4\pp d-- e-- |d2. (a bes a) aes (g f2 fis4 |g) r r \bar "||"
    
%Rehearsal mark
    \mark \default
    
    R2.*15^\markup {\bold \large Tempo I} |r4 r a'4\p\< |a a a |b b b |c c4. d8 
    e2->\ff e4 |d c b |a b4. g8 |c8-> r c2~\trill |c8 r\( \times 2/3 {c,8 (d e)}
    \times 2/3 {f (g a)} |c4\) c c |\times 2/3 {c8 (d c)} b4 c |d c4. bes8 
    a2 c,8\fff a |g_\markup {molto rall. e marcato} a bes c d e 
    f g a bes a4\fermata |f2.-^~ |f2 r4 \bar "|."
    
    }%end relative
    
    \header {
    	    piece = "Calle Schewens Vals"
    	    composer = "Evert Taube"
    	}
    \layout {ragged-last = ##t
    	}
    	
  }%end score
