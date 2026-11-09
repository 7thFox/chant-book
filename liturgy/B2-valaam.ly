\include "../common.ly"

\header {
  title    = "The First Antiphon"
  subtitle = "Psalm 102"
  composer = "Valaam Chant"
}

\layout {
  indent = 10\mm
}

\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
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

\score {
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
      Bless the Lord, __ O my soul;

      \break
      Bles -- sed art Thou O Lord.
    }
  >>
  \layout {
    indent = 40\mm
  }
}

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
    Bless the Lord, __ O my soul,
    and all that is with -- in me

    \break
    bless His ho -- ly name.
    }
  >>
}


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
    Bless the Lord, __ O my soul,
    and for -- get not
      \once \override LyricText.self-alignment-X = #LEFT
    all_that_He

    \break
    hath done for thee;
    }
  >>
}


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
    Who heal -- eth all thine in -- firm -- it -- ies;
    }
  >>
}

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
  \once \override LyricText.self-alignment-X = #LEFT
    thee_with_mer-cy_and com -- pas -- sion,
    }
  >>
}

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
    thy youth shall
  \once \override LyricText.self-alignment-X = #LEFT
    be_re-newed_as the ea -- gle's.
    }
  >>
}

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
    judge-ment_for_all them that are wronged.
  \once \override LyricText.self-alignment-X = #LEFT
    He_hath_made_His_ways known un -- to Mo -- ses,
    un -- to the sons of
  \once \override LyricText.self-alignment-X = #LEFT
    Is-ra-el the things that He hath willed.
    }
  >>
}

% Page 2 A(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8a" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 e c4 c d e f f e f1 \bar "|"
        f4 e  e d2 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r2 r r4 r r r r r r r1 \bar "|"
          a4 r r g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Com -- pass -- ion -- ate and mer -- ci -- ful is the Lord,
      long --
  \once \override LyricText.self-alignment-X = #LEFT
      suff-er-ing_and_plen-te-ous in mer -- cy;
    }
  >>
}

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
        e4 f g f e e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r r2  r  r4 r2 r4 r r1 \bar "|"
          r4 r r r r1 \bar "|"
          a4 r4 r r r1 \bar "|"
          r4 r r r r r g2 r4
          \ison_right
          c1 \bar "||"
      }
    >>

    \new Lyrics \lyricsto "melody" {
  \once \override LyricText.self-alignment-X = #LEFT
    Not_un-to the end will He be an -- gered,
  \once \override LyricText.self-alignment-X = #LEFT
    nei-ther_un-to_e-tern-ity will He be wroth.
  \once \override LyricText.self-alignment-X = #LEFT
    Not_according_to_our_iniquities_hath He dealt with us,
    nei -- ther ac -- cord --
  \once \override LyricText.self-alignment-X = #LEFT
    ing_to_our_sins_hath_He re -- ward -- ed us.
    }
  >>
}

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
      the Lord hath made His
    \once \override LyricText.self-alignment-X = #LEFT
      mer-cy_to_pre-vail_ov-er_them that fear Him.
    }
  >>
}

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
  \once \override LyricText.self-alignment-X = #LEFT
    hath_He_re-moved_our in -- i -- quit -- ies from us.
    }
  >>
}

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
    hath_com-pass-ion_up -- on his sons,
    so hath
  \once \override LyricText.self-alignment-X = #LEFT
    the_Lord_had_com-pass-ion_upon_them that fear Him;
    }
  >>
}

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
    He hath re -- mem -- bered that we are dust.
    }
  >>
}

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
    as a flo -- wer
  \once \override LyricText.self-alignment-X = #LEFT
    of_the_field,_so_shall he blos -- som forth.
    }
  >>
}

% Page 4 B(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 14" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 (e) c4 d e f f e f1 \bar "|"
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
      and no long --
    \once \override LyricText.self-alignment-X = #LEFT
      er_will_it_know the place there -- of.
    }
  >>
}

% Page 4 A(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 15" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c d8 ([e]) f4 \break f4 f e f1 \bar "|"
        e4 e d2  c1 \bar "||"
      }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r8  r  r4 \break r4 r r r1 \bar "|"
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
      ter-ni-ty,
    \once \override LyricText.self-alignment-X = #LEFT
      even_unto_e -- ter -- ni -- ty,
    \once \override LyricText.self-alignment-X = #LEFT
      up-on_them that fear Him.
    }
  >>
}

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
      up-on_them_that_keep His test -- a -- ment
    \once \override LyricText.self-alignment-X = #LEFT
      and_re-mem -- ber His com -- mand -- ments to do them.
    }
  >>
}

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
      and His king -- dom rul -- eth ov -- er all.
    }
  >>
}

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
      might-y_in_strength,_that per -- form His word,
      to hear the voice of His words.
    }
  >>
}

% Page 5 A(1)
\score {
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
      His_min-is-ters that do His will.
    }
  >>
}

% Page 5 B(1)
\score {
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
    in_ev-ery_place_of_His do -- min -- ion.
    }
  >>
}

% Page 5 A(2)
\score {
  <<
    \new Staff
    % \with {
    %   instrumentName = \markup { "V. 20b" }
    % }
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

% Page 5 B(2)
\score {
  <<
    \new Staff
    % \with {
    %   instrumentName = \markup { "V. 20b" }
    % }
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
      and_un-to_the_a-ges of a -- ges. A -- men.
    }
  >>
}

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
    bless His ho -- ly name.
    Bles -- sed art Thou O Lord.
    }
  >>
}