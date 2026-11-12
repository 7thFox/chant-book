\include "common.ly"

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

\markup \fill-line {
  \null
  \center-column {
    \fontsize #4 \bold "Resurrectional Kontakion"
    "Tone 1"
  }
  \right-column {
    \fontsize #8 \bold "F21"
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

        a2 bes2 (c2) a4 a4 bes4 c4 d2 d2 \bar "|"
        c4 c c bes2 bes4 bes a2 \bar "||"

        a4 a bes2 (c2) a4 a4 bes4 c4 d2 d2 \bar "|"
        c4 c bes2 a2 \bar "||"

        bes2 (c2) a4 a a4 bes4 c4 d2 \bar "|"
        c4 c bes2 bes a1 \bar "|."

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        f2 g2 (a2) f4 f4 g4 a4 bes2 bes2 \bar "|"
        a4 a a g2 g4 g f2 \bar "||"

        f4 f g2 (a2) f4 f4 g4 a4 bes2 bes2 \bar "|"
        a4 a g2 f2 \bar "||"

        g2 (a2) f4 f f4 g4 a4 bes2 \bar "|"
        a4 a g2 g f1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "soprano"
    {
        AS GOD
          \once \override LyricText.self-alignment-X = #LEFT
        THOU_DIDST_RISE_FROM THE TOMB IN GLO -- RY,
        RAIS -- ING THE WORLD
      \break
        WITH THY -- SELF.

        HU -- MAN NA --
          \once \override LyricText.self-alignment-X = #LEFT
        TURE_PRAISES_THEE_AS_GOD,
        FOR DEATH HAS
      \break
        VAN -- ISHED!
          \once \override LyricText.self-alignment-X = #LEFT
        ADAM_EXULTS, O MAS -- TER!

        EVE
          \once \override LyricText.self-alignment-X = #LEFT
        REJOICES_FOR_SHE_IS_FREED
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        FROM_BONDAGE AND CRIES TO THEE:
          \once \override LyricText.self-alignment-X = #LEFT
        THOU_ART_THE_GIVER_OF_RESURRECTION
      \break
        TO ALL, O CHRIST!
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

        c2 e2 (f2) c4 c4 c4 f4 f2 f2 \bar "|"
        f4 f f e2 e4 e4 c2 \bar "||"

        c4 c e2 (f) <f c>4 <f c> f4 f f2 f2 \bar "|"
        f4 f e2 c2 \bar "||"

        e2 (f) <f c>4 <f c> <f c> f4 f f2 \bar "|"
        f4 f e2 e c1 \bar "|."

      }

      \new Voice = "bass" \relative c
      {
        \key f \major
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        f2 c (f) f4 f f f <bes bes,>2 <bes bes,> \bar "|"
        f4 f f c2 c4 c f2 \bar "||"

        f4 f c2 (f) f4 f f f <bes bes,>2 <bes bes,> \bar "|"
        f4 f c2 f2 \bar "||"

        c2 (f) f4 f f f f <bes bes,>2 \bar "|"
        f4 f c2 c f1 \bar "|."
      }
    >>

  >>
}


% \markup \fill-line {
%   \null
%   \center-column {
%     \fontsize #4 \bold "Resurrectional Kontakion"
%     "Tone 2"
%   }
%   \right-column {
%     \fontsize #8 \bold "F22"
%   }
% }

% \score {
%   <<
%     \new Staff <<
%       \new Voice = "soprano" \relative c''
%       {
%         \key f \major
%         \voiceOne
%         \cadenzaOn
%         \omit Staff.TimeSignature

%         g2 a a4 a bes c2 (bes) a2 \bar "|"
%         a4 a g2. g4 f2 \bar "||"

%         g2 a a4 a a bes c2 bes a2 \bar "|"
%         a4 a g1 f2 \bar "||"

%         g4 g a2 a4 a a bes c2 bes a2 \bar "|"
%         a4 a2 g4 a bes2 a4 bes a2 g4 g f1 \bar "|."

%       }
%       \new Voice = "alto" \relative c'
%       {
%         \voiceTwo
%         \cadenzaOn

%         e2 f2 f4 f f4 f1 f2 \bar "|"
%         f4 f4 e2. e4 c2 \bar "||"

%         e2 f2 f4 f f f4 f2 f f2 \bar "|"
%         f4 f4 e1 c2 \bar "||"

%         e4 e f2 f4 f f f4 f2 f f2 \bar "|"
%         f4 f2 f4 f f2 f4 f f2 e4 e c1 \bar "|."
%       }
%     >>

%     \new Lyrics \lyricsto "soprano" {
%         WHEN THOU
%           \once \override LyricText.self-alignment-X = #LEFT
%         DIDST_CONDESCEND_UNTO_DEATH,_O LIFE IM -- MOR -- TAL,
%       \break
%           \once \override LyricText.self-alignment-X = #LEFT
%         THOU_DIDST_SLAY_HELL_WITH_THE_LIGHTNING_FLASH_OF_THY DI -- VI -- NI -- TY,
%       \break
%         WHEN AL -- SO THOU DIDST RAISE UP THE DEAD
%           \once \override LyricText.self-alignment-X = #LEFT
%         FROM_THE_INFER -- NAL RE -- GIONS,
%       \break
%         ALL THE POW -- ERS OF HEAV -- EN CRIED A -- LOUD:
%         O LIFE -- GIVE -- ER CHRIST
%       \break
%         AND GOD, GLO -- RY TO THEE.
%     }


%     \new Staff <<

%       \new Voice = "tenor" \relative c'
%       {
%         \key f \major
%         \cadenzaOn
%         \voiceOne
%         % \clef "treble_8"
%         \clef bass
%         \omit Staff.TimeSignature

%         c2 c c4 c d ees2 (d2) c2 \bar "|"
%         c4 c4 c2. bes4 a2 \bar "||"

%         c2 c c4 c c d ees2 d2 c2 \bar "|"
%         c4 c4 c2. (bes4) a2 \bar "||"

%         c4 c c2 c4 c c d ees2 d2 c2 \bar "|"
%         c4 c2 bes4 c4 d2 c4 d c2 c4 bes4 a1 \bar "|."
%       }

%       \new Voice = "bass" \relative c
%       {
%         \key f \major
%         \voiceTwo
%         \cadenzaOn
%         \omit Staff.TimeSignature

%         c2 f2 f4 f4 bes4 a2 (bes2) f2 \bar "|"
%         f4 f4 c2. c4 f2 \bar "||"

%         c2 f2 f4 f f4 bes4 a2 bes2 f2 \bar "|"
%         f4 f4 c1 f2 \bar "||"

%         c4 c f2 f4 f f4 bes4 a2 bes2 f2 \bar "|"
%         f4 f2 g4 f bes2 f4 bes <c c,>2 c,4 c f1 \bar "|."

%       }
%     >>

%   >>
% }

\paper {
  systems-per-page = 6
  print-page-number = ##f
  ragged-bottom = ##t
}