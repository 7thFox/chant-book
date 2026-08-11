\version "2.24.0"

\header {
  title = "Receive the Body of Christ"
  % subtitle = "Zadostoinik for the Feast of Transfiguration"
  composer = "Valaam Chant"
}

melody = {
  \voiceOne
  \cadenzaOn
  \clef alto
  \omit Staff.TimeSignature
  \override Stem.direction = #DOWN
  \override TextScript.X-offset = #-30
}

ison = {
  \voiceTwo
  \cadenzaOn
  \clef alto
  \omit Staff.TimeSignature
  \omit Voice.Rest
  \override NoteHead.color = #darkred
  \override NoteHead.style = #'harmonic
  \override Stem.stencil = ##f
}

\layout {
  \context {
    \Lyrics
    \override LyricHyphen.minimum-distance = #1.0
    \override LyricSpace.minimum-distance = #1.2
  }
  \context {
    \Voice
    \consists "Horizontal_bracket_engraver"
  }
}

\layout {
  indent = 0\mm
  ragged-last = ##t
}
\paper {
  tagline = ##f
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
        g'2. (f4) e2 e e e f4 (g) f (e) d2 (e4 f) g1 \bar "|" \break
        g2 a g4 (f) e (f) g (f) e2 d c1 a'2 g (d4 e f g8 [f]) e1 \bar "||"
      }
      \new Voice = "ison" \relative c' { \ison
        c2 r4 r2 r r r r4 r r r r2 r4 r r1
        r2 r r4 r r r r r r a2 r
        \override NoteColumn.force-hshift = #1.0
        c1
        \override NoteColumn.force-hshift = #0
        d2 r r4 r r r4 c1 \bar "||"
      }
    >>

    \new Lyrics \lyricsto "melody" {
      Тѣ -- ло хри -- сто -- во, при -- и -- ми -- те
      ис -- то -- чни -- ка без -- смерт -- на -- го вку -- си -- те.
    }
    \new Lyrics \lyricsto "melody" {
      \override LyricText.font-size = #-3
      TE -- LO CHRI  -- STO -- VO, PRI -- EE -- MI -- TEH
      EE -- STO -- CHIN -- KA BEZ -- SMET -- NA -- GO VOO -- SI -- TE.
    }
  >>
}
\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
        g'2. (f4) e2 e f4 (g f e) d2 e4 (f) g1 \bar "|" \break
        g2 (a g4 f) e (f) g (f e2 d2) c1 a'2 a g d4 (e f) g8 ([f]) e1 \bar "||"
      }
      \new Voice = "ison" \relative c' { \ison
        c2 r4 r4 r2 r r4 r r r r2 r4 r r1
        r2 r r4 r r r r r a2 r2
        \override NoteColumn.force-hshift = #1.0
        c1
        \override NoteColumn.force-hshift = #0
        d2 r2 r r4 r r r c1 \bar "||"
      }
    >>

    \new Lyrics \lyricsto "melody" {
      Re -- ceive the Bo -- dy of Christ, taste the foun -- tain of im -- mor -- tal -- it -- y.
    }
  >>
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
      g'2 g4 (f) e2 d c
      g'2 g4 (f) e2 d c
      g'2 g4 (f) e1 d c \bar "|."
      }
      \new Voice = "ison" \relative c' { \ison
      c2 r4 r r2 r r
      r2 r4 r r2 r r
      r2 r4 r a1 r
      \override NoteColumn.force-hshift = #1.0
      c \bar "|."
      }
    >>

    \new Lyrics \lyricsto "melody" {
      A -- le -- lu -- i -- a,
      A -- le -- lu -- i -- a,
      A -- le -- lu -- i -- a.
    }
  >>
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
      }
      \new Voice = "ison" \relative c' { \ison
      }
    >>

    \new Lyrics \lyricsto "melody" {
      Re -- ceive the Bo -- dy of Christ, taste the foun -- tain of im -- mor -- tal -- it -- y.
    }
  >>
}
