\include "common.ly"

\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
  }
}

\markup \fill-line {
  \null
  \center-column {
    \fontsize #4 \bold "Troparion of St. John of San Francisco"
    "July 2"
  }
  \right-column {
    \fontsize #8 \bold "F34"
    "Obikhod"
    "Tone 2"
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

        g4 a2 a4 a bes c2 (bes) a2 \bar "|"
        a4 a g2 f2 \bar "||"

        g4 a2 a4 a bes c2 (bes) a2 \bar "|"
        a4 a g2 g4 f2 \bar "||"

        g4 a2 a4 a bes c2 bes a2 \bar "|"
        a4 a a g2 g4 f2 \bar "||"

        g4 g a2 a4 bes c2 bes4 bes a2 \bar "|"
        a4 a g2 f2 \bar "||"

        a4 a a g4 a bes2 a4 (bes) a2 g f1 \bar "|."

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        e4 f2 f4 f f4 f1 f2 \bar "|"
        f4 f4 e2 c2 \bar "||"

        e4 f2 f4 f f4 f1 f2 \bar "|"
        f4 f4 e2 e4 c2 \bar "||"

        e4 f2 f4 f4 f f2 f f2 \bar "|"
        f4 f f4 e2 e4 c2 \bar "||"

        e4 e f2 f4 f4 f2 f4 f f2 \bar "|"
        f4 f4 e2 c2 \bar "||"

        f4 f f4 e4 f f2 f f e c1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano" {
        Thy care
          \once \override LyricText.self-alignment-X = #LEFT
        for_thy_flock in its so -- journ

          \once \override LyricText.self-alignment-X = #LEFT
        prefigured_the_sup -- pli -- ca -- tions

        which thou
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        dost_ever_offer_up for the whole world.

          \once \override LyricText.self-alignment-X = #LEFT
        Thus_we_believe,_having_come to know thy love,

      \break
        O ho --
          \once \override LyricText.self-alignment-X = #LEFT
        ly_hierarch_and won -- der -- work -- er John.

          \once \override LyricText.self-alignment-X = #LEFT
        Wholly_sanctified_by_God_through_the
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        ministry_of_the_all -- pure Mys -- ter -- ies,

        and thy -- self ev -- er strength -- ened by them,

      \break
          \once \override LyricText.self-alignment-X = #LEFT
        thou_didst_hasten_to_the_suffering,_O_most_glad -- some heal -- er.

          \once \override LyricText.self-alignment-X = #LEFT
        Hasten_now_also_to_the_aid_of
      \break
        us who hon -- or thee with all our heart.
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

        c4 c2 c4 c d ees!2 (d2) c2 \bar "|"
        c4 c4 c2 a2 \bar "||"

        c4 c2 c4 c d ees!2 (d2) c2 \bar "|"
        c4 c4 c2 c4 a2 \bar "||"

        c4 c2 c4 c d ees!2 d2 c2 \bar "|"
        c4 c c4 c2 c4 a2 \bar "||"

        c4 c c2 c4 d ees!2 d4 d c2 \bar "|"
        c4 c4 c2 a2 \bar "||"

        c4 c c4 bes c d2 c4 (d) c2 bes2 a1 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        c4 f2 f4 f4 bes,4 a2 (bes2) f'2 \bar "|"
        f4 f4 c2 f2 \bar "||"

        c4 f2 f4 f4 bes,4 a2 (bes2) f'2 \bar "|"
        f4 f4 c2 c4 f2 \bar "||"

        c4 f2 f4 f4 bes,4 a2 (bes2) f'2 \bar "|"
        f4 f f4 c2 c4 f2 \bar "||"

        c4 c f2 f4 bes,4 a2 bes4 bes f'2 \bar "|"
        f4 f4 c2 f2 \bar "||"

        f4 f f4 g f bes,2 f'4 (bes,) c2 c f1 \bar "|."

      }
    >>

  >>
}
\paper {
  systems-per-page = 6
}