\include "common.ly"

\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
  }
}
\paper {
  systems-per-page = 6
}

\markup \fill-line {
  \null
  \center-column {
    \fontsize #4 \bold "Kontakion of St. John of San Francisco"
    "July 2"
  }
  \right-column {
    \fontsize #8 \bold "F35"
    "Obikhod"
    "Tone 4"
  }
}

\score {
  <<
    \new Staff <<
      \new Voice = "soprano" \relative c''
      {
        \key f \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        a4 a a2 (bes) a \bar "|"
        bes4 bes bes2 bes4 a2 \bar "||"

        a4 a a2 (bes) a \bar "|"
        bes4 bes bes2 bes4 bes a2 \bar "||"

        a4 a a2 bes4 bes a2 \bar "|"
        bes4 bes bes2 a2 \bar "||"

        a4 a2 bes a2 \bar "|"
        bes4 bes bes2 a2 \bar "||"

        a4 a a a2 bes a1 \bar "|."

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        f4 f f2 (g) fis!2 \bar "|"
        g4 g g2 g4 f!2 \bar "||"

        f4 f f2 (g) fis!2 \bar "|"
        g4 g g2 g4 g f!2 \bar "||"

        f4 f f2 g4 g fis!2 \bar "|"
        g4 g g2 f!2 \bar "||"

        f4 f2 g fis!2 \bar "|"
        g4 g g2 f!2 \bar "||"

        f4 f f f2 g f1 \bar "|."

      }
    >>

    \new Lyrics \lyricsto "soprano" {
          \once \override LyricText.self-alignment-X = #LEFT
        Following_Christ,_the Chief Shep -- herd,

          \once \override LyricText.self-alignment-X = #LEFT
        thou_wast_shown_to_be_most_excellent_a -- mong
      \break
        hi -- er -- archs;


          \once \override LyricText.self-alignment-X = #LEFT
        for_thou_didst_save_thy_sheep_from_destruction_by the god -- less,

      \break
          \once \override LyricText.self-alignment-X = #LEFT
        arranging_a_tran -- quil ref -- uge for them;


          \once \override LyricText.self-alignment-X = #LEFT
        and_exercising_unceas -- ing care for thy flock,

      \break
          \once \override LyricText.self-alignment-X = #LEFT
        thou_didst_heal_the_infirmities_of_their_souls and bod -- ies.

        O Fa -- ther John,

      \break
          \once \override LyricText.self-alignment-X = #LEFT
        now_for_us_who_fall_down_before_thy_prec -- ious rel -- ics,

          \once \override LyricText.self-alignment-X = #LEFT
        entreat_Christ_God_that_our_souls
      \break
        may be saved in peace.
    }


    \new Staff <<

      \new Voice = "tenor" \relative c'
      {
        \key f \major
        \cadenzaOn
        \voiceOne
        % \clef "treble_8"
        \clef bass
        \omit Staff.TimeSignature

        c4 c c2 (d) d2 \bar "|"
        d4 d c2 c4 c2 \bar "||"

        c4 c c2 (d) d2 \bar "|"
        d4 d c2 c4 c c2 \bar "||"

        c4 c c2 d4 d d2 \bar "|"
        d4 d c2 c2 \bar "||"

        c4 c2 d d2 \bar "|"
        d4 d c2 c2 \bar "||"

        c4 c c c2 c c1 \bar "|."

      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f a2 (g) d2 \bar "|"
        g4 g c,2 c4 f2 \bar "||"

        f4 f a2 (g) d2 \bar "|"
        g4 g c,2 c4 c f2 \bar "||"

        f4 f a2 g4 g d2 \bar "|"
        g4 g c,2 f2 \bar "||"

        f4 a2 g d2 \bar "|"
        g4 g c,2 f2 \bar "||"

        f4 f f c2 c f1 \bar "|."

      }
    >>

  >>
}