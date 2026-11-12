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
    \fontsize #4 \bold "Resurrectional Kontakion"
    "Tone 7"
  }
  \right-column {
    \fontsize #8 \bold "F27"
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

        a4 a bes a g g a bes2 bes \bar "|"
        bes4 bes bes a2. (g4) f2 \bar "||"

        a4 a bes (a) g g a bes2 \bar "|"
        bes4 bes bes a2 a4 g bes a2 (g) f1 \bar "|."
      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        f4 f f f d4 d f f2 f \bar "|"
        f4 f f f2. (e4) c2 \bar "||"

        f4 f f2 d4 d f f2 \bar "|"
        f4 f f f2 f4 f f f2 (e) c1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano"
    {
        THE DO -- MIN -- ION
          \once \override LyricText.self-alignment-X = #LEFT
        OF_DEATH_CAN_NO_LONGER HOLD MEN CAP -- TIVE,

          \once \override LyricText.self-alignment-X = #LEFT
        FOR_CHRIST
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        DESCENDED_SHATTERING_AND_DESTROYING ITS  POW -- ERS!

        HELL IS BOUND
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        WHILE_THE_PROPHETS_RE -- JOICE AND CRY:

          \once \override LyricText.self-alignment-X = #LEFT
        THE_SAVIOR_HAS_COME_TO_THOSE_IN
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        FAITH!_ENTER,_YOU_FAITHFUL, IN -- TO THE RE -- SUR -- REC -- TION.

    }


    \new Staff <<

      \new Voice = "tenor" \relative c'
      {
        \key f \major
        \cadenzaOn
        \voiceOne
        \clef bass
        % \clef "treble_8"
        \omit Staff.TimeSignature

        c4 c d c bes bes c d2 d \bar "|"
        d4 d d c2. (bes4) a2 \bar "||"

        c4 c d (c) bes bes c d2 \bar "|"
        d4 d d c2 c4 bes4 d c2 (bes) a1 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f bes f g g f bes2 bes \bar "|"
        bes4 bes bes f2. (c4) f2 \bar "||"

        f4 f bes (f) g g f bes2 \bar "|"
        bes4 bes bes f2 f4 g bes c2 (c,2) f1 \bar "|."
      }
    >>

  >>
}

\pageBreak

\markup \fill-line {
  \null
  \center-column {
    \fontsize #4 \bold "Resurrectional Kontakion"
    "Tone 8"
  }
  \right-column {
    \fontsize #8 \bold "F28"
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

        a4 g a bes bes bes a a g2 a2 \bar "|"
        a4 g a (bes) a a g2 a2 \bar "|"
        a4 g a bes bes bes a a g2 g4 g a1 \bar "|."

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        f4 e f f f f f f e2 f2 \bar "|"
        f4 e f2 f4 f e2 f2 \bar "|"
        f4 e f f f f f f e2 e4 e f1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano" {
      BY RI -- SING FROM THE TOMB
        \once \override LyricText.self-alignment-X = #LEFT
      THOU_DIDST_RAISE_THE_DEAD_AND_RESUR -- RECT A -- DAM.

    \break
      EVE EX -- ULTS
        \once \override LyricText.self-alignment-X = #LEFT
      IN_THY_RE -- SUR -- REC -- TION,

      AND THE WORLD CE -- LE -- BRATES
    \break
        \once \override LyricText.self-alignment-X = #LEFT
      THY_RISING_FROM_THE_DEAD,_O_GREAT -- LY MER -- CI -- FUL ONE!

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

        c4 c c d d d c c c2 c \bar "|"
        c4 c c (d) d d c2 c \bar "|"
        c4 c c d d d c c c2 c4 c c1 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 c f bes, bes <bes d> f' f c2 f2 \bar "|"
        f4 c f (bes,) f' f c2 f2 \bar "|"
        f4 c f bes, bes <bes d> f' f c2 c4 c f1 \bar "|."
      }
    >>

  >>
}

\paper {
  print-page-number = ##f
  ragged-bottom = ##t
}