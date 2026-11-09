\include "common.ly"

% TODO: The number of accidentals leads me to believe this is better in another key
% TODO: remove hyphenation from elision

%% Remove once draft is complete
\paper {
    oddFooterMarkup = \markup {
    \fill-line {
      ""
      \italic "DRAFT"
      ""
    }
  }

  evenFooterMarkup = \markup {
    \fill-line {
      ""
      \italic "DRAFT"
      ""
    }
  }
}

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
        bes4 bes a2 a \bar "||"

        % on 12
        a4 a a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2. a4 a2 \bar "||"

        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 a4 a4 a2 \bar "||"

        % on 10
        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes a2 \bar "||"

        a4 a d2 a4 (b) c2 (bes) \bar "|"
        bes4 bes bes bes bes a2 a \bar "||"

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
        <g e>4 <g e>4 f2 f2 \bar "||"

        % on 12
        f4 f f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2. f4 f2 \bar "||"

        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 f4 f f2 \bar "||"

        % on 10
        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 f2 \bar "||"

        f4 f f2 f e (<g e>)  \bar "|"
        <g e>4 <g e>4 <g e>4 <g e>4 <g e>4 f2 f \bar "||"

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
        IN_THY_KING-DOM_RE-MEM -- BER US O LORD,
          \once \override LyricText.self-alignment-X = #LEFT
          WHEN_THOU_COM-EST_IN-TO THY
      \break
          KING -- DOM.

        \once \override LyricText.self-alignment-X = #LEFT
        BLESS-ED_ARE_THE_POOR IN SPI -- RIT,
          \once \override LyricText.self-alignment-X = #LEFT
          FOR_THEIRS_IS_THE_KING-DOM
      \break
          OF HEAV -- EN.

        \mark \markup { On 12 Verses }
        BLESS -- ED ARE THEY THAT MOURN,
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL BE
      \break
        COM -- FOR -- TED.

        BLESS -- ED ARE THE MEEK,
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL IN -- HER -- IT THE EARTH.

      \break
        \mark \markup { On 10 Verses }
          \once \override LyricText.self-alignment-X = #LEFT
        BLESS-ED_ARE_THEY_THAT_HUN-GER_AND_THIRST FOR RIGHT -- EOUS -- NESS,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL BE FILLED.

          \once \override LyricText.self-alignment-X = #LEFT
        BLESS-ED_ARE THE MER -- CI -- FUL,
        FOR THEY
      \break
        SHALL OB -- TAIN MER -- CY.

        \mark \markup { On 8 Verses }
          \once \override LyricText.self-alignment-X = #LEFT
        BLESS-ED_ARE THE PURE IN HEART,
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL SEE
      \break
        GOD.

          \once \override LyricText.self-alignment-X = #LEFT
        BLESS-ED_ARE THE PEACE -- MAK -- ERS
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEY_SHALL_BE_CALLED
        THE
        \break
        SONS OF GOD

        \mark \markup { On 6 Verses }
          \once \override LyricText.self-alignment-X = #LEFT
        BLESS-ED_ARE_THEY_WHICH_ARE_PER-SE-CUT-ED FOR RIGHT -- EOUS -- NESS
      \break
        SAKE,
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_THEIRS_IS_THE_KING-DOM OF HEA -- VEN.

          \once \override LyricText.self-alignment-X = #LEFT
        BLESS-ED_ARE_YE_WHEN_MEN
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        SHALL_RE-VILE_YOU
        AND PER -- SE -- CUTE YOU,
          \once \override LyricText.self-alignment-X = #LEFT
        AND_SHALL_SAY_ALL_MAN-NER_OF_EV-IL
      \break
        A -- GAINST YOU FALSE -- LY
        FOR MY SAKE

          \once \override LyricText.self-alignment-X = #LEFT
        RE-JOICE_AND_BE EX -- CEED -- ING -- LY GLAD,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        FOR_GREAT_IS_YOUR_RE-WARD IN HEA -- VEN.

          \once \override LyricText.self-alignment-X = #LEFT
        GLOR-Y_TO_THE_FA-THER_AND_TO
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        THE_SON_AND_TO_THE_HO -- LY SPI -- RIT

          \once \override LyricText.self-alignment-X = #LEFT
        BOTH_NOW_AND_EV-ER_AND_UN-TO
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
        c4 c4 c2 c2 \bar "||"

        % on 12
        c4 c c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2. c4 c2 \bar "||"

        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 c4 c c2 \bar "||"

        % on 10
        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c4 c2 \bar "||"

        c4 c a2 a4 (d4) g,2 (c2) \bar "|"
        c4 c c c c4 c2 c2 \bar "||"

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
        c4 c4 f2 f2 \bar "||"

        % on 12
        f4 f f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2. f4 f2 \bar "||"

        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 f4 f f2 \bar "||"

        % on 10
        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c4 f2 \bar "||"

        f4 f4 d2 d4 (g4) c,1 \bar "|"
        c4 c c c c4 f2 f2 \bar "||"

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
