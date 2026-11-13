\include "common.ly"

% Some general guidelines:
%   - Note elision should occur once 2 or more noteheads can be removed
%   - Elision should have one leading quarter and one ending quarter of the same
%       pitch to lead into the change
%   - Words within elision should NOT be hyphenated on syllables unless it has
%       multiple ways of being pronounced.

\paper {

  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "The First Antiphon"
        "Psalm 102"
      }
      \right-column {
        \fontsize #8 \bold "B2"
        "Bishop Nikanor"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { B2 - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { B2 - \fromproperty #'page:page-number-string }
      \null
    }
  }
}

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

% Typically we want to uncomment this towards the
% end of drafting and place manual breaks in order
% to optimize space on the page
% \layout {
%   \context {
%     \Score
%     % \override NonMusicalPaperColumn.line-break-permission = ##f
%   }
% }
% \paper {
%   systems-per-page = 6
% }

\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 7" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 c c d e f f1 \bar "|"
        e4 e f g4 f4 e e e e d2 d4 d d c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2  r  r4 r r r r r r1 \bar "|"
        a4 r r r4 r4 r r r r g2 r4 r r
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    He hath made His ways known un -- to Mo -- ses,
    un -- to the sons of Is -- ra -- el the things that He hath willed.
    }
  >>
}