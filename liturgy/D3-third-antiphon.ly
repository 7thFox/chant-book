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
      \new Voice = "soprano" \relative c'' {
        \key f \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 a \bar "||"

        a4 a d2 (a4 b) c2 (bes) \bar "|"
        bes4 bes bes bes a2 a \bar "||"

        % on 12
        a4 a a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2. a4 a2 \bar "||"

        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 a4 a4 a2 \bar "||"

        % on 10
        a4 a a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 \bar "||"

        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 a \bar "||"

        % on 8
        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 \bar "||"

        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 a4 a2 \bar "||"

        % on 6
        a4 a d2 a4 b c2 (bes) \bar "|"
        bes4 bes a2 a2 \bar "||"

        a4 a a d2 a4 b c2 (bes) \bar "|"
        bes4 bes bes bes a2 a4 a a a2 \bar "||"

        % REJOICE...
        a4 a d2 a4 b c2 (bes) \bar "|"
        bes4 bes a2 a2 \bar "||"

        a4 a a d2 (a4 b) c2 (bes) \bar "||"
        bes4 bes bes bes a2 a4 a a2 \bar "|."
      }
      \new Voice = "alto" \relative c' {
        \voiceTwo
        \cadenzaOn

        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 f2 \bar "||"

        f4 f f1 e2 (<g e>)  \bar "|"
        <g e>4 <g e>4 <g e>4 <g e>4 f2 f2 \bar "||"

        % on 12
        f4 f f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2. f4 f2 \bar "||"

        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 f4 f f2 \bar "||"

        % on 10
        f4 f f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 \bar "||"

        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 f \bar "||"

        % on 8
        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 \bar "||"

        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 f4 f2 \bar "||"

        % on 6
        f4 f f2 f4 f4 e2 (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 f2 \bar "||"

        f4 f f f2 f4 f4 e2 (<g e>)  \bar "|"
        <g e>4 <g e>4 <g e>4 <g e>4 f2 f4 f f f2 \bar "||"

        % REJOICE...
        f4 f f2 f e <g e>  \bar "|"
        <g e>4 <g e>4 f2 f2 \bar "||"

        f4 f f f1 e2 (<g e>)  \bar "||"
        <g e>4 <g e>4 <g e>4 <g e>4 f2 f4 f f2 \bar "|."

      }
    >>

    \new Lyrics \lyricsto "soprano" {

        \once \override LyricText.self-alignment-X = #LEFT
        IN_THY_KINGDOM_REMEM -- BER US O LORD,
          \once \override LyricText.self-alignment-X = #LEFT
          WHEN_THOU_COMEST_INTO
      \break
          THY
          KING -- DOM.

        \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ARE_THE_POOR IN SPI -- RIT,
        FOR THEIRS
      \break
          \once \override LyricText.self-alignment-X = #LEFT
          IS_THE_KINGDOM
          OF HEAV -- EN.

        \mark \markup \with-color #chant_red { On 12 Verses }
        BLESS -- ED ARE THEY THAT MOURN,
      \break

          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL BE
        COM -- FOR -- TED.

        BLESS -- ED ARE THE MEEK,
      \break

          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL IN -- HER -- IT THE EARTH.

        \mark \markup \with-color #chant_red { On 10 Verses }
          \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ARE_THEY_THAT_HUNGER_AND
      \break
        THIRST
        FOR RIGHT -- EOUS -- NESS,
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL BE FILLED.

          \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ARE THE
      \break
        MER -- CI -- FUL,
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL_OB -- TAIN MER -- CY.

        \mark \markup \with-color #chant_red { On 8 Verses }
          \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ARE THE
      \break
        PURE IN HEART,
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL SEE
        GOD.

          \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ARE THE

      \break
        PEACE -- MAK -- ERS
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL_BE_CALLED THE SONS OF GOD

      \break
        \mark \markup \with-color #chant_red { On 6 Verses }
          \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ARE_THEY_WHICH_ARE_PERSECUTED FOR RIGHT -- EOUS -- NESS SAKE,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEIRS_IS_THE_KINGDOM OF HEA -- VEN.

          \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ARE_YE_WHEN_MEN
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        SHALL_REVILE_YOU
        AND PER -- SE -- CUTE YOU,
          \once \override LyricText.self-alignment-X = #LEFT
        AND_SHALL_SAY_ALL_MANNER_OF_EVIL
      \break
        A -- GAINST YOU FALSE -- LY
        FOR MY SAKE

          \once \override LyricText.self-alignment-X = #LEFT
        REJOICE_AND_BE EX -- CEED -- ING -- LY GLAD,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_GREAT_IS_YOUR_REWARD IN HEA -- VEN.

          \once \override LyricText.self-alignment-X = #LEFT
        GLORY_TO_THE_FATHER_AND_TO
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        THE_SON_AND_TO_THE_HO -- LY SPI -- RIT

          \once \override LyricText.self-alignment-X = #LEFT
        BOTH_NOW_AND_EVER_AND_UNTO
      \break
        A -- GES OF A -- GES. A -- MEN.
    }

    \new Staff <<

      \new Voice = "tenor" \relative c' {
        \key f \major
        \cadenzaOn
        \voiceOne
        \clef bass
        \omit Staff.TimeSignature

        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 c2 \bar "||"

        c4 c a2. (d4) g,2 (c2) \bar "|"
        c4 c4 c c c2 c2 \bar "||"

        % on 12
        c4 c c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2. c4 c2 \bar "||"

        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 c4 c c2 \bar "||"

        % on 10
        c4 c c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 \bar "||"

        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 c2 \bar "||"

        % on 8
        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 \bar "||"

        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 c4 c2 \bar "||"

        % on 6
        c4 c a2 a4 d4 g,2 (c2) \bar "|"
        c4 c4 c2 c2 \bar "||"

        c4 c c a2 a4 d4 g,2 (c2) \bar "|"
        c4 c c c4 c2 c4 c c c2 \bar "||"

        % REJOICE...
        c4 c a2 a4 d4 g,2 c2 \bar "|"
        c4 c4 c2 c2 \bar "||"


        c4 c c a2. (d4) g,2 (c2) \bar "||"
        c4 c c c4 c2 c4 c c2 \bar "|."
      }

      \new Voice = "bass" \relative c {
        \key f \major
        \voiceTwo
        \clef bass
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 f2 \bar "||"

        f4 f4 d2. (g4) c,1 \bar "|"
        c4 c c c4 f2 f2 \bar "||"

        % on 12
        f4 f f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2. f4 f2 \bar "||"

        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 f4 f f2 \bar "||"

        % on 10
        f4 f4 f d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 \bar "||"

        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 f2 \bar "||"

        % on 8
        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 \bar "||"

        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 f4 f2 \bar "||"

        % on 6
        f4 f4 d2 d4 g4 c,1 \bar "|"
        c4 c4 f2 f2 \bar "||"

        f4 f f4 d2 d4 g4 c,1 \bar "|"
        c4 c c c4 f2 f4 f f f2 \bar "||"

        % REJOICE...
        f4 f4 d2 d4 g4 c,1 \bar "|"
        c4 c4 f2 f2 \bar "||"

        f4 f f4 d2. (g4) c,1 \bar "||"
        c4 c c c4 f2 f4 f f2 \bar "|."
      }
    >>

  >>
}

\paper {
  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "The Third Antiphon"
        "The Beatitudes"
      }
      \right-column {
        \fontsize #8 \bold "D3"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { D3 - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { D3 - \fromproperty #'page:page-number-string }
      \null
    }
  }
}
