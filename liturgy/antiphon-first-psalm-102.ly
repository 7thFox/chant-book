\include "../common.ly"

\header {
  title = "The First Antiphon"
  subtitle = "Psalm 102"
  composer = "Valaam Chant"
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
        \ison_beside
        r4 r r2 r r4 r r r1 \bar "|"
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

\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 1" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 c d2 (e) c4 (d) e f1 \bar "|"
        e4 (f) g f e d e f1 e4 e d2 d4 c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        \ison_beside
        c1 r r2  r  r4 \bar "|"
        \ison_zero
        a1 r2 r4 r1 r2 g2 r4
        \ison_beside
        c1\bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, __ O my soul,
    and all that is with -- in me bless His ho -- ly name.
    }
  >>
}


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
        \ison_beside
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Bless the Lord, __ O my soul,
    and for -- get not all that He hath done for thee;
    }
  >>
}


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
        \ison_beside
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who is gra -- cious un -- to all thine in -- iq -- uit -- ies,
    Who heal -- eth all thine in -- firm -- it -- ies;
    }
  >>
}

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
        \ison_beside
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who re -- deem -- eth thy life from cor -- rup -- tion,
    Who crown -- eth thee with mer -- cy and com -- pas -- sion,
    }
  >>
}

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
        \ison_beside
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    Who ful -- fill -- eth thy de -- sire with good things;
    thy youth shall be re -- newed as the ea -- gle's.
    }
  >>
}

\score {
  <<
    \new Staff  \with {
      instrumentName = \markup { "V. 6" }
    } <<
      \new Voice = "melody" \relative c' { \melody
        c4 d2 (e) c4 c c c d e f1 \bar "|"
        e4 e f g4 f4 e e e e d2 d4 d c1 \bar "||" }
      \new Voice = "ison" \relative c' { \ison
        r4 r2  r  r4 r r r r r r1 \bar "|"
        a4 r r r4 r4 r r r r g2 r4 r
        \ison_beside
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    The Lord __ per -- form -- eth deeds of mer -- cy,
    and ex -- e -- cut -- eth judge -- ment for all them that are wronged.
    }
  >>
}

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
        \ison_beside
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    He hath made His ways known un -- to Mo -- ses,
    un -- to the sons of Is -- ra -- el the things that He hath willed.
    }
  >>
}


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
        \ison_beside
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    He hath made His ways known un -- to Mo -- ses,
    un -- to the sons of Is -- ra -- el the things that He hath willed.
    }
  >>
}

words = \lyricmode {
    Compassionate and merciful is the Lord, long-suffering and plenteous in mercy; not unto the end will He be angered, neither unto eternity will He be wroth.
    Not according to our iniquities hath He dealt with us, neither according to our sins hath He rewarded us.
    For according to the height of heaven from the earth, the Lord hath made His mercy to prevail over them that fear Him.
    As far as the east is from the west, so far hath He removed our iniquities from us.
    Like as a father hath compassion upon his sons, so hath the Lord had compassion upon them that fear Him; for He knoweth whereof we are made, He hath remembered that we are dust.
    As for man, his days are as the grass; as a flower of the field, so shall he blossom forth.
    For when the wind is passed over it, then it shall be gone, and no longer will it know the place thereof.
    But the mercy of the Lord is from eternity, even unto eternity, upon them that fear Him.
    And His righteousness is upon sons of sons, upon them that keep His testament and remember His commandments to do them.
    The Lord in heaven hath prepared His throne, and His kingdom ruleth over all.
    Bless the Lord, all ye His angels, mighty in strength, that perform His word, to hear the voice of His words.
    Bless the Lord, all ye His hosts, His ministers that do His will.
    Bless the Lord, all ye His works, in every place of His dominion. Bless the Lord, O my soul.

}