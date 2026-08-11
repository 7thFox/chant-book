\version "2.24.0"

\header {
  title = "Title"
  subtitle = "Subtitle"
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
  % indent = 0\mm
  ragged-last = ##t
}

\paper {
  tagline = ##f
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
        \override NoteColumn.force-hshift = #1.1
        c1 \bar "||" }
    >>

    \new Lyrics \lyricsto "melody" {
    He hath made His ways known un -- to Mo -- ses,
    un -- to the sons of Is -- ra -- el the things that He hath willed.
    }
  >>
}