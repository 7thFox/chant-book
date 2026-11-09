\include "common.ly"

% TODO: reconsider adding litinies
% TODO: Assign number

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
    % \override NonMusicalPaperColumn.line-break-permission = ##f
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

        a4 a g a g f2 g1 \bar "||"

        f4 f f f g2 g4 g f g a (g f g) a2 \bar "|"
        g4 a bes2 a4 a g a2 (g) f \bar "|"
        f4 f g a2 a4 a4 a g a (g f2) g \bar "|"
        f4 f f g2 f4 g a4 (g f g) a2 \bar "|"
        g4 a bes2 a4 a g a2 (g) f \bar "|"
        a2 a4 g a (g) f2 g \bar "|"
        f4 f f g2 g4 g f g a4 (g f) g a2 \bar "|"
        bes2 a4 a g a2 (g) f \bar "|"
        g4 (a bes2. a4 g2 f) g1 \bar "|."
      }
      \new Voice = "alto" \relative c' {
        \voiceTwo
        \cadenzaOn

        f4 f e f e d2 e1 \bar "||"

        d4 d d d e2 e4 e d e f (e d e) f2 \bar "|"
        d4 f f2 f4 f e f2 (e) d \bar "|"
        d4 d e f2 f4 f4 f e f (e d2) e2 \bar "|"
        d4 d d e2 d4 e f (e d e) f2 \bar "|"
        d4 f f2 f4 f e f2 (e) d \bar "|"
        f2 f4 e f (e) d2 e \bar "|"
        d4 d d e2 e4 e d e f (e d) e f2 \bar "|"
        f2 f4 f e f2 (e) d \bar "|"
        d4 (f~ f1 e2 d) d1 \bar "|."

      }
    >>

    \new Lyrics \lyricsto "soprano" {

      \once \override LyricText.self-alignment-X = #LEFT
      [GLORY...]_BOTH_NOW_AND_EVER_AND_UNTO_THE_A -- GES OF A -- GES. A -- MEN.

    \break
      O ON -- LY BE -- GOT --
      \once \override LyricText.self-alignment-X = #LEFT
      TEN_SON_AND_WORD_OF_GOD, WHO ART IM -- MOR -- TAL,
      YET DIDST DEIGN FOR OUR SAL -- VA -- TION

      TO BE IN -- CAR --
      \once \override LyricText.self-alignment-X = #LEFT
      NATE_OF_THE_HOLY
    \break
      \once \override LyricText.self-alignment-X = #LEFT
      THEOTOKOS_AND_EVER- VIR -- GIN MA -- RY,

      AND WITH -- OUT CHANGE DIDST BE --
    \break
      COME MAN,
      AND WAST CRU -- CI -- FIED, O CHRIST GOD,

      TRAMP -- LING DOWN DEATH BY DEATH;
      THOU WHO ART ONE OF THE HO -- LY
    \break
      TRI -- NI -- TY,
      GLO --
      \once \override LyricText.self-alignment-X = #LEFT
      RI-FIED_WITH_THE_FATHER_AND_THE HO -- LY SPI -- RIT,
      SAVE US.
    }

    \new Staff <<

      \new Voice = "tenor" \relative c' {
        \key f \major
        \cadenzaOn
        \voiceOne
        \clef bass
        \omit Staff.TimeSignature

        c4 c c c c a (c) c1 \bar "||"
        a4 a a a c2 c4 c a c c2 (a4 c) c2 \bar "|"
        bes4 c4 d2 c4 c c c1 a2 \bar "|"
        a4 a c c2 c4 c4 c c c2 (a4 c) c2 \bar "|"
        a4 a a c2 a4 c c2 (a4 c) c2 \bar "|"
        bes4 c d2 c4 c c c1 a2 \bar "|"
        c2 c4 c c2 a4 (c) c2 \bar "|"
        a4 a a c2 c4 c a c c2 (a4) c4 c2 \bar "|"
        d2 c4 c c c1 a2 \bar "|"
        bes4 (c d2. c4~ c2 a) bes1 \bar "|."
      }

      \new Voice = "bass" \relative c {
        \key f \major
        \voiceTwo
        \clef bass
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f c f c d2 c1 \bar "||"
        d4 d d d c2 c4 c d c f (c d c) f2 \bar "|"
        g4 f bes,2 f'4 f c f2 (c) d \bar "|"
        d4 d c f2 f4 f f c f (c d2) c \bar "|"
        d4 d d c2 d4 c f (c d c) f2 \bar "|"
        g4 f bes,2 f'4 f c f2 (c) d \bar "|"
        f2 f4 c f (c) d2 c \bar "|"
        d4 d d c2 c4 c d c f (c d) c f2 \bar "|"
        bes,2 f'4 f c f2 (c) d \bar "|"
        g4 (f bes,2. f'4 c2 d) g1 \bar "|."
      }
    >>

  >>
}


\paper {
  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "O Only-Begotten Son"
      }
      \right-column {
        % \fontsize #8 \bold "C14"
        "abbr. Znamenny Chant"
        "arr. E. Smirnov"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { C14 - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { C14 - \fromproperty #'page:page-number-string }
      \null
    }
  }
}