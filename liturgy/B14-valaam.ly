\include "../common.ly"

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

% Verse 8b
% Page 2 B(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8b" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) e4 f2 f4 e f1 \bar "|"
        e4 e d e f1 \bar "|"
        e4 e d e f1 \bar "|"
        e4 e f g f e e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r r2  r  r4 r2 r4 r r1 \bar "|"
          r4 r r r r1 \bar "|"
          a4 r4 r r r1 \bar "|"
          r4 r r r r r r g2 r4
          \ison_right
          c1 \bar "||"
      }
    >>

    \new Lyrics \lyricsto "melody" {
  \once \override LyricText.self-alignment-X = #LEFT
    Not_unto the end will He be an -- gered,
  \once \override LyricText.self-alignment-X = #LEFT
    neither_unto_eternity
    will
    \break
    He be wroth.
  \once \override LyricText.self-alignment-X = #LEFT
    Not_according_to_our_iniquities_hath
    He dealt with us,
    \break
    nei -- ther ac -- cord -- ing
  \once \override LyricText.self-alignment-X = #LEFT
    to_our_sins_hath_He re -- ward -- ed us.
    }
  >>
}

% Verse 10
% Page 3 A(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 10" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4  c d e f1 \bar "|"
        e4 e f g f e e d2 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r1 \bar "|"
        a4 r r r4 r r r g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      For ac -- cord -- ing
    \once \override LyricText.self-alignment-X = #LEFT
      to_the_height_of_hea -- ven from the earth,

      the Lord
    \break
      hath made His
    \once \override LyricText.self-alignment-X = #LEFT
      mercy_to_prevail_over_them that fear Him.
    }
  >>
}

% Verse 11
% Page 3 B(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 11" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 (e) c4 c d e f1 \bar "|"
        e4 (f) g2 e4 e d2 d4 d4 d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        r4 r2 r r4 r r r r1 \bar "|"
        a4 r r2 r4 r g2 r4 r4 r
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    As far
    \once \override LyricText.self-alignment-X = #LEFT
    as_the_east is from the west,
    so far

    \break
  \once \override LyricText.self-alignment-X = #LEFT
    hath_He_removed_our in -- i -- quit -- ies from us.
    }
  >>
}

% Verse 12a
% Page 3 A(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 12a" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c c d2 e f4 f e f1 \bar "|"
        e4 (f) g2 e4 e d2 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        r4 r r r2 r r4 r r r1 \bar "|"
        a4 r r2 r4 r g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    Like as a fa -- ther
  \once \override LyricText.self-alignment-X = #LEFT
    hath_compassion_up -- on his sons,
    so hath

    \break
  \once \override LyricText.self-alignment-X = #LEFT
    the_Lord_had_compassion_upon_them that fear Him;
    }
  >>
}


% Verse 12b
% Page 3 B(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 12b" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c d e f1 \bar "|"
        e4 e f g f e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % c4 c d2 e c4 c d e f1 \bar "|"
          r4 r r2 r r4 r r r r1 \bar "|"
        % e4 e f g f e d2 d4
          a4 r r r r r g2 r4
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    for He know -- eth where -- of we are made,
    He hath

    \break
    re -- mem -- bered that we are dust.
    }
  >>
}


\pageBreak

% Verse 13
% Page 3 A(3)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 13" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 c c d e f1 \bar "|"
        e4 f g f e e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r r2  r  r4 r r r r r1 \bar "|"
          a4 r r r r r g2 r4
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    As for man, his days are as the grass;
    \break
    as a flo -- wer
  \once \override LyricText.self-alignment-X = #LEFT
    of_the_field,_so_shall he blos -- som forth.
    }
  >>
}

% Verse 14
% Page 4 B(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 14" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c c d2 (e) f4 f f e f1 \bar "|"
        e4 f g g4 f1 \bar "|"
        e4 e f e e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r2  r  r4 r r r r r r1 \bar "|"
          r4 r r r4 r1 \bar "|"
          a4 r r r r g2 r4
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      For when the wind is passed ov -- er it,
      then it shall be gone,
      \break
      and no long --
    \once \override LyricText.self-alignment-X = #LEFT
      er_will_it_know the place there -- of.
    }
  >>
}

% Verse 15
% Page 4 A(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 15" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c d8 ([e]) f4  f f e f1 \bar "|"
        e4 e d2  c1 \bar "||"
      }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r8  r  r4  r4 r r r1 \bar "|"
          a4 r g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      But the mer -- cy
    \once \override LyricText.self-alignment-X = #LEFT
      of_the_Lord_is from e --
    \once \override LyricText.self-alignment-X = #LEFT
      ternity,_even_unto e -- ter -- ni -- ty,
      \break
    \once \override LyricText.self-alignment-X = #LEFT
      upon_them that fear Him.
    }
  >>
}

% Verse 16
% Page 4 B(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 16" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c d e f e f1 \bar "|"
        e4 e d e f1 \bar "|"
        e4 e d e f2 f4 e4 d2 c1 \bar "||"

        }
      \new Voice = "ison" \relative c' { \ison
          r4 r r2 r r4 r r r r r r1 \bar "|"
          r4 r r r r1 \bar "|"
          a4 r r r r r2 r4 g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      And His right -- eous -- ness is up -- on sons of sons,
    \once \override LyricText.self-alignment-X = #LEFT
      upon_them_that_keep

      \break
      His test -- a -- ment
    \once \override LyricText.self-alignment-X = #LEFT
      and_remem -- ber His com -- mand -- ments to do them.
    }
  >>
}

% Verse 17
% Page 4 A(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 17" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 (e) c4 d e f f f e f1 \bar "|"
        e4 f g f e e d2 d4 c1 \bar "||"

        }
      \new Voice = "ison" \relative c' { \ison
        r4 r2 r r4 r r r r r r r1 \bar "|"
        a4 r r r r r g2 r4
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      The Lord in hea -- ven hath pre -- pared His throne,
      \break
      and His king -- dom rul -- eth ov -- er all.
    }
  >>
}

% Verse 18
% Page 4 B(3)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 18" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 d e f2 f1 \bar "|"
        e4 e d e f1 \bar "|"
        e4 e e d2 d4 d c1 \bar "||"

        }
      \new Voice = "ison" \relative c' { \ison
          r4 r r2  r  r4 r r r2 r1 \bar "|"
          r4 r r r r1 \bar "|"
          r4 r r g2 r4 r
          \ison_right
          c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Bless the Lord, all ye His an -- gels,

      \once \override LyricText.self-alignment-X = #LEFT
      mighty_in_strength,_that per -- form His word,
      \break
      to hear the voice of His words.
    }
  >>
}

\pageBreak

% Verse 19
% Page 5 A(1)
\score {
  \layout { ragged-last = ##f }
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 19" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 d e f1 \bar "|"
        e4 e d2 d4 c1 \bar "||"

        }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2  r  r4 r r r1 \bar "|"
        r4 r g2 r4 \ison_right c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Bless the Lord, all ye His hosts,
      \once \override LyricText.self-alignment-X = #LEFT
      His_ministers that do His will.
    }
  >>
}

% Verse 20
% Page 5 B(1)
\score {
  \layout { ragged-last = ##f }
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 20" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 d e f1 \bar "|"
        e4 e d2 c1 \bar "||"

        }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2  r  r4 r r r1 \bar "|"
        r4 r g2 \ison_right c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, all ye His works,
  \once \override LyricText.self-alignment-X = #LEFT
    in_every_place_of_His do -- min -- ion.
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
        "Psalm 102"
      }
      \right-column {
        \fontsize #8 \bold "B14"
        "Valaam Chant"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { B14 - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { B14 - \fromproperty #'page:page-number-string }
      \null
    }
  }
}