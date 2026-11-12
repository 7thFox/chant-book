\include "common.ly"

\layout {
  ragged-last = ##f
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
    \fontsize #4 \bold "O Protection of Christians"
    "Tone 6"
  }
  \right-column {
    \fontsize #8 \bold "F30"
  }
}

\score {
  <<
    \transpose g f
    \new Staff <<
      \new Voice = "soprano" \relative c''
      {
        \key g \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        g4 g a b2 b a2 \bar "|"
        fis4 fis g a a a g a2 (g) fis2 \bar "||"

        g4 g a b1 a2 \bar "|"
        fis4 fis g a g a2 (g) fis2 \bar "||"

        g4 g a b2 b4 b b a2 \bar "|"
        fis4 fis g a a g a2 (g) fis2 \bar "||"

        g4 g a b1 a2 \bar "|"
        fis4 g a (g a2) g2 fis1 \bar "|."

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        \accidentalStyle forget

        d4 d d g2 gis2 e2 \bar "|"
        d4 d d fis fis fis d d1 d2 \bar "|"

        d4 d d g2 (gis2) e2 \bar "|"
        d4 d d fis d d1 d2 \bar "|"

        \accidentalStyle default
        d4 d d g2 gis4 gis gis e2 \bar "|" \accidentalStyle forget
        d4 d d fis fis d d1 d2 \bar "|"

        d4 d d g2 (gis2) e2 \bar "|"
        d4 d fis (d ~ d2) d2 d1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano" {
          \once \override LyricText.self-alignment-X = #LEFT
        O_protection_of_Christians_that_can -- not be put to shame,

        O me -- di --
          \once \override LyricText.self-alignment-X = #LEFT
        ation_unto
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        the_Creat -- or
        un -- fail -- ing,

          \once \override LyricText.self-alignment-X = #LEFT
        disdain_not_the_suppliant_voic -- es of sin -- ners;

      \break
        but be Thou quick, O good one,

          \once \override LyricText.self-alignment-X = #LEFT
        to_help_us who in faith cry un -- to Thee:

      \break
          \once \override LyricText.self-alignment-X = #LEFT
        hasten_to in -- ter --
          \once \override LyricText.self-alignment-X = #LEFT
        cession_and_speed_Thou_to_make sup -- pli -- ca -- tion,

      \break
          \once \override LyricText.self-alignment-X = #LEFT
        Thou_who_dost_ever_protect,_O The -- o -- to -- kos,

        them that hon -- or Thee.
    }

    \transpose g f
    \new Staff <<

      \new Voice = "tenor" \relative c'
      {
        \key g \major
        \cadenzaOn
        \voiceOne
        % \clef "treble_8"
        \clef bass
        \omit Staff.TimeSignature

        b4 b c d2 d c2 \bar "|"
        a4 a b c c c b c2 (b) a2 \bar "||"

        b4 b c d1 c2 \bar "|"
        a4 a b c b c2 (b) a2 \bar "||"

        b4 b c d2 d4 d d c2 \bar "|"
        a4 a b c c b c2 (b) a2 \bar "||"

        b4 b c d1 c2 \bar "|"
        a4 b c (b c2) b a1 \bar "|."
      }

      \new Voice = "bass" \relative c'
      {
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        g4 g g g2 e2 a,2 \bar "|"
        d4 d d d d d g fis2 (g) d2 \bar "||"

        g4 g g g2 (e2) a,2 \bar "|"
        d4 d d d g fis2 (g) d2 \bar "||"

        g4 g g g2 e4 e e a,2 \bar "|"
        d4 d d d d g fis2 (g) d2 \bar "||"

        g4 g g g2 (e2) a,2 \bar "|"
        d4 d d (g fis2) g2 d1 \bar "|."
      }
    >>

  >>
}