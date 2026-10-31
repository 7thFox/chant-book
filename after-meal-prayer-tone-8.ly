\include "common.ly"

\header {
  title    = "Prayer After Meals"
  subtitle = "Tone 8"
  % composer = "Valaam Chant"
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
        % \clef treble
        c4 (d) e f e d2 d4 c2 \bar "|"
        c4 d e f f e  d2 d4 c2 \bar "|"
        c4 d e f e d2 c2 \bar "|"
        c4 d e f e d2 c2 \bar "|"
        c4 c d e f e d2 c1 \bar "|."
        }
    >>

    \new Lyrics \lyricsto "melody" {
      We thank Thee, O Christ our God,

      that Thou hast sat -- is --
      \once \override LyricText.self-alignment-X = #LEFT
      fied_us_with_Thine earth -- ly gifts;

      de -- prive us
      \once \override LyricText.self-alignment-X = #LEFT
      not_of_Thy
      \once \override LyricText.self-alignment-X = #LEFT
      hea-ven-ly king -- dom,

      but as Thou
      \once \override LyricText.self-alignment-X = #LEFT
      came-est_a-
      \once \override LyricText.self-alignment-X = #LEFT
      mong_Thy_disc -- i -- ples,

      O
      % \once \override LyricText.self-alignment-X = #LEFT
      Sav -- iour, and
      \once \override LyricText.self-alignment-X = #LEFT
      gav-est_them_peace,
      \once \override LyricText.self-alignment-X = #LEFT
      come_to_us_and save us.
    }
  >>
}