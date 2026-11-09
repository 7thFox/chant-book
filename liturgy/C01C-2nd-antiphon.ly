\include "common.ly"

\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
  }
}

\score {
  <<
    \new Staff <<
      \new Voice = "soprano" \relative c' {
        \key f \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        a'4 a4 g a2 a2 \bar "||"

        f4 f g2 (a) f4 (g) a bes2 \bar "|"
        a4 a a g2 g4 g f2 \bar "||"

        f4 f f g2 a f4 (g) a bes2 \bar "|"
        a4 a a g2 f \bar "||"

        f4 f g2 a f4 g a bes2 \bar "|"
        a4 a a g2 f \bar "||"

        f4 f g2 (a) f4 f f g a bes2 \bar "|"
        a4 a a g2 f \bar "||"

        f4 f f g2 (a) f4 (g a) bes2 bes \bar "|"
        a4 a a g1 f \bar "|."
      }
      \new Voice = "alto" \relative c' {
        \voiceTwo
        \cadenzaOn

        f4 f e f2 f2 \bar "||"

        c4 c e2 (f) f2 f4 f2 \bar "|"
        f4 f f e2 e4 e c2 \bar "||"

        c4 c c e2 f2 f2 f4 f2 \bar "|"
        f4 f f e2 c2 \bar "||"

        c4 c e2 f f4 f f f2 \bar "|"
        f4 f f e2 c2 \bar "||"

        c4 c e2 (f) f4 f f f f f2 \bar "|"
        f4 f f e2 c2 \bar "||"

        c4 c c e2 (f) f2. f2 f \bar "|"
        f4 f f e1 c \bar "|."

      }
    >>

    \new Lyrics \lyricsto "soprano" {

      \once \override LyricText.self-alignment-X = #LEFT
      GLORY_TO_THE_FATHER,_AND_TO_THE_SON,_AND_TO_THE
      HO -- LY SPI -- RIT.

      \break

      PRAISE THE LORD, O MY SOUL,
      \once \override LyricText.self-alignment-X = #LEFT
        I_WILL_PRAISE_THE LORD AS LONG AS I LIVE;
      I WILL

      \break
      SING PRAIS -- ES TO MY GOD,
        WHILE I HAVE BE -- ING.
        \once \override LyricText.self-alignment-X = #LEFT
      PUT_NOT_YOUR_TRUST IN

      \break
      PRINC -- ES IN SONS OF MEN
      \once \override LyricText.self-alignment-X = #LEFT
        IN_WHOM_THERE_IS NO SAL -- VA -- TION.
      \once \override LyricText.self-alignment-X = #LEFT
      WHEN_HIS_BREATH

      \break
      DE -- PARTS HE RE -- TURNS TO HIS EARTH;
      \once \override LyricText.self-alignment-X = #LEFT
        ON_THAT_VERY_DAY HIS PLANS PER -- ISH.

      \break
      THE LORD WILL REIGN FOR -- EV -- ER;
      \once \override LyricText.self-alignment-X = #LEFT
        THY_GOD_O_ZION,_TO_ALL GEN -- ER -- A -- TIONS.
    }

    \new Staff <<

      \new Voice = "tenor" \relative c' {
        \key f \major
        \cadenzaOn
        \voiceOne
        \clef bass
        \omit Staff.TimeSignature

        c4 c c c2 c2 \bar "||"

        a4 a c1 a4 (bes) c d2 \bar "|"
        c4 c d c2 c4 bes a2 \bar "||"

        a4 a a c2 c a4 (bes) c d2 \bar "|"
        c4 c d c (bes) a2 \bar "||"

        a4 a c2 c a4 bes c d2 \bar "|"
        c4 c d c (bes) a2 \bar "||"

        a4 a c1 a4 a a bes c d2 \bar "|"
        c4 c d c (bes) a2 \bar "||"

        a4 a a c1 a4 (bes c) d2 d \bar "|"
        c4 c d c2 (bes2) a1 \bar "|."
      }

      \new Voice = "bass" \relative c {
        \key f \major
        \voiceTwo
        \clef bass
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f c f2 f2 \bar "||"

        f4 f c2 (f) f f4 <bes bes,>2 \bar "|"
        f4 f d c2 c4 c f2 \bar "||"

        f4 f f c2 f2 f f4 <bes bes,>2 \bar "|"
        f4 f d c2 f2 \bar "||"

        f4 f c2 f2 f4 f f <bes bes,>2 \bar "|"
        f4 f d c2 f2 \bar "||"

        f4 f c2 (f) f4 f f f f <bes bes,>2 \bar "|"
        f4 f d c2 f2 \bar "||"

        f4 f f c2 (f) f2. bes2 bes \bar "|"
        f4 f d c1 f1 \bar "|."
      }
    >>

  >>
}

\paper {
  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "The Second Antiphon"
        "Psalm 145"
      }
      \right-column {
        \fontsize #8 \bold "C1-C"
        % "Bishop Nikanor"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { C1-C - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { C1-C - \fromproperty #'page:page-number-string }
      \null
    }
  }
}