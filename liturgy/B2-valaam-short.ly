\include "../common.ly"

% TODO: Assign Number

#(set-global-staff-size 22)

\layout {
  indent = 10\mm
}

\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
  }
}

\score {
  \layout
  {
    ragged-last = ##f
    indent = 35\mm
  }
  <<
    \new Staff  \with {
      instrumentName = \markup { "Head Chanter:" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 (d) e f1 \bar "|"
        e4 e e d2 d4 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        \ison_right
        r4 r r2  r  r4  r r r1 \bar "|"
        r4 r r r2 r4 c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
      Bless the Lord, O my soul;
      Bles -- sed art Thou O Lord.
    }
  >>
}

% Verse 1
% Page 1 A(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 1" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 (d) e f1 \bar "|"
        e4 (f) g2 f4 e e d (e) f1 e4 e d2 d4 c1 \bar "||"
      }
      \new Voice = "ison" \relative c' { \ison
        \ison_right
        c1 r r2  r  r4 \bar "|"
        \ison_zero
        a1 r2 r2 r4 r1 r2 g2 r4
        \ison_right
        c1\bar "||"
      }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, O my soul,
    and all that is with -- in me
    bless His ho -- ly name.
    }
  >>
}

% Verse 2
% Page 1 B(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 2" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 (d) e f1 \bar "|"
        e4 f g2 f4 e e d2 d4 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r1 r r2  r  r4 \bar "|"
        a4 r r2 r4 r r g2 r4
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, O my soul,
    and for -- get not
      \once \override LyricText.self-alignment-X = #LEFT
    all_that_He hath done for thee;
    }
  >>
}

% Verse 3
% Page 1 A(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 3" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c c d e f2 f4 f1 \bar "|"
        e4 (f) g2 f4 e e e d2 d4 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r r2 r4 r1 \bar "|"
        a4  r  r2 r4 r r r g2 r4
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who is gra -- cious un -- to all thine in -- i -- quit -- ies,
    Who heal -- eth
    \break
    all thine in -- firm -- it -- ies;
    }
  >>
}

% Verse 4
% Page 1 B(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 4" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c d e f f1 \bar "|"
        e4 (f) g2 f4 e  e d2 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r r1 \bar "|"
        a4  r  r2 r4 r r g2
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who re -- deem -- eth thy life from cor -- rup -- tion,
    Who crown -- eth
    \break
  \once \override LyricText.self-alignment-X = #LEFT
    thee_with_mercy_and
    com -- pas -- sion,
    }
  >>
}

% Verse 5
% Page 2 A(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 5" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c d e f f1 \bar "|"
        e4 (f) g2 f4 e  e d2 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r r1 \bar "|"
        a4  r  r2 r4 r r g2
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who ful -- fill -- eth thy de -- sire with good things;
    thy youth
    \break
    shall
  \once \override LyricText.self-alignment-X = #LEFT
    be_renewed_as the ea -- gle's.
    }
  >>
}


% Verse 6
% Page 2 B(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 6" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 (e) c4 c c d e f2 f1 \bar "|"
        e4 e f g4 f4 e e2 d4 e f1 \bar "|"
        e4 e d e f2 f2 \bar "|"
        e4 e f g f e e d2 d4 d d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r2  r  r4 r r r r r2 r1 \bar "|"
          r4 r r r4 r4 r r2 r4 r r1  \bar "|"
          a4 r r r r2 r2 \bar "|"
          r4 r r r r r r g2 r4 r r
          \ison_right
          c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    The Lord __ per -- form -- eth deeds of mer -- cy,
    and ex -- e -- cut -- eth
  \once \override LyricText.self-alignment-X = #LEFT
    judgement_for_all

    \break
    them that are wronged.
  \once \override LyricText.self-alignment-X = #LEFT
    He_hath_made_His_ways known un -- to Mo -- ses,
    un -- to the sons
    \break
    of
  \once \override LyricText.self-alignment-X = #LEFT
    Israel the things that He hath willed.
    }
  >>
}

\pageBreak

% Verse 8a
% Page 2 A(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8a" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 e c4 c d e f f e f1 \bar "|"
        f4 e e  e d2 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r2 r r4 r r r r r r r1 \bar "|"
          a4 r r r g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Com -- pass -- ion -- ate and mer -- ci -- ful is the Lord,
      long --
  \once \override LyricText.self-alignment-X = #LEFT
      suffering
      \break
  \once \override LyricText.self-alignment-X = #LEFT
      and_plenteous in mer -- cy;
    }
  >>
}
% GLORY
% Page 5 A(2)
\score {
  \layout { ragged-last = ##f }
  <<
    \new Staff \with {
      instrumentName = \markup { "G." }
    }
    <<
      \new Voice = "melody" \relative c' { \melody
        d2 e e4 e f2 f1 \bar "|"
        e4 e e f1 \bar "|"
        e4 e d2 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        r2 r r4 r r2 r1 \bar "|"
        r4 r r r1 \bar "|"
        a4 r g2 \ison_right c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Glo -- ry to the Fa -- ther,
      and to the Son,
  \once \override LyricText.self-alignment-X = #LEFT
      and_to_the_Ho -- ly Spi -- rit.
    }
  >>
}
% BOTH NOW
% Page 5 B(2)
\score {
  \layout { ragged-last = ##f }
  <<
    \new Staff \with {
      instrumentName = \markup { "BN." }
    }
    <<
      \new Voice = "melody" \relative c'
      { \melody
        c4 d2 (e) e4 f2 f1 \bar "|"
        e4 e d2 d4 d c1 \bar "||"
      }
      \new Voice = "ison" \relative c' { \ison
        r4 r2 r r4 r2 r1 \bar "|"
        a4 r g2 r4 r a1 \bar "||"
        }
    >>
    \new Lyrics \lyricsto "melody" {


      Both now and ev -- er,
      \once \override LyricText.self-alignment-X = #LEFT
      and_unto_the_ages of a -- ges. A -- men.
    }
  >>
}

% END
% Page 5 A(3)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 1" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 (d) e f1 \bar "|"
        e4 e d (e) f1 \bar "|"
        e4 e d e f1 \bar "|"
        e4 e e d2 d4 c1 \bar "|."

      }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r1 \bar "|"
        r4  r  r r r1 \bar "|"
        r4 r r  r r1 \bar "|"
        r4 r r g2 r4 \ison_right c1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, O my soul,
      \once \override LyricText.self-alignment-X = #LEFT
    and_all_that_is with -- in me
    \break
    bless His ho -- ly name.
    Bles -- sed art Thou O Lord.
    }
  >>
}


\paper {
  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "The First Antiphon"
        "Psalm 102 (Shortened)"
      }
      \right-column {
        % \fontsize #8 \bold "B2"
        "Valaam Chant"
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
