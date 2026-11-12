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
    \fontsize #4 \bold "Resurrectional Troparion"
    "Tone 1"
  }
  \right-column {
    \fontsize #8 \bold "F1"
  }
}

\score {
  <<
    \new Staff <<
      \new Voice = "soprano" \relative c'
      {
        \key f \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f g2 (a) f4 f g a bes2 \bar "|"
        a4 a a g2 f2 \bar "||"

        f4 f g2 (a) f4 f f g a bes2 bes \bar "|"
        a4 a g2 g4 g f2 \bar "||"

        f4 f g2 (a) f4 f f g a bes2 bes4 bes bes2 \bar "|"
        a4 a g2 g4 g f2 \bar "||"

        g2 (a) f4 g a bes2 bes \bar "|"
        a4 a a g2 g4 g f1 \bar "|."

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        c4 c e2 (f) f4 f f f f2 \bar "|"
        f4 f f e2 c2 \bar "||"

        c4 c e2 (f) f4 f f f f f2 f2 \bar "|"
        f4 f e2 c4 c c2 \bar "||"

        c4 c e2 (f) f4 f f f f f2 f4 f f2 \bar "|"
        f4 f e2 e4 e c2 \bar "||"

        e2 (f) f4 f f f2 f2 \bar "|"
        f4 f f e2 e4 e c1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano" {
        WHILE THE STONE WAS SEALED BY THE JEWS,
          \once \override LyricText.self-alignment-X = #LEFT
        AND_THE_SOLDIERS_KEPT_GUARD_OVER
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        THY_MOST PURE BOD -- Y;

        THOU DIDST RISE ON THE THIRD DAY O SAV -- IOR,
      \break
        GRANT -- ING LIFE TO THE WORLD,

        FOR WHICH CAUSE
          \once \override LyricText.self-alignment-X = #LEFT
        THE_HEAVENLY_POWERS
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        CRIED_ALOUD_UN -- TO THEE O GIV -- ER OF LIFE:
          \once \override LyricText.self-alignment-X = #LEFT
        GLORY_TO_THY_RE -- SUR -- REC -- TION,
      \break
        O CHRIST:

        GLO -- RY TO THEY KING -- DOM.
          \once \override LyricText.self-alignment-X = #LEFT
        GLORY_TO_THY_PROVIDENCE,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        O_THOU_WHO_A -- LONE LOV -- EST MAN -- KIND!
    }


    \new Staff <<

      \new Voice = "tenor" \relative c'
      {
        \key f \major
        \cadenzaOn
        \voiceOne
        \clef bass
        \omit Staff.TimeSignature

        a4 a c1 a4 a bes c d2 \bar "|"
        c4 c c c (bes) a2 \bar "||"

        a4 a c1 a4 a a bes c d2 d \bar "|"
        c4 c c2 c4 bes a2 \bar "||"

        a4 a c1 a4 a a bes c d2 d4 d d2 \bar "|"
        c4 c c2 c4 bes a2 \bar "||"

        c1 a4 bes c d2 d2 \bar "|"
        c4 c c c2 c4 c c1 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \clef bass
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f c2 (f2) f4 f f f <bes bes,>2 \bar "|"
        f4 f f c2 f2 \bar "||"

        f4 f c2 (f2) f4 f f f f <bes bes,>2 <bes bes,>2 \bar "|"
        f4 f c2 c4 c f2 \bar "||"

        f4 f c2 (f2) f4 f f f f <bes bes,>2 <bes bes,>4 <bes bes,> <bes bes,>2 \bar "|"
        f4 f c2 c4 c  f2 \bar "||"

        c2 (f2) f4 f f <bes bes,>2 <bes bes,>2 \bar "|"
        f4 f f c2 c4 c f1 \bar "|."

      }
    >>

  >>
}


\markup \fill-line {
  \null
  \center-column {
    \fontsize #4 \bold "Resurrectional Troparion"
    "Tone 2"
  }
  \right-column {
    \fontsize #8 \bold "F2"
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

        g2 a a4 a bes c2 (bes) a2 \bar "|"
        a4 a g2. g4 f2 \bar "||"

        g2 a a4 a a bes c2 bes a2 \bar "|"
        a4 a g1 f2 \bar "||"

        g4 g a2 a4 a a bes c2 bes a2 \bar "|"
        a4 a2 g4 a bes2 a4 bes a2 g4 g f1 \bar "|."

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        e2 f2 f4 f f4 f1 f2 \bar "|"
        f4 f4 e2. e4 c2 \bar "||"

        e2 f2 f4 f f f4 f2 f f2 \bar "|"
        f4 f4 e1 c2 \bar "||"

        e4 e f2 f4 f f f4 f2 f f2 \bar "|"
        f4 f2 f4 f f2 f4 f f2 e4 e c1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano" {
        WHEN THOU
          \once \override LyricText.self-alignment-X = #LEFT
        DIDST_CONDESCEND_UNTO_DEATH,_O LIFE IM -- MOR -- TAL,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        THOU_DIDST_SLAY_HELL_WITH_THE_LIGHTNING_FLASH_OF_THY DI -- VI -- NI -- TY,
      \break
        WHEN AL -- SO THOU DIDST RAISE UP THE DEAD
          \once \override LyricText.self-alignment-X = #LEFT
        FROM_THE_INFER -- NAL RE -- GIONS,
      \break
        ALL THE POW -- ERS OF HEAV -- EN CRIED A -- LOUD:
        O LIFE -- GIVE -- ER CHRIST
      \break
        AND GOD, GLO -- RY TO THEE.
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

        c2 c c4 c d ees2 (d2) c2 \bar "|"
        c4 c4 c2. bes4 a2 \bar "||"

        c2 c c4 c c d ees2 d2 c2 \bar "|"
        c4 c4 c2. (bes4) a2 \bar "||"

        c4 c c2 c4 c c d ees2 d2 c2 \bar "|"
        c4 c2 bes4 c4 d2 c4 d c2 c4 bes4 a1 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        c2 f2 f4 f4 bes4 a2 (bes2) f2 \bar "|"
        f4 f4 c2. c4 f2 \bar "||"

        c2 f2 f4 f f4 bes4 a2 bes2 f2 \bar "|"
        f4 f4 c1 f2 \bar "||"

        c4 c f2 f4 f f4 bes4 a2 bes2 f2 \bar "|"
        f4 f2 g4 f bes2 f4 bes <c c,>2 c,4 c f1 \bar "|."

      }
    >>

  >>
}

\paper {
  print-page-number = ##f
  ragged-bottom = ##t
}