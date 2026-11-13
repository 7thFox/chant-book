\include "common.ly"

\paper {

  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "Trisagion"
      }
      \right-column {
        \fontsize #8 \bold "G17"
        "Kievan Chant"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { G17 - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { G17 - \fromproperty #'page:page-number-string }
      \null
    }
  }
}

\layout {
  ragged-last = ##f
}

\score {
  <<
    \transpose g f
    \new Staff <<
      \new Voice = "soprano" \relative c''
      {
        \key g \major
        \voiceOne
        \cadenzaOn
        \omit Staff.TimeSignature

        g2 g \bar ".|:"
        g4 (a b) g fis1 \allowBreak
        fis4 (g a) fis g2 g \allowBreak
        a4 (b) c a b2 a4 g a2 g4 fis g1 \bar ":|."
        \textEndMark "Fine"
        \textEndMark \markup { \with-color #chant_red "Thrice" }

        g4 g g2 fis2 \bar "|"
        fis4 fis g2 g4 g g2 \bar "|"

        a4 (b) c a b2 a4 g a2 g4 fis g1 \bar "|."
        \textEndMark "D.C. al Fine"


      }
      \new Voice = "alto" \relative c'
      {
        \voiceTwo
        \cadenzaOn

        e2 e \bar ".|:"
        e4 (fis g) e dis1
        dis4 (e fis) dis e2 e
        fis4 (g) a fis g2 fis4 e fis2 e4 dis4 e1 \bar ":|."

        e4 e e2 dis2 \bar "|"
        dis4 dis4 e2 e4 e e2 \bar "|"
        fis4 (g) a fis g2 fis4 e fis2 e4 dis4 e1 \bar "|."

      }
    >>

    \new Lyrics \lyricsto "soprano" {

        A -- men.
        Ho -- ly God, Ho -- ly Might -- y,
      \break
        Ho -- ly Im -- mor -- tal, have mer -- cy on us.
      \break

            \once \override LyricText.self-alignment-X = #LEFT
        Glory_to_the_Father,_and_to_the_Son,_and_to_the Holy Spi -- rit
            \once \override LyricText.self-alignment-X = #LEFT
        now_and_ever_and_unto_ages
      \break
            % \once \override LyricText.self-alignment-X = #LEFT
         of a -- ges. A -- men.

        Ho -- ly Im -- mor -- tal, have mer -- cy on us.

    }

    \new Lyrics \lyricsto "soprano" {
      \override LyricText.font-name = #"Pochaevsk"
      \override LyricText.font-size = #+1

      \skip 1
      \skip 1
      Свѧ -- тыи Бо-же,
      Свѧ -- тыи Крѣп -- кии,
      Свѧ -- тыи Без -- смерт -- ныи,
      по -- ми -- лꙋи __ \skip 1 насъ.
    }

    \new Lyrics \lyricsto "soprano" {
      \override LyricText.font-size = #-3
      \skip 1
      \skip 1
      % Свѧ -- тыи Бо -- же,
      (SVYA -- TI BO-ZHYE,
      % Свѧ -- тыи Крѣп -- ки -- и,
      SVYA -- TI KREP -- KI
      % Свѧ -- тыи Без -- смерт -- ны -- и,
      SVYA -- TI BEZ -- SMET -- NI,
      % по -- ми -- лꙋ -- и насъ.
      PO -- MI -- LOO __ \skip 1 NAS.)
    }


    \transpose g f
    \new Staff <<

      \new Voice = "tenor" \relative c'
      {
        \key g \major
        \cadenzaOn
        \voiceOne
        % \clef "treble_8"
        \clef bass
        \omit Staff.TimeSignature

        b2 b \bar ".|:"
        b2. b4 b1
        b2. b4 b2 b2
        d2 d4 d d2 d4 b4 b2 b4 b b1 \bar ":|."

        d4 d d2 d2 \bar "|"
        d4 d d2 d4 d d2 \bar "|"
        d2 d4 d d2 d4 b4 b2 b4 b b1 \bar "|."
      }

      \new Voice = "bass" \relative c
      {
        \voiceTwo
        \cadenzaOn
        \omit Staff.TimeSignature

        e2 e2 \bar ".|:"
        e2. e4 b2 (c8 b4.)
        b2. g4 e'2 e2
        d2 d4 d g2 b4 e, b2 b4 b e1 \bar ":|."

        e4 e e2 b2 \bar "|"
        b4 b e2 e4 e e2 \bar "|"
        d2 d4 d g2 b4 e, b2 b4 b e1 \bar "|."


      }
    >>

  >>
}