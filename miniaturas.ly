% LilyBin

\header { 
  tagline = ""  % removed 
} 

\paper { 
  #(set-paper-size "a6landscape")
  indent = 0\mm 
  left-margin = 0\mm 
  right-margin = 0\mm 
  bottom-margin = 0\mm 
  top-margin = 0\mm  
  ragged-last-bottom = ##f 
  page-count = #1
} 

#(set-global-staff-size 18) % Tamaño de Pentagramas

\score{
	{
	    \omit Staff.TimeSignature % Esconde 
	    \small % Tamaño fuente notas \huge \large \normalsize \small \tiny \teeny
	    \time 2/2
	    \key f \major
		\relative c' {
		  \compressFullBarRests
		  \override MultiMeasureRest.expand-limit = #3 % Silencios agrupados y simbolo cambiado
		  
		  R1*8

		  \repeat volta 2 {
		  	f'1( f4.) c8 \tuplet 3/2 {a4 c f}
		  	ees1( ees2) \tuplet 3/2 {des4 ees des}
		  	c1*2
		  	<< 
		  	{ bes8-. c-. bes-. c-. bes2 
		  		des8-. ees-. des-. ees-. des4-^ ees-^ }
		  	{ ges,8-. aes-. ges8-. aes-. ges2
		  		bes8-. c-. bes8-. c-. bes4-^ c-^ }
		  	>>
		  }

		  R1*8

		  \repeat volta 2 {
		  	\repeat percent 2 {f8( g f e)( e) d4 e8} 
		    f8( g f e)( e) d4 c8 bes1
		    \repeat percent 2 {e8( f e d)( d) c4 d8 }
		    e8( f e d)( d) c4 bes8 a1 
		  }

		  R1*8 \bar "||"

		  \repeat percent 2 {
		  	<f' c>4 <f c>8 <f c> <a f> <a f> <g d> <g d> <f c>4 r r2
		  }
		  << {f4. f8 c4. c8 a4. a8 g4. g8 
		  f1( f8) r4. r2} 
		  {c'4. c8 a4. a8 f4. f8 e4. e8 
		  c1( c8) r4. r2} >>
		  \key bes \major
		  \repeat volta 2 {
		  	R1*5
		  	<<
		  	{ ees'8 f ees des ees f ees des ees f ees des ees2^\prall( ees4) }
		  	{ ces8 des ces bes ces des ces bes ces des ces bes ces2(ces4) }
		  	>>
		  	r r2 
		  	R1*5
		  	<<
		  	{ d8 e d c d e d c d e d c d2^\prall( d4) }
		  	{ bes8 c bes a bes c bes a bes c bes a bes2(bes4) }
		  	>>
		  	r r2
		  }
		  R1*16

		  \repeat volta 2 {
		  	<< {
			  	\repeat percent 3 {g'8-. a-. g-. a-. bes4-. r}
			  	\tuplet 3/2 {g a g} \tuplet 3/2 {bes a g}
			  	\repeat percent 3 {f8-. g-. f-. g-. a4-. r}
			  	\tuplet 3/2 {f g f} \tuplet 3/2 {a g f}
		    } {
		    	\repeat percent 3 {ees8-. f-. ees-. f-. g4-. r}
			  	\tuplet 3/2 {ees f ees} \tuplet 3/2 {g f ees}
			  	\repeat percent 3 {d8-. ees-. d-. ees-. f4-. r}
			  	\tuplet 3/2 {d ees d} \tuplet 3/2 {f ees d}
		    } >>
		  }

		  R1*10

		  <d a>\fermata \bar "|."
		}
	}

	\layout{}
	% \midi{ \tempo 2 = 120 }
}