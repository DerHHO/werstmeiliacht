\version "2.18.2"

\include "dynamicparams.ly"
#(set-global-staff-size 16)
\include "Werst mei Liacht ume sein_Score2.ly"

\header {
  tagline = ##f
  subsubtitle = \subSubTitle
  title = "Werst mei Liacht ume sein"
  poet = "T: Gerhard Glawischnig"
  composer = "M: Günther Mittergradnegger"
  arranger = "S: Martin Wadsack, 6.11.2018"
}



\paper {
  ragged-last-bottom = ##f
  print-all-headers = ##f
}

\score {
  \unfoldRepeats
  \scoreWerstMeiLiachtUmeSein
  \midi {
    \tempo 4 = 80
  }
}
