\version "2.18.2"

\include "../../formatangaben.ly"
\include "../../mergerests.ly"



globalWerstMeiLiacht = {
  \taktstil
  \key f\major
  \time 3/4
  \autoBeamOff
}

sopranNotenWerstMeiLiacht = \relative c' {
  \globalWerstMeiLiacht
  \partial 4 \slurDashed c8( c)  |
  a'4. a8 a4 |
  c a f8( f) |
  \slurSolid
  f4. d8 d4 |
  c2. \breathe |
  bes'4.( a8) g4 |
  e4 d c |
  c2.~ |
  c4 r4
  \repeat volta 2 {
    c8 c |
    a'4. a8 \slurDashed a8( a8) |
    c4 a f8 f |
    f4. d8 d4 |
    c2 \breathe f4 |
    g4.( g8) a4 |
    bes4. e,8 e4 |
    f2.~ |
    f4 r4
  }

}

altNotenWerstMeiLiacht = \relative c' {
  \globalWerstMeiLiacht
  \partial 4 \slurDashed c8( c)  |
  f4. f8 f4 |
  f4 f c8( c) |
  \slurSolid
  d4. bes8 bes4 |
  c2. \breathe |
  e2 e4 |
  bes4 bes bes |
  a2.~ |
  a4 r
  \repeat volta 2 {
    c8 c |
    f4. f8 \slurDashed f8( f8) |
    f4 f c8 c |
    d4. bes8 bes4 |
    c2 \breathe c4 |
    e4.( e8) e4 |
    e4. d8 c4 |
    c2.~ |
    c4 r
  }
}

tenorNotenWerstMeiLiacht = \relative c' {
  \globalWerstMeiLiacht
  \partial 4 \slurDashed c8( c) |
  c4. c8 c4 |
  a4 c a8( a) |
  \slurSolid
  bes4. f8 f8[ g] |
  a2. \breathe |
  d4.( c8) bes4 |
  g g g |
  f2.~ |
  f4 r4
  \repeat volta 2 {
    c'8 c |
    c4. c8 \slurDashed c8( c8) |
    a4 c a8 a |
    bes4. f8 f8[ g] |
    a2 \breathe a4 |
    bes4.( bes8) c4 |
    d4. bes8 bes4 |
    a2.~ |
    a4 r4
  }
}

bassNotenWerstMeiLiacht = \relative c' {
  \globalWerstMeiLiacht
  \clef "bass"
  \partial 4 \slurDashed c8( c) |
  f,4. f8 f4 |
  f4 f f8( f) |
  \slurSolid
  bes,4 c d8[ e] |
  f2. \breathe |
  c2 c4 |
  c4 c8[ d8] e4 |
  f2.~ |
  f4 r4
  \repeat volta 2 {
    c8 c |
    f4. f8 \slurDashed f8( f) |
    f4 f f8 f |
    bes,4 c d8[ e] |
    f2 \breathe f4 |
    c4.( c8) c4 |
    c4. c8 c4 |
    f2.~ |
    f4 r
  }
}


stropheIWerstMeiLiacht = \lyricmode {
  \set stanza = "1."

  Wo is denn in Schnee
  no a Weg -- le zu dir,
  Kind -- le fein, Kind -- le klan, __
  is nit guat in da Fin -- starn,
  wånn ka Steig -- le mehr is,
  da \set ignoreMelismata = ##t Schnee 
  werd mi \unset ignoreMelismata gån -- za va -- wahn. __
}

stropheIIWerstMeiLiacht = \lyricmode {
  \set stanza = "2."
  \set ignoreMelismata = ##t Å -- ba \unset ignoreMelismata her ü -- ban Schnee
  geht a Schein bei da Nåcht,
  Kind -- le klan, Kind -- le fein, __
  is ka Herz -- le var -- lå -- ß’n,
  dås se fürcht bei da Nåcht,
  werst åll’n __ a Weg u -- me sein. __
}

stropheIIIWerstMeiLiacht = \lyricmode {
  \set stanza = "3."
  A Weg für mi u -- me,
  \set ignoreMelismata = ##t
  wånn -- de 
  \unset ignoreMelismata
  Gfrier au -- fe steht,
  Kind -- le fein, Kind -- le klan, __
  werst mi trö -- stn, 
  \set ignoreMelismata = ##t werst mi 
  \unset ignoreMelismata trå -- gn,
  
  werst mei Liacht u -- me sein,
  dei \set ignoreMelismata = ##t Liab werd ka Schnee nit 
  \unset ignoreMelismata va -- wahn. __
}

stropheVier = \lyricmode {
  \set stanza = "4."
}


scoreWerstMeiLiachtUmeSeinZweiSysteme = {

  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { Sopran Alt }
      shortInstrumentName = \markup \center-column { S A }
    }
    <<
      \new Voice = "vsop" { \voiceOne \sopranNotenWerstMeiLiacht }
      \new Voice = "valt" { \voiceTwo \altNotenWerstMeiLiacht }
    >>
    \new Lyrics \with {
      %\override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "vsop" \stropheIWerstMeiLiacht
    \new Lyrics \with {
      %\override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "vsop" \stropheIIWerstMeiLiacht
    \new Lyrics \with {
      %\override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "vsop" \stropheIIIWerstMeiLiacht
    \new Lyrics \with {
      %\override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "vsop" \stropheVier
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { Tenor Bass }
      shortInstrumentName = \markup \center-column { T B }
    }
    <<
      \clef bass
      \new Voice = "vten" { \voiceOne \tenorNotenWerstMeiLiacht }
      \new Voice = "vbass" { \voiceTwo \bassNotenWerstMeiLiacht }
      \addlyrics \stropheIWerstMeiLiacht
      \addlyrics \stropheIIWerstMeiLiacht
      \addlyrics \stropheIIIWerstMeiLiacht
      \addlyrics \stropheVier
    >>
  >>
}

scoreWerstMeiLiachtUmeSein = {
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.instrumentName = "Sopran"
      \set Staff.shortInstrumentName = "S"
      \new Voice = "vsop" {
        \sopranNotenWerstMeiLiacht
      }
      \addlyrics \stropheIWerstMeiLiacht
      \addlyrics \stropheIIWerstMeiLiacht
      \addlyrics \stropheIIIWerstMeiLiacht
      \addlyrics \stropheVier
    >>
    \new Staff <<
      \set Staff.instrumentName = "Alt"
      \set Staff.shortInstrumentName = "A"
      \new Voice = "valt" {
        \altNotenWerstMeiLiacht
      }
      \addlyrics \stropheIWerstMeiLiacht
      \addlyrics \stropheIIWerstMeiLiacht
      \addlyrics \stropheIIIWerstMeiLiacht
      \addlyrics \stropheVier
    >>
    \new Staff <<
      \set Staff.instrumentName = "Tenor"
      \set Staff.shortInstrumentName = "T"
      \new Voice = "vten" {
        \clef "G_8"
        \tenorNotenWerstMeiLiacht
      }
      \addlyrics \stropheIWerstMeiLiacht
      \addlyrics \stropheIIWerstMeiLiacht
      \addlyrics \stropheIIIWerstMeiLiacht
      \addlyrics \stropheVier
    >>
    \new Staff <<
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "B"
      \new Voice = "vbass" {
        \bassNotenWerstMeiLiacht
      }
      \addlyrics \stropheIWerstMeiLiacht
      \addlyrics \stropheIIWerstMeiLiacht
      \addlyrics \stropheIIIWerstMeiLiacht
      \addlyrics \stropheVier
    >>
  >>
}

