\include "../common.ly"

#(set-global-staff-size 22)

\header {
  title    = "The First Antiphon"
  subtitle = "Psalm 102 (Shortened)"
  composer = "Valaam Chant"
}

\layout {
  indent = 10\mm
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
    and all that is with -- in me bless His ho -- ly name.
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
        e4 f g2 f4 e e e e d2 d4 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r1 r r2  r  r4 \bar "|"
        a4 r r2 r4 r r r r g2 r4
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, __ O my soul,
    and for -- get not all that He hath done for thee;
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
        e4 (f) g2 f4 e e e e e e d2 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r r1 \bar "|"
        a4  r  r2 r4 r r r r r r g2
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who re -- deem -- eth thy life from cor -- rup -- tion,
    Who crown -- eth thee with mer -- cy and com -- pas -- sion,
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
        e4 (f) g2 f4 e e e e e d2 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r r1 \bar "|"
        a4  r  r2 r4 r r r r r g2
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who ful -- fill -- eth thy de -- sire with good things;
    thy youth shall be re -- newed as the ea -- gle's.
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
        e4 e f g4 f4 e e e e e2 d e f1 \bar "|"
        e4 e e e e e d e f2 f2 \bar "|"
        e4 e f g f e e e e d2 d4 d d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % c4 d2 (e) c4 c c c d e f1 \bar "|"
          r4 r2  r  r4 r r r r r2 r1 \bar "|"
        % e4 e f g4 f4 e e e e e d e f1 \bar "|"
          r4 r r r4 r4 r r r r r2 r r r1  \bar "|"
        % e4 e e e e e d e f f1 \bar "|"
          a4 r r r r r r r r2 r2 \bar "|"
        % e4 e f g f e e e e f e d d c1 \bar "||"
          r4 r r r r r r r r g2 r4 r r
          \ison_right
          c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    The Lord __ per -- form -- eth deeds of mer -- cy,
    and ex -- e -- cut -- eth judge -- ment for all them that are wronged.
    He hath made His ways known un -- to Mo -- ses,
    un -- to the sons of Is -- ra -- el the things that He hath willed.
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
        f4 e e e e e e e e d2 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
          r4 r2 r r4 r r r r r r r1 \bar "|"
          a4 r r r r r r r r g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Com -- pass -- ion -- ate and mer -- ci -- ful is the Lord,
      long- suff -- er -- ing and plen -- te -- ous in mer -- cy;
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
        e4 e e e e d2 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        r2 r r4 r r2 r1 \bar "|"
        r4 r r r1 \bar "|"
        a4 r r r r g2 \ison_right c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Glo -- ry to the Fa -- ther, and to the Son, and to the Ho -- ly Spi -- rit.
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
        e4 e e e e d (e) f1 \bar "|"
        e4 e d e f1 \bar "|"
        e4 e e d2 d4 c1 \bar "|."

      }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r1 \bar "|"
        r4 r r  r r  r r r1 \bar "|"
        r4 r r  r r1 \bar "|"
        r4 r r g2 r4 \ison_right c1 \bar "|."
      }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, O my soul,
    and all that is with -- in me
    bless His ho -- ly name.
    Bles -- sed art Thou O Lord.
    }
  >>
}