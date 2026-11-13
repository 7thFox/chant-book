\include "common.ly"

\paper {

  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "Prokeimenon"
      }
      \right-column {
        \fontsize #8 \bold "H"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { H - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { H - \fromproperty #'page:page-number-string }
      \null
    }
  }
}

\layout {
  ragged-last = ##f
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
  }
}
\paper {
  systems-per-page = 6
}

\score {
  <<
    \new Staff <<
      \new Voice = "soprano" \relative c''
      {
        \key f \major
        \voiceOne
        \omit Staff.TimeSignature
        \omit Score.BarNumber

        \cadenzaOn
        % 1
        a4 a \bar "|"
        g2 fis4 fis g a bes bes a2 g4 a g ([f8 g]) a4 a g2 bes2 \cadenzaOff a1 \bar "|." \cadenzaOn

        % 2
        g4 g \bar "|"
        g4 (a) bes2 a g4 (a) g ([f8 g] a4) a g2 (bes) \cadenzaOff a1 \bar "|." \cadenzaOn

        % 3
        a2 a a4 a bes2 bes a1 \bar "|"
        bes2 (a) g g4 a bes a g fis g2 (fis) \cadenzaOff g1 \bar "|." \cadenzaOn

        % 4
        a4 a a \bar "|"
        a4 a2 a bes (a4 g a) a bes2 (a4) a \cadenzaOff g1 \bar "|." \cadenzaOn

        %5
        bes4 bes \bar "|"
        bes4 bes a bes c2 c bes bes4 (a) g2 a4 (g) \cadenzaOff f1 \bar "|." \cadenzaOn

        %6
        bes4 bes \bar "|"
        bes4 bes2 bes4 c d2 c4 c bes c d (c bes) a \cadenzaOff bes1 \bar "|." \cadenzaOn

        %7
        a4 g2 a4 bes4 bes bes a2 g2 \bar "|"
        bes4 bes bes (c) bes a g2 a4 g \cadenzaOff f1 \bar "|." \cadenzaOn

        %8
        bes4 bes \bar "|"
        bes4 bes g a2 (f4 g a2) bes \cadenzaOff a1 \bar "|." \cadenzaOn

        %10
        a4 a \bar "|"
        a4 a a a2 a4 a bes2 a4 (g) a a bes2 (a) \cadenzaOff g1 \bar "|." \cadenzaOn

        %11
        a4 a \bar "|"
        a4 a bes2 a4 (g) a a bes2 (a4) a \cadenzaOff g1 \bar "|." \cadenzaOn

        %12
        a4 g2 a4 bes bes a2 (g) \bar "|"
        bes4 bes bes a2 g2 \cadenzaOff f1 \bar "|." \cadenzaOn

        %13
        bes4 bes bes bes2 a4 (g) a2 bes c1 \bar "|"
        c4 c c2 c4 c d2 (c) c d c bes2. c4 d (c bes a) \cadenzaOff bes1 \bar "|." \cadenzaOn

        %14
        bes4 bes \bar "|"
        bes4 bes g a2 (f4 g a2) bes4 bes \cadenzaOff a1 \bar "|." \cadenzaOn

        %15
        a4 a g2 (a4) bes bes a2 (g) \bar "|"
        bes4 bes a2 (g) \cadenzaOff f1 \bar "|." \cadenzaOn

        %16
        bes4 bes \bar "|"
        bes4 g a2 f4 (g) a2 bes \cadenzaOff a1 \bar "|." \cadenzaOn

        %17
        bes4 bes \bar "|"
        bes4 (c) d2 (c) bes4 c d (c bes a) \cadenzaOff bes1 \bar "|." \cadenzaOn

        %18
        a4 a a2 \bar "|"
        a4 bes2 (a4 g a) a bes2 (a4) a \cadenzaOff g1 \bar "|." \cadenzaOn

        %19
        a2 g a4 bes bes a2 (g) \bar "|"
        bes4 bes a2 g4 g \cadenzaOff f1 \bar "|." \cadenzaOn

        %20
        a4 a \bar "|"
        a4 a bes a bes c d2 (c) bes4 c bes ([a8 bes] c4 bes2) \cadenzaOff a1 \bar "|." \cadenzaOn

        %21
        \transpose g f' {
          fis4 fis g a a \bar "|"
          a4 a a b c'2 b4 a2 (b4) a \cadenzaOff g1 \bar "|." \cadenzaOn
        }

        %22
        \transpose g f' {
          g4 a b b b \bar "|"
          b4 b a8 ([b]) c'4 b1 (a4 b) a2 \cadenzaOff g1 \bar "|." \cadenzaOn
        }

      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo

        % 1
        f4 f \bar "|"
        d2 d4 d d f f f f2 e4 f e ([d8 e]) f4 f e2 g f1 \bar "|."

        % 2
        d4 d \bar "|"
        d4 (f) f2 f e4 (f) e ([d8 e] f4) f e2 (g) f1 \bar "|."

        % 3
        f2 f f4 f f2 f f1 \bar "|"
        f1 d2 d4 f f f d d d1 d1 \bar "|."

        % 4
        f4 f f \bar "|"
        f4 f2 f f1 ~ f4 f f2. fis4 d1 \bar "|."

        %5
        g4 g \bar "|"
        g4 g f g a2 a g g4 (f) e2 f4 (e) d1 \bar "|."

        %6
        g4 g \bar "|"
        g4 g2 g4 a bes2 a4 a g a bes (a g) f g1 \bar "|."

        %7
        f4 e2 f4 g g g f2 e \bar "|"
        g4 g g (a) g f e2 f4 e d1 \bar "|."

        %8
        g4 g \bar "|"
        g4 g e f2 (d4 e f2) d4 (g) e1 \bar "|."

        %10
        f4 f \bar "|"
        f4 f f f2 f4 f f2 f f4 f f2 (fis) d1 \bar "|."

        %11
        f4 f \bar "|"
        f4 f f2 f f4 f f2. fis4 d1 \bar "|."

        %12
        f4 e2 f4 g g f2 (e) \bar "|"
        g4 g g f2 e d1 \bar "|."

        %13
        g4 g g g2 f4 (e) f2 g a1 \bar "|"
        a4 a a2 a4 a bes2 (a) a bes a g2. a4 bes (a g fis) g1 \bar "|."

        %14
        g4 g \bar "|"
        g4 g e f2 (d4 e f2) d4 g e1 \bar "|."

        %15
        f4 f e2 (f4) g g f2 (e) \bar "|"
        g4 g f2 (e) d1 \bar "|."

        %16
        g4 g \bar "|"
        g4 e f2 d4 (e) f2 d4 (g) e1 \bar "|."

        %17
        g4 g \bar "|"
        g4 (a) bes2 (a) g4 a bes (a g fis) g1 \bar "|."

        %18
        f4 f f2 \bar "|"
        f4 f1 ~ f4 f f2. fis4 d1 \bar "|."

        %19
        f2 e f4 g g f2 (e) \bar "|"
        g4 g f2 e4 e d1 \bar "|."

        %20
        f4 f \bar "|"
        f4 f g fis g a bes2 (a) g4 a g ([f8 g] a4 g2) f1 \bar "|."

        %21
        \transpose g f' {
          d4 d d fis fis \bar "|"
          fis4 fis fis g a2 g4 fis2 (g4) fis e1 \bar "|."
        }

        %22
        \transpose g f' {
          d4 fis g g g \bar "|"
          g4 g g g g1 (e2) e4 (fis) d1 \bar "|."
        }

      }
    >>

    \new Lyrics \lyricsto "soprano" {

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "1" } }
          \once \override LyricText.self-alignment-X = #LEFT
        LET_THY_MERCY,_O_LORD,_BE_UPON US,
        AS WE HAVE SET OUR HOPE ON THEE,
      \break
        AS WE HAVE SET OUR HOPE ON THEE.

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "2" } }
          \once \override LyricText.self-alignment-X = #LEFT
        THE_LORD_IS_MY_STRENGTH_AND_MY SONG,
      \break
        AND IS BE -- COME MY SAL -- VA -- TION.

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "3" } }
        SING PRAIS -- ES UN -- TO OUR GOD,
      \break
        SING PARIS -- ES UN -- TO OUR KING, SING PRAIS -- ES.

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "4" } }
          \once \override LyricText.self-alignment-X = #LEFT
        HOW_MANIFOLD_ARE
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        THY_WORKS,_O LORD
        IN WIS -- DOM HAST THOU MADE THEM ALL

      \pageBreak

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "5" } }
          \once \override LyricText.self-alignment-X = #LEFT
        THOU_SHALT_KEEP_US,_O LORD,
          \once \override LyricText.self-alignment-X = #LEFT
        THOU_SHALT_PRESERVE_US_FROM THIS
        GEN -- ER -- A --
      \break
        TION
        HENCE -- FORTH FOR -- EV -- ER.

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "6" } }
          \once \override LyricText.self-alignment-X = #LEFT
        O_LORD,_SAVE_THY PEOPLE,
        AND BLESS THINE
      \break
        IN -- HER -- I -- TANCE,
        THINE IN -- HER -- I -- TANCE.

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "7" } }
        THE LORD SHALL GIVE
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        STRENGTH_UNTO
        HIS PEO -- PLE:
          \once \override LyricText.self-alignment-X = #LEFT
        THE_LORD_SHALL_GIVE HIS PEO -- PLE THE BLESS -- ING
      \break
        OF PEACE.

      \mark \markup { \override #'(thickness . 3) \box { \pad-markup #.5  "8" } }
        PRAY YE
          \once \override LyricText.self-alignment-X = #LEFT
        AND_RENDER_THANKS_UN -- TO THE LORD OUR GOD.

      \pageBreak

      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "10" }
        \fontsize #-1 { "Tone 4: Song of the Fathers" }
      }
          \once \override LyricText.self-alignment-X = #LEFT
        BLESSED_ART_THOU,_LORD_GOD_OF_OUR FATHERS,
        AND PRAISED AND GLO -- RI -- FIED
      \break
        IS THY NAME FOR -- EV -- ER.

      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "11" }
        \column \fontsize #-1 { "Tone 4: Monday, Angels" "and Bodiless Powers" }
      }
          \once \override LyricText.self-alignment-X = #LEFT
        WHO_MAKEST_THY_ANGELS SPIRITS,
        AND THY
      \break
        MIN -- IS -- TERS A BURN -- ING FIRE.

      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "12" }
        \column \fontsize #-1 { "Tone 7: Tuesday, Martyrs," "and for the Forerunner" }
      }
        THE JUST SHALL
          \once \override LyricText.self-alignment-X = #LEFT
        REJOICE_IN
        THE LORD,
      \break
        AND SHALL HAVE HOPE IN HIM.

      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "13" }
        \fontsize #-1 { "Tone 3: Wednesday and the Theotokos" }
      }
        MY SOUL DOTH MAG -- NI -- FY THE LORD,
        AND MY
      \break
        SPI --
          \once \override LyricText.self-alignment-X = #LEFT
        RIT_THAT_REJOICED IN GOD, RE -- JOICED IN GOD MY SAV -- IOR.

      \pageBreak
      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "14" }
        \column \fontsize #-1 { "Tone 8: Thursday, the Holy Apostles," "and St. Nicholas" }
      }
          \once \override LyricText.self-alignment-X = #LEFT
        THEIR_VOICE_IS_GONE_OUT_INTO_ALL_THE EARTH,
          \once \override LyricText.self-alignment-X = #LEFT
        AND_THEIR_WORDS TO THE
      \break
        END OF THE WORLD.

      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "15" }
        \column \fontsize #-1 { "Tone 7: Friday and the Holy" "and Life-Giving Cross" }
      }
        O EX -- ALT
          \once \override LyricText.self-alignment-X = #LEFT
        YE_THE_LORD OUR GOD,
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        AND_BOW_DOWN_BEFORE_HIS_FOOTSTOOL_FOR_HE IS HO -- LY.


      \break
      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "16" }
        \column \fontsize #-1 { "Tone 8: Saturday, the Theotokos," "All Saints, and the Faithful Departed" }
      }
          \once \override LyricText.self-alignment-X = #LEFT
        REJOICE_IN_THE LORD,
        AND BE GLAD
        YE RIGHT -- EOUS ONES.

      \break
      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "17" }
        \column \fontsize #-1 { "Tone 6: For the Departed" }
      }
        THEIR SOULS
        SHALL DWELL
        WITH THE RIGHT -- EOUS

      \break
      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "18" }
        \column \fontsize #-1 { "Tone 4" }
      }
          \once \override LyricText.self-alignment-X = #LEFT
        WONDROUS_IS_GOD_IN HIS SAINTS:
        THE GOD
        OF IS -- RA -- EL.

      \pageBreak
      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "19" }
        \column \fontsize #-1 { "Tone 7" }
      }
        PRE -- CIOUS IN
          \once \override LyricText.self-alignment-X = #LEFT
        THE_SIGHT_OF THE LORD
        IS THE DEATH OF HIS SAINTS

      \break
      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "20" }
        \column \fontsize #-1 { "Tone 1" }
      }
          \once \override LyricText.self-alignment-X = #LEFT
        MY_MOUTH_SHALL_SPEAK WISDOM,
        AND THE PRE -- CEPTS OF MY HEART
      \break
        UN -- DER -- STAND -- ING.

      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "21" }
        \column \fontsize #-1 { "Tone 7: Venerable Fathers" }
      }
        THE SAINTS SHALL
          \once \override LyricText.self-alignment-X = #LEFT
        BOAST_IN GLORY
        AND THEY SHALL
      \break
        RE -- JOICE UP -- ON THEIR BEDS.

      \textMark \markup {
        \override #'(thickness . 3) \box { \pad-markup #.5  "22" }
        \column \fontsize #-1 { "Tone 4" }
      }
        IN THE
          \once \override LyricText.self-alignment-X = #LEFT
        SAINTS_THAT_ARE_IN_HIS_EARTH_HATH_THE
      \break
          \once \override LyricText.self-alignment-X = #LEFT
        LORD_BEEN WONDROUS;
          \once \override LyricText.self-alignment-X = #LEFT
        HE_HATH_WROUGHT ALL HIS DE -- SIRES IN THEM.
    }

    \new Staff <<

      \new Voice = "tenor" \relative c'
      {
        \key f \major
        \voiceOne
        % \clef "treble_8"
        \clef bass
        \omit Staff.TimeSignature

        % 1
        c4 c \bar "|"
        bes2 a4 a bes c d d c2 c4 c c ([a8 c]) c4 c c2 c c1 \bar "|."

        % 2
        bes4 bes \bar "|"
        bes4 (c) d2 c c c4 ([a8 c] c4) c c1 c1 \bar "|."

        % 3
        c2 c c4 c d2 d c1 \bar "|"
        d2 (c) bes bes4 c d c bes a4 bes2 (a) bes1 \bar "|."

        % 4
        c4 c c \bar "|"
        c4 c2 c d (c4 bes c) c d2 (c4) c bes1 \bar "|."

        % 5
        d4 d \bar "|"
        d4 d c bes a2 c c c c c4 (cis) d1 \bar "|."

        %6
        d4 d \bar "|"
        d4 d2 d4 f4 f2 f4 f d f f (ees d) d d1 \bar "|."

        %7
        c4 c2 c4 c c c c2 c \bar "|"
        c4 c c2 c4 c c2 c4 cis <d a>1 \bar "|."

        %8
        d4 d \bar "|"
        d4 d c c2 (a4 c ~ c2) bes4 (d) cis1 \bar "|."

        %10
        c4 c \bar "|"
        c4 c c c2 c4 c d2 c4 (bes) c c d2 (c) bes1 \bar "|."

        %11
        c4 c \bar "|"
        c4 c d2 c4 (bes) c c d2 (c4) c bes1 \bar "|."

        %12
        c4 c2 c4 c c c1 \bar "|"
        d4 d d d2 cis2 a1 \bar "|."

        %13
        <c \tweak font-size #-2 \tweak color #(rgb-color 0.6 0.6 0.6) e>4
        <c \tweak font-size #-2 \tweak color #(rgb-color 0.6 0.6 0.6) e>4
        <c \tweak font-size #-2 \tweak color #(rgb-color 0.6 0.6 0.6) e>4
        <c \tweak font-size #-2 \tweak color #(rgb-color 0.6 0.6 0.6) e>2
        c2 c c <c f>1 \bar "|"
        f4 f f2 f4 f f1 f2 f f d2. f4 f2 (d) d1 \bar "|."

        %14
        d4 d \bar "|"
        d4 d c c2 (a4 c ~ c2) bes4 d cis1 \bar "|"

        %15
        c4 c c2. c4 c c1 \bar "|"
        d4 d d2 (cis) <d a>1 \bar "|."

        %16
        d4 d \bar "|"
        d4 c c2 a4 (c) c2 bes4 (d) cis1 \bar "|."

        %17
        d4 d \bar "|"
        d4 (f) f1 d4 f f2 (d) d1 \bar "|."

        %18
        c4 c c2 \bar "|"
        c4 d2 (c4 bes c) c d2 (c4) c bes1 \bar "|."

        %19
        c2 c c4 c c c1 \bar "|"
        d4 d d2 cis4 cis a1 \bar "|."

        %20
        c4 c \bar "|"
        c4 c d d d f f1 c4 c c1 ~ c4 c1 \bar "|."

        %21
        \transpose g f' {
          a,4 a, b, d d \bar "|"
          d4 d d d d2 d4 d2. dis4 b,1 \bar "|."
        }

        %22
        \transpose g f' {
          b,4 d d d d \bar "|"
          d4 d c8 ([d]) e4 d1 (c4 d) c2 b,1 \bar "|."
        }

      }

      \new Voice = "bass" \relative c
      {
        \voiceTwo
        \omit Staff.TimeSignature

        % 1
        f4 f \bar "|"
        g2 d4 d g f bes, d f2 c4 f c ([d8 c]) f4 f c2 c f1 \bar "|."

        % 2
        g4 g \bar "|"
        g4 (f) bes, (d) f2 c4 (f) c4 ([d8 c] f4) f c1 f1 \bar "|."

        % 3
        f2 f f4 f bes2 bes,4 (d) f1 \bar "|"
        bes2 (f) g g4 f bes f g d g2 (d) g1 \bar "|."

        % 4
        f4 f f \bar "|"
        f4 f2 f bes (f2.) f4 bes2 (f4) d g1 \bar "|."

        % 5
        g4 g \bar "|"
        g4 g f f f2 f e e4 (f) c2 f4 (a) d,1 \bar "|."

        %6
        g4 g \bar "|"
        g4 g2 g4 f bes2 f4 f g f bes (f g) d g1 \bar "|."

        %7
        f4 c2 f4 e e e f2 c2 \bar "|"
        c4 c c2 e4 f c2 f4 a d,1 \bar "|."

        %8
        g4 g \bar "|"
        g4 g c, f2 (d4 c f2) g a1 \bar "|."

        %10
        f4 f \bar "|"
        f4 f f f2 f4 f bes2 f f4 f <bes bes,>2 (d,) g1 \bar "|."

        %11
        f4 f \bar "|"
        f4 f bes2 f f4 f bes2 (f4) d g1 \bar "|."

        %12
        f4 c2 f4 e e f2 (c) \bar "|"
        g'4 g g a2 a,2 d1 \bar "|."

        %13
        c4 c c c2 c f f f1 \bar "|"
        f4 f f2 f4 f bes2 (f) f bes f g2. f4 bes (f g d) g1 \bar "|."

        %14
        g4 g \bar "|"
        g4 g c, f2 (d4 c f2) g4 g a1 \bar "|."

        %15
        f4 f c2 (f4) e e f2 (c) \bar "|"
        g'4 g a2 (a,) d1 \bar "|."

        %16
        g4 g \bar "|"
        g4 c, f2 d4 (c) f2 g a1 \bar "|."

        %17
        g4 g \bar "|"
        g4 (f) bes2 (f) g4 f bes (f g d) g1 \bar "|."

        %18
        f4 f f2 \bar "|"
        f4 bes2 (f2.) f4 bes2 (f4) d g1 \bar "|."

        %19
        f2 c f4 e e f2 (c) \bar "|"
        g'4 g a2 a,4 a d1 \bar "|."

        %20
        f4 f \bar "|"
        f4 f g d g f bes2 (f) c4 f c ([d8 c] f4 c2) f1 \bar "|."

        %21
        \transpose g f {
          d4 d d d d \bar "|"
          d4 d d g fis2 g4 d2 (g4) b,4 e1 \bar "|."
        }

        %22
        \transpose g f {
          g4 d g g g \bar "|"
          g4 g e c g2 (g, a,) c4 (d) a,1 \bar "|."
        }

      }
    >>
  >>
}