\version "2.24.0"

#(set-global-staff-size 24)

chant_red = #(rgb-color 0.60 0.00 0.00)
ison_zero   = { \override NoteColumn.force-hshift = #0     }
ison_align  = { \override NoteColumn.force-hshift = #0.075 }
ison_right  = { \override NoteColumn.force-hshift = #1.0   }
ison_left   = { \override NoteColumn.force-hshift = #-1.1   }

melody = {
    \voiceOne
    \cadenzaOn
    \clef alto
    \omit Staff.TimeSignature
    \override Stem.direction = #DOWN
    \override TextScript.X-offset = #-30
    \override HorizontalBracket.color = #chant_red
    \override HorizontalBracket.direction = #UP
    \override HorizontalBracket.bracket-flare = #'(0 . 0)
    \override HorizontalBracketText.text = "Unison"
    \override HorizontalBracketText.color = #chant_red

}

ison = {
  \voiceTwo
  \cadenzaOn
  \clef alto
  \omit Staff.TimeSignature
  \omit Voice.Rest
  \override NoteHead.color = #chant_red
  \override Stem.stencil = ##f
  \override NoteHead.stencil = #(lambda (grob)
    (ly:stencil-scale
      (grob-interpret-markup grob (markup #:musicglyph "noteheads.s0mi"))
      1.25
      1.25
    ))
  % \override NoteHead.layer = #-1
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
  indent = 0\mm
}

\paper {
  tagline = ##f

  property-defaults.fonts.serif = "Monomakh"
  property-defaults.fonts.sans = "Monomakh"
  property-defaults.fonts.typewriter = "Monomakh"
}