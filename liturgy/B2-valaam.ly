\include "../common.ly"

\header {
  title    = "The First Antiphon"
  subtitle = "Psalm 102"
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
        e4 (f) g f e d e f1 e4 e d2 d4 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        \ison_right
        c1 r r2  r  r4 \bar "|"
        \ison_zero
        a1 r2 r4 r1 r2 g2 r4
        \ison_right
        c1\bar "||" }
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
        c4 c d2 e c4 c c d e f f f1 \bar "|"
        e4 (f) g2 f4 e e e d2 d4 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r r r r1 \bar "|"
        a4  r  r2 r4 r r r g2 r4
        \ison_right
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who is gra -- cious un -- to all thine in -- iq -- uit -- ies,
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
        c4 d2 (e) f4 f f e e e f1 \bar "|"
        e4 e f g4 f4 e e e e e d e f1 \bar "|"
        e4 e e e e e d e f2 f2 \bar "|"
        e4 e f g f e e e e f e d d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % c4 d2 (e) c4 c c c d e f1 \bar "|"
          r4 r2  r  r4 r r r r r r1 \bar "|"
        % e4 e f g4 f4 e e e e e d e f1 \bar "|"
          r4 r r r4 r4 r r r r r r r r1  \bar "|"
        % e4 e e e e e d e f f1 \bar "|"
          a4 r r r r r r r r2 r2 \bar "|"
        % e4 e f g f e e e e f e d d c1 \bar "||"
          r4 r r r r r r r r g r r r
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
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 e c4 c c d e f e f1 \bar "|"
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

% Page 2 B(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c c c d2 (e) e4 f2 f4 e f1 \bar "|"
        e4 e e e e e e e d e f1 \bar "|"
        e4 e \breve e4 e d e f1 \bar "|"
        e4 e f g f e e e e e e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % c4 c c c d2 (e) e4 f2 f4 e f1 \bar "|"
          r4 r r r r2  r  r4 r2 r4 r r1 \bar "|"
        % e4 e e e e e e e d e f1 \bar "|"
          r4 r r r r r r r r r r1 \bar "|"
        % e4 e \breve e4 e d e f1 \bar "|"
          a4 r \breve r4 r r r r1 \bar "|"
        % e4 e f g f e e e e e e d2 d4 c1 \bar "||"
          r4 r r r r r r r r r r g2 r4
          \ison_right
          c1 \bar "||"
      }
    >>

    \new Lyrics \lyricsto "melody" {
    Not un -- to the end will He be an -- gered,
    nei -- ther un -- to e -- tern -- ity will He be wroth.
    Not according__to__our__iniquities hath He dealt with us,
    nei -- ther ac -- cord -- ing to our sins hath He re -- ward -- ed us.
    }
  >>
}

% Page 3 A(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c c c c c d e f1 \bar "|"
        e4 e f g f e e e e e e e d2 d4 d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        r4 r r2 r r4 r r r r r r r r1 \bar "|"
        a4 r r r r r r r r r r4 r g2 r4 r
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      For ac -- cord -- ing to the height of hea -- ven from the earth,
      the Lord hath made His mer -- cy to pre -- vail ov -- er them that fear Him.
    }
  >>
}

% Page 3 B(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 (e) c4 c c c d e f1 \bar "|"
        e4 e e e f g f e e e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        r4 r2 r r4 r r r r r r1 \bar "|"
        a4 r r r r r r r r r g2 r4
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    As far as the east is from the west,
    so far hath He re -- moved our in -- i -- quit -- ies from us.
    }
  >>
}

% Page 3 A(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        d2 (e) c4 d8 ([e]) f4 f f f f f f f e f1 \bar "|"
        e4 g f e e e e e e d2 d4 d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % d2 (e) c4 d8 ([e]) f4 f f f f f f f e f1 \bar "|"
          r2  r  r4 r8   r   r4 r r r r r r r r r1 \bar "|"
        % e4 g f e e e e e e d2 d4 d
          a4 r r r r r r r r g2 r4 r
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    Like as a fa -- ther hath com -- pass -- ion up -- on his sons,
    so hath the Lord had com -- pass -- ion upon them that fear Him;
    }
  >>
}

% Page 3 B(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
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
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 c c d e f1 \bar "|"
        e4 f g f e e e e e e d2 d4 c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % c4 c d2 (e) c4 c c d e f1 \bar "|"
          r4 r r2  r  r4 r r r r r1 \bar "|"
        % e4 f g f e e e e e e d2 d4
          a4 r r r r r r r r r g2 r4
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
    As for man, his days are as the grass;
    as a flo -- wer of the field, so shall he blos -- som forth.
    }
  >>
}

% Page 4 B(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 (e) c4 d e f f e f1 \bar "|"
        e4 f g g4 f1 \bar "|"
        e4 e f e e e d2 d4 d d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % c4 d2 (e) c4 d e f f e f1 \bar "|"
          r4 r2  r  r4 r r r r r r1 \bar "|"
        % e4 f g2 g4 f1 \bar "|"
          r4 r r r4 r1 \bar "|"
        % e4 e f e e e d2 d4 d d
          a4 r r r r r g2 r4 r r
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      For when the wind is passed ov -- er it,
      then it shall be gone,
      and no long -- er will it know the place there -- of.
    }
  >>
}

% Page 4 A(1)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 d8 ([e]) f4 \breve \break f4 f e f1 \bar "|"
        e4 e d2 d4 d c1 \bar "||"
        }
      \new Voice = "ison" \relative c' { \ison
        % c4 c d2 e c4 d8 ([e]) f4 \breve \break f4 f e f1 \bar "|"
          r4 r r2 r r4 r8   r   r4 \breve \break r4 r r r1 \bar "|"
        % e4 e d2 d4 d
          a4 r g2 r4 r
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      But the mer -- cy of the Lord is__from__eternity,__even__unto e -- ter -- ni -- ty,
      up -- on them that fear Him.
    }
  >>
}

% Page 4 B(2)
\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 8" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 e c4 c d e f e f1 \bar "|"
        e4 e e e e e d e f1 \bar "|"
        e4 e e e d e f1 f4 e4 d2 c1 \bar "||"

        }
      \new Voice = "ison" \relative c' { \ison
        % c4 c d2 e c4 c d e f e f1 \bar "|"
          r4 r r2 r r4 r r r r r r1 \bar "|"
        % e4 e e e e e d e f1 \bar "|"
          r4 r r r r r r r r1 \bar "|"
        % e4 e e e e d e f1 e4 d2
          a4 r r r r r r r1 r4 g2
        \ison_right
        c1 \bar "||"
        }
    >>

    \new Lyrics \lyricsto "melody" {
      And His right -- eous -- ness is up -- on sons of sons,
      up -- on them that keep His test -- a -- ment
      and re -- mem -- ber His com -- mand -- ments to do them.
    }
  >>
}



% words = \lyricmode {
%     The Lord in heaven hath prepared His throne, and His kingdom ruleth over all.
%     Bless the Lord, all ye His angels, mighty in strength, that perform His word, to hear the voice of His words.
%     Bless the Lord, all ye His hosts, His ministers that do His will.
%     Bless the Lord, all ye His works, in every place of His dominion. Bless the Lord, O my soul.

% }