\include "../../common.ly"

\header {
  title    = "Magnify, O My Soul"
  subtitle = "Zadostoinik for the Feast of Transfiguration"
  composer = "Valaam Chant"
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
        \startGroup
        d4 (e) d (c)
        \stopGroup
        d2 (e f1) \bar "|"
        d4 (e) f (e f g) f (e d1) \bar "|" \break
        d2 d4 (b d2) d e4 (f g2) g g4 (f) e2 f (e) d1 \bar "||" \break

        c2 d e e4 (d) e (f) g2 f e d4 (e f2) e1 \bar "|"
        d2 (e) e d e (e4 f) g2 (f) e (d4 e f2 e1) \bar "|"
        e2 d e4 (d) e (f g2) g4 (e) f (g) a2 g f e (d f1) \bar "|"
        f2 f f e4 (d e2) e d c d1 \bar "|"
        f1 f2 e4 d f2 e4 e d1 \bar "|"
        e2 (f g1) f2 e d (e f1) e \bar "|."

        }
      \new Voice = "ison" \relative c' { \ison
        \ison_left
        r4 r r r
        d2 r r1 \bar "|"
        % d4 (e) f (e f g) f (e d1) \bar "|" \break
        \ison_zero
          r4  r  r  r r r  r  r r1  \bar "|"
        % d2 d4 (b d2) d e4 (f g2) g g4 (f) e2 f (e) d1 \bar "||" \break
          a2 r4  r r2  r r4  r c2  r r4  r  r2 r  r
          \ison_right
          d1 \bar "||"

        % c2 d e e4 (d) e (f) g2 f e d4 (e f2) e1 \bar "|"
          c2 r r r4  r  r  r  r2 r r r4  r r2  r1 \bar "|"
          \ison_zero
        % d2 (e) e d e (e4 f) g2 (f) e (d4 e f2 e1) \bar "|"
          a2  r  r r r  r4 r  c2  r  r  r4 r r2 r1 \bar "|"
        % e2 d e4 (d) e (f g2) g4 (e) f (g) a2 g f e (d f1) \bar "|"
          r2 r r4  r  r  r r2  r4  r  r  r  d2 r r r  r r1 \bar "|"
        % f2 f f e4 (d e2) e d c d1 \bar "|"
          r2 r r c4  r r2  r r r
          \ison_right
          d1 \bar "|"
          \ison_zero
        % f1 f2 e4 d f2 e4 e d1 \bar "|"
          r1 r2 r4 r r2 r4 r r1 \bar "|"
        % e2 (f g1) f2 e d (e f1) e \bar "|."
          \ison_align
          r2  r c1
          \ison_right
          r2 r d  r r1  e \bar "|."

        }
    >>

    \new Lyrics \lyricsto "melody" {
      Mag -- ni -- fy,
      O my soul,
      the Lord trans -- fig -- ured on Mount Ta -- bor.

      Thy birth -- give -- ing was with -- out cor -- rup -- tion.
      God came forth from thy womb,
      and He ap -- peared up -- on earth
      clothed in flesh and made His dwell -- ing a -- mong men;
      there -- fore we all mag -- ni -- fy thee, O The -- o -- tok -- os.
    }
  >>
}