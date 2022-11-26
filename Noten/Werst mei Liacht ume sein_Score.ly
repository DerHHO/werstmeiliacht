\version "2.18.2"

\include "Werst mei Liacht ume sein_Noten.ly"

\score {
  \header {
    title = "Werst mei Liacht ume sein"
    poet = "T: Gerhard Glawischnig"
    composer = "M: Günther Mittergradnegger"
    arranger = "S: Martin Wadsack, 6.11.2018"
  }


  \scoreWerstMeiLiachtUmeSei
  \layout {
    \context {
      \Staff
      \override RestCollision.positioning-done = #merge-rests-on-positioning
    }
  }
}