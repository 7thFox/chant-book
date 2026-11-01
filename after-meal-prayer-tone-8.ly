\include "common.ly"

\header {
  title    = "Prayer After Meals"
  subtitle = "Tone 8"
  % composer = "Valaam Chant"
}

\score {
  <<
    \new Staff <<
      \new Voice = "soprano" \relative c' {
        \key f \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 g  a bes a g     f2 \bar "|"
        f4 g  a bes a g2 g4 f2 \bar "|"
        f4 g  a bes a g2    f \bar "|"
        f4 g  a bes a g     f2 \bar "|"
           g4 a bes a g2    f1 \bar "|."
        }
    >>

    \new Lyrics \lyricsto "soprano" {
      We thank Thee, O Christ our God,

      that Thou hast
      \once \override LyricText.self-alignment-X = #LEFT
      sat-is-fied
      \once \override LyricText.self-alignment-X = #LEFT
      us_with_Thine earth -- ly gifts;

      de -- prive us
      \once \override LyricText.self-alignment-X = #LEFT
      not_of_Thy
      \once \override LyricText.self-alignment-X = #LEFT
      hea-ven-ly king -- dom,

      but as Thou
      \once \override LyricText.self-alignment-X = #LEFT
      came-est_a-
      \once \override LyricText.self-alignment-X = #LEFT
      mong_Thy_disciples,_O_Saviour,_and

      \break
      \once \override LyricText.self-alignment-X = #LEFT
      gavest_them peace,
      \once \override LyricText.self-alignment-X = #LEFT
      come to us and save us.
    }
  >>
}