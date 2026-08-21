\include "../common.ly"

\header {
  title    = "Now Lettest Thou Thy Servant"
  composer = "Valaam Chant"
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
        c4. (d8 e2) d4 d4 \breve e4 c4. (d8 c4) b a2. \bar "|"
        b4 (c) d d e4 c4. d8 c4 b a2. \bar "|"
        b4 b c4. (d8 e2) d4 d d  e4 c4. (d8 c4 b) a2. \bar "|"
        b8 ([c]) d4 d d \breve e4 c4. (d8 c4 b) a2. \bar "|"
        b4 c4. (d8 e2) d4 d \breve e4 c4. (d8 c4 b) a2. \bar "|"
        b4 c d4 d4 \breve e4 c4. (d8 c4) b a2. \bar "|."
        }
      \new Voice = "ison" \relative c' { \ison
        a2 r2 r4 r4 r1 r1 r4 r2 r4 r r2 r4 \bar "|"
        r4 r g r4 r a2 r4 r r2 r4 \bar "|"
        r4 r r2 r2 r4 r r r4 r2 r4 r r2 r4 \bar "|"
        g4 r r4 r1 r1 r4 a2 r4 r4 r2 r4 \bar "|"
        r4 r2 r2 r4 r1 r1 r4 r2 r4 r r2 r4 \bar "|"
        r4 r g4 r r1 r1 r4 a2 r4 r r2 r4 \bar "|."
        }
    >>

    \new Lyrics \lyricsto "melody" {
      Now let -- test Thou__Thy__ser-vant de -- part in peace,
      O Ma -- ster, ac -- cord -- ing to Thy word:
      for mine eyes have seen Thy sal -- va -- tion,
      which Thou hast pre-pared__be-fore__the__face__of all peo -- ples;
      a light of rev-el-a-tion__for the Gen -- tiles,
      and the glo -- ry of__Thy__peo-ple Is -- ra -- e -- l.
    }
  >>
  \layout {
    ragged-last = ##f
  }
}