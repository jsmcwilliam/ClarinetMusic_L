\version "2.12.3"
padText = #(define-music-function (parser location padding) (number?)
	  #{\once \override TextScript #'padding = #$padding #})

\relative c'' {
    \new Staff { 
    \time 3/4 
    \override DynamicLineSpanner #'staff-padding = #0
    \override DynamicLineSpanner #'padding = #0
    \override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
    \override DynamicLineSpanner #'Y-offset = #0
    \override TextScript #'slur-padding = #0
%    \set avoid-slur #'inside
    c4^\sf c 
%    \once\override DynamicLineSpanner #'staff-padding = #0
    c^\ff
    r8^\markup { \dynamic sf }
       \padText #2.5 d_\markup {\italic\larger "molto cresc"}
%	\override DynamicLineSpanner #'padding = #0
	 (e f g a)
%        \override Score.RehearsalMark #'direction = #DOWN
	g (g,\f a b\cresc c des) 
	\override Score.RehearsalMark #'padding = #2 \mark \default				%A
	c\! r r4 r4
	r2.^\markup {\bold\large\number 1}
	 \slurDown a' (a\f) 
%	\once \override Score.RehearsalMark #'padding = #5.0
	 ( bes2.)  \mark \default				%D
	r4 r8 fis4.


}
}
