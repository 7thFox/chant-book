\include "common.ly"

\header {
  title    = "Prayer After Meals"
  subtitle = "Tone 8"
  % composer = "Valaam Chant"
}

\score  {
  <<
    % \transpose g f

    \new Staff <<
      \new Voice = "soprano" \relative c'' {
        \key g \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        g4 a  b c     b a     g2 \bar "|"
        g4 a  b c c c b a2 a4 g2 \bar "|"
        g4 a  b c c c b a2    g \bar "|"
        g4 a  b c c c b a     g2 \bar "|"
           a4 b c     b a2    g1 \bar "|."
      }

      \new Voice = "alto" \relative c' {
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        d4 fis  g g     g fis       d2 \bar "|"
        d4 fis  g g g g g fis2 fis4 d2 \bar "|"
        d4 fis  g g g g g fis2      d \bar "|"
        d4 fis  g g g g g fis       d2 \bar "|"
           fis4 g g     g fis2      d1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano" {
      We thank Thee, O Christ our God,

      that Thou hast
      \once \override LyricText.self-alignment-X = #LEFT
      sat -- is -- fied
      \once \override LyricText.self-alignment-X = #LEFT
      us_with_Thine earth -- ly gifts;

      de -- prive us
      \once \override LyricText.self-alignment-X = #LEFT
      not of Thy
      \once \override LyricText.self-alignment-X = #LEFT
      hea-ven-ly king -- dom,

      but as Thou
      \once \override LyricText.self-alignment-X = #LEFT
      came -- est a-
      \once \override LyricText.self-alignment-X = #LEFT
      mong_Thy_disciples,_O_Saviour,_and

      \break
      \once \override LyricText.self-alignment-X = #LEFT
      gavest_them peace,
      \once \override LyricText.self-alignment-X = #LEFT
      come to us and save us.
    }

    \new Staff <<
      \new Voice = "tenor" \relative c' {
        \voiceOne
        \cadenzaOn
        \key g \major
        \clef bass
        \omit Staff.TimeSignature

        b4 d  d e d d     b2 \bar "|"
        b4 d  d e e e d d2 d4 b2 \bar "|"
        b4 d  d e e e d d2    b  \bar "|"
        b4 d  d e e e d d     b2 \bar "|"
           d4 d e d d2    b1 \bar "|."
      }

      \new Voice = "bass" \relative c' {
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        g4 d  g c, g' d     g2 \bar "|"
        g4 d  g c, c e g d2 d4 g2 \bar "|"
        g4 d  g c, c e g d2    g \bar "|"
        g4 d  g c, c e g d     g2 \bar "|"
           d4 g c, g' d2    g1 \bar "|."
      }
    >>
  >>
}