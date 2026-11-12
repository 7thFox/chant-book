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
    "Tone 7"
  }
  \right-column {
    \fontsize #8 \bold "F7"
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

        a4 a bes (a) g g g g (a) bes2 \bar "|"
        bes4 bes a2 g a \bar "||"

        a4 a a bes (a) g g g a bes2 \bar "|"
        bes4 bes a2 a \bar "||"

        a4 a a bes a g g a bes2 \bar "|"
        bes4 bes a2 g4 (f) g1 f \bar "|."
      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        f4 f f2 d4 d d d (f) f2 \bar "|"
        f4 f f2 e f \bar "||"

        f4 f f f2 d4 d d e f2 \bar "|"
        f4 f f2 f \bar "||"

        f4 f f f f d d f f2 \bar "|"
        f4 f f2 e4 (f) e1 c1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano"
    {
        BY THY CROSS THOU DIDST DE -- STROY DEATH;
          \once \override LyricText.self-alignment-X = #LEFT
        TO_THE_THIEF_THOU_HAST_OP -- ENED
      \break
        PA -- RA -- DISE;

        FOR THE MYRRH -- BEAR --
          \once \override LyricText.self-alignment-X = #LEFT
        ING_WOMEN_THOU_HAST_CHANGED
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        LAMENTATION IN -- TO JOY,
          \once \override LyricText.self-alignment-X = #LEFT
        AND_DIDST_COMMAND_THEM_TO_ANNOUNCE_UNTO_THINE
      \break
        A -- POS -- TLES,

        THAT THOU WERT RIS -- EN
          \once \override LyricText.self-alignment-X = #LEFT
        FROM_THE_DEAD_O CHRIST OUR GOD,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        GRANTING_TO THE WORLD GREAT MER -- CY.
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

        c4 c d (c) bes bes bes bes (c) d2 \bar "|"
        d4 d c2 c c \bar "||"

        c4 c c d (c) bes bes bes c d2 \bar "|"
        d4 d c2 c \bar "||"

        c4 c c d c bes bes c d2 \bar "|"
        d4 d c2 bes4 (a) bes1 a1 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f bes (f) g g g g (f) bes2 \bar "|"
        bes4 bes f2 c f \bar "||"

        f4 f f bes (f) g g g f bes2 \bar "|"
        <bes bes,>4 <bes bes,> f2 f \bar "||"

        f4 f f bes f g g f bes2 \bar "|"
        g4 g f2 e4 (f) c1 f \bar "|."
      }
    >>

  >>
}

\pageBreak

\markup \fill-line {
  \null
  \center-column {
    \fontsize #4 \bold "Resurrectional Troparion"
    "Tone 8"
  }
  \right-column {
    \fontsize #8 \bold "F8"
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

        a4 g a bes bes bes a a g g a2 \bar "|"

        a4 g a bes bes a a g g a2 \bar "|"

        a4 g a a bes bes a a g2 a \bar "|"

        a4 g a a bes bes a a <g bes>2 <g bes>4 g4 a2 \bar "|."
      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        f4 e f f f f f f e e f2 \bar "|"

        f4 e f f f f f e e f2 \bar "|"

        f4 e f f f f f f e2 f2 \bar "|"

        f4 e f f f f f f e2 e4 e f2 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano" {
        THOU DIDST DE -- SCEND FROM ON
          \once \override LyricText.self-alignment-X = #LEFT
        HIGH,_O_TEN -- DER -- HEART -- ED ONE;

      \break
        THOU DIDST EN -- DURE THE THREE DAY BUR -- I -- AL,

        THAT THOU MIGHT -- EST
      \break
        FREE US FROM OUR PAS -- SIONS,

        O OUR
          \once \override LyricText.self-alignment-X = #LEFT
        LIFE_AND_RE -- SUR -- REC -- TION,
        O LORD,
      \break
        GLO -- RY TO THEE.

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

        c4 c c d d d c c c c c2 \bar "|"

        c4 c c d d c c c c c2 \bar "|"

        c4 c c c d d c c c2 c2 \bar "|"

        c4 c c c d d c c c2 c4 c c2 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 c f <bes bes,> <bes bes,> <bes bes,> f f c c f2 \bar "|"

        f4 c f <bes bes,> <bes bes,> f f c c f2 \bar "|"

        f4 c f f <bes bes,> <bes bes,> f f c2 f2 \bar "|"

        f4 c f f <bes bes,> <bes bes,> f f g2 c,4 c f2 \bar "|."
      }
    >>

  >>
}

\paper {
  systems-per-page = 6
  print-page-number = ##f
  ragged-bottom = ##t
}