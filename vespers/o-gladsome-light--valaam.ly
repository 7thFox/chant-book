\include "common.ly"

\header {
  title    = "O GLADSOME LIGHT"
  composer = "Valaam Chant"
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
        d4 (e) f2. f4 e2 (d) d4 e f e f2 (e) d4 d d e \break
        % f2. e4 f2 e d4 (e f2) e4 e d2 (c) d4 (e) f2 e \break
        f2. e4 f2 (e4) e4 d (e) f2 (e4) d2 (c) d4 e f2 e \break
        d4 (e) f2 (e4) f8 [(e)] d1 \bar "|" d4 c d2 d4 e f e \break
        e4 f8 [(e)] d2 \bar "|" d4 d e f2 e4 e (f) e4 d2 (c d) d4 (e) \break
        f2 (g) f4 (g) f (e) f2. e4 f2. (e4) f8 [(e)] d2 c d1 \bar "|"
        d4 (e f2.) e4 e f8 [(e)] d2 d4 (e) f2 e4 f8 [(e)] d4 (e) f2. f4 \break
        g2 (f2) e4 f8 ([e] d2) c \bar "|" d4 (e) f2. e4 f2. e4 e f8 ([e]) \break
        d2 (c d1) \noBreak \bar "|" d2 (c) d e f (g f) e f c4 c d1 \bar "|."

      }
      % \new Voice = "ison" \relative c' { \ison
      %   r4 r r2  r  r4 r r r r r r1 \bar "|"
      %   a4 r r r4 r4 r r r r g2 r4 r r
      %   \ison_right
      %   c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
      O GLAD -- SOME LIGHT OF THE HO -- LY GLOR -- Y
      OF THE IM -- MOR -- TAL, HEAV -- EN -- LY,
      HO -- LY, BLESS -- ED FA -- THER,
      % OF THE IM -- MOR -- TAL, FA -- THER
      % HEAV -- EN -- LY, HO -- LY, BLESS -- ED:
      O JE -- SUS CHRIST:

      HA -- VING COME TO THE SET -- TING OF THE SUN,
      HA -- VING BE -- HELD THE EVE -- NING LIGHT,
      WE PRAISE FA -- THER, SON, AND HO -- LY SPI -- RIT: GOD.
      MEET IT IS FOR THEE AT ALL TIMES TO BE HYMNED
      WITH REV -- 'RENT VOI -- CES,

      O SON OF GOD, GIV -- ER OF LIFE.
      WHERE -- FORE, THE WORLD DOTH GLOR -- I -- FY THEE
    }
  >>
}