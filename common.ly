\version "2.24.0"

melody = {
    \voiceOne
    \cadenzaOn
    \clef alto
    \omit Staff.TimeSignature
    \override Stem.direction = #DOWN
    \override TextScript.X-offset = #-30
    \override HorizontalBracket.color = #darkred
    \override HorizontalBracket.direction = #UP
    \override HorizontalBracket.bracket-flare = #'(0 . 0)
    \override HorizontalBracketText.text = "Unison"
    \override HorizontalBracketText.color = #darkred
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
  ragged-last = ##t
}

\paper {
  tagline = ##f
}