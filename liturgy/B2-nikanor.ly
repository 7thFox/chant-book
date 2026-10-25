\include "common.ly"

#(set-global-staff-size 22)

\header {
  title    = ##f %"The First Antiphon"
  subtitle = ##f %"Psalm 102"
  composer = ##f %"Bishop Nikanor"
}

\paper {
  system-system-spacing =
    #'((basic-distance . 8)
       (minimum-distance . 4)
       (padding . 1)`
       (stretchability . 0))

  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "The First Antiphon"
        "Psalm 102"
      }
      \right-column {
        \fontsize #8 \bold "B2"
        "Bishop Nikanor"
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

\layout {
  \override Staff.StaffSymbol.thickness = 0.5
  \context {
    \Lyrics
      \override LyricText.font-size = #-0.5
      \override LyricHyphen.minimum-distance = #1.0
      \override LyricSpace.minimum-distance =  #1.0
      % \override LyricHyphen.minimum-distance = #0.8
      % \override LyricSpace.minimum-distance = #0.8
  }
}
\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
  }
}

\score {
  <<
    \new Staff <<
      \new Voice = "soprano" \relative c'' {
        \key f \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        a4 a a a (g) f g2 \bar "|"
        g4 g a c (bes a g) bes (a g) a1 \bar "||"

        a4 a a a2. g4 f2 \bar "|"
        f2 g a4 a g a c (bes2) \bar "|"
        g4 g g2 (f4) g a1 \bar "||"

        a4 a a (g f g a2 bes2) a2 (g4) g f2 \bar "|"
        e2 e4 (f) g2 g4 g a bes2. a4 g1 \bar "||"

        a4 a a2. g4 f1 \bar "|"
        f4 g2 g4 g g a bes2 (a4 g) a2 \bar "||"

        c4 c c2 a4 a bes (a) g4. g8 f2 e \bar "|"
        e4 g e f g a a g2 g4 g g g g2. (f4) e1 \bar "||"

        a4 a bes c (bes) a a a2 g2 \bar "|"
        f4 f f f e f (g) a2 a \bar "||"

        a4 a a a (g) f g2 \bar "|"
        g4 g a c (bes a g) bes -\markup { \italic "rit." } (a g) f1 \bar "|."

      }
      \new Voice = "alto" \relative c' {
        \voiceTwo
        \cadenzaOn
        f4 f f f (e) d e2  \bar "|"
        e4 e f a (g f e) g (f e) f1 \bar "||"

        f4 f f f2. e4 d2 \bar "|"
        d2 e f4 f e f a (g2) \bar "|"
        e4 e e2 (d4) e f1 \bar "||"

        f4 f f1 (f1) f2 (e4) e c2 \bar "|"
        c2 c4 (d) e2 e4 e f g2. f4 e1 \bar "||"

        f4 f f2. e4 d1 \bar "|"
        d4 e2 e4 e e f g2 (f4 e) f2 \bar "||"

        a4 a a2 f4 f g (f) e4. e8 d2 c \bar "|"
        cis4 e cis d e f f e2 e4 e e e e2. (d4) cis1 \bar "||"

        f4 f g a (g) f f f2 e2 \bar "|"
        d4 d d d cis d (e) f2 f \bar "||"

        f4 f f f (e) d e2 \bar "|"
        e4 e f a (g f e ) g (f e) cis1 \bar "|."

      }
    >>

    \new Lyrics \lyricsto "soprano" {
      BLESS THE LORD, O MY SOUL, BLESS -- ED ART THOU O LORD.

      \break
      BLESS
      THE
      LORD, O MY SOUL, AND ALL THAT IS WITH -- IN ME,

      \break
      BLESS
      HIS
      HO -- LY
      NAME.
      BLESS THE LORD, O MY SOUL,

      \break
      AND
      FOR -- GET
      NOT
      ALL
      HIS
      BEN -- NE -- FITS.
      \once \override LyricText.self-alignment-X = #LEFT
      WHO_FOR-GIV-ETH_ALL_THINE

      \break
      IN -- I -- QUI -- TIES;
      WHO
      HEAL
      -- ETH
      ALL
      THY DES -- EAS -- ES.

      \break
      WHO RE -- DEEM -- ETH
      THY LIFE FROM DE -- STRUC -- TION, WHO CROWN -- ETH

      \break
      THEE
      WITH
      LOVE --
       ING -- KIND -- NESS AND TEN -- DER MER -- CIES.
      \once \override LyricText.self-alignment-X = #LEFT

      \break
      THE_LORD_IS_FULL OF

      % \break
      COM -- PAS -- SION AND
       MER -- CY
        LONG -- SUFF' -- RING
      \break
        AND
        OF
         GREAT
          GOOD
        -- NESS.
      BLESS THE LORD, O MY SOUL,
      \break
        BLESS -- ED ART THOU O LORD.
    }

    \new Staff <<

      \new Voice = "tenor" \relative c' {
        \key f \major
        \cadenzaOn
        \voiceOne
        \clef bass
        \omit Staff.TimeSignature

        c4 c c c2 a4 c2 \bar "|"
        c4 c c c1 c2. c1 \bar "||"

        c4 c c c2. c4 a2 \bar "|"
        a2 c c4 c c c c2. \bar "|"
        c4 c c2 (a4) c c1 \bar "||"

        c4 c c (bes a bes c2 d) c (bes4) bes a2 \bar "|"
        g2 g c c4 bes a g2. f8 ([a]) c1 \bar "||"

        c4 c c2. c4 a1 \bar "|"
        a4 c2 c4 c c c c1 c2 \bar "||"

        f4 f f2 c4 c c2 c4. c8 b2 g \bar "|"
        a4 a a a a a a a2 a4 a a a a1 a \bar "||"

        c4 c c c2 c4 c c2 c \bar "|"
        a4 a a a a a (c) c2 c \bar "||"

        c4 c c c2 a4 c2 \bar "|"
        c4 c c c1 c2 (b4) a1 \bar "|."
      }

      \new Voice = "bass" \relative c {
        \key f \major
        \voiceTwo
        \clef bass
        \cadenzaOn
        \omit Staff.TimeSignature

        f4 f f f (c) d c2 \bar "|"
        c4 c c c1 c2. f1 \bar "||"

        f4 f f f2. c4 d2 \bar "|"
        d2 c c4 c c c c2. \bar "|"
        c4 c c2 (d4) c f1 \bar "||"

        f4 f f1 (f2 bes,) c2. c4 f2 \bar "|"
        c2 c c c4 c c c2. c4 c1 \bar "||"

        f4 f f2. c4 d1 \bar "|"
        d4 c2 c4 c c c c1 f2 \bar "||"

        f4 f f2 f4 f e (f) g4. g8 g2 c,2 \bar "|"
        a4 a a a a a a a2 a4 a a a cis2. (d4) a1 \bar "||"

        f'4 f f f2 f4 f f2 \once \omit Accidental c \bar "|"
        d4 d d d a d (c) f2 f \bar "||"

        f4 f f f (c) d (c2) \bar "|"
        c4 c c c1 c2. <f f,>1  \bar "|."
      }
    >>

  >>
}