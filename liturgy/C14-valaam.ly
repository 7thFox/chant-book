\include "common.ly"

% #(set-global-staff-size 21)

\header {
  title    = ##f %"The First Antiphon"
  subtitle = ##f %"Psalm 102"
  composer = ##f %"Bishop Nikanor"
}

\paper {
  % system-system-spacing =
  %   #'((basic-distance . 8)
  %      (minimum-distance . 4)
  %      (padding . 1)`
  %      (stretchability . 0))

  oddHeaderMarkup = \markup {
    \if \on-first-page \fill-line {
      \null
      \center-column {
        \fontsize #4 \bold "O Only-Begotten Son"
      }
      \right-column {
        % \fontsize #8 \bold "C14"
        "Valaam Chant"
      }
    }
    \if \should-print-page-number \fill-line {
      \null
      \line { C14 - \fromproperty #'page:page-number-string }
    }
  }

  evenHeaderMarkup = \markup {
    \if \should-print-page-number \fill-line {
      \line { C14 - \fromproperty #'page:page-number-string }
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
      \new Voice = "melody" \relative c' {
        \melody

        d2 f e f (g) f f f e f  f e4 (d) e2 d1 \bar "||"

        \startGroup
        d2 d4 (c) d
        \stopGroup
        (e) f2 g (f) e f (e) d4 (e) f2 (e) f4 (e) d2
        \startGroup
        d2 c
        \stopGroup
        d2 e1 d \bar "|"

        f2 e f (g) f e
        d4 (e) f2 (e4 d4) e2
        f2 e4 (d)
        \once \override HorizontalBracketText.text = "Un."
        \startGroup
        c4 (b)
        \stopGroup
        c (d e2) d1 \bar "|"

        f2 e f g f e f (e) d e f e f e d d

        \startGroup
        c4 (b)
        \stopGroup
        c d e1 d2 e f (e) f (g f e d1) \bar "|"

        d4 (e) f2 (g) a\fermata
        g2 f e2 f1 e2 (d) d d
        d2 (c) d e2 d1 \bar "|"

        d4 (e) f2 g f e d4 (e) f2 e
        f2 e d
        \once \override HorizontalBracketText.text = "Un."
        \startGroup
        c4 (b)
        \stopGroup
        c4 (d) e2 (d1)
        d4 e f2 f
        e4 e f2 g f e d (e1 d4 c) d1 \bar "|."

      }

      \new Voice = "ison" \relative c' { \ison

      \ison_left
      d2

      r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
      \ison_zero
      c4

      r4 r2
      \ison_right
      d1

      r2 r2
      \ison_left
      d4

      r4 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
      \ison_zero
      b2

      \ison_align
      a1
      \ison_right
      d1

      r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
      \ison_zero
      a4

      r4 r2
      \ison_right
      d1

      r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
      \ison_zero
      a4

      r4 r2 r2
      \ison_left
      d2

      r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
      \ison_zero
      a2

      r2 r2 r2
      \ison_right
      d1

      r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2 r2
      \ison_zero
      a4

      r4 r2
      \ison_right
      d1

      r2 r2 r2 r2 r2 r2 r2 r2 r2
      \ison_align
      a1

      r2
      g1
      }
    >>

    \new Lyrics \lyricsto "melody" {

      BOTH NOW AND EV -- ER AND UN -- TO
      \once \override LyricText.self-alignment-X = #LEFT
      AGES_OF A -- GES. A -- MEN.

      \break

      O ON -- LY BE -- GOT -- TEN
      \once \override LyricText.self-alignment-X = #LEFT
      SON AND WORD OF
      \break
      GOD, WHO ART IM -- MOR -- TAL,
      YET DIDST DEIGN FOR OUR SAL -- VA -- TION
      \break
      TO BE IN -- CAR -- NATE

      % \once \override LyricText.self-alignment-X = #LEFT
      OF THE HO -- LY
      % \once \override LyricText.self-alignment-X = #LEFT
      THE -- O -- TO -- KOS AND
      \break
      EV -- ER- VIR -- GIN MAR -- Y,

      AND WITH -- OUT CHANGE DIDST BE -- COME
      \break
      MAN,


      AND WAST CRU -- CI -- FIED, O CHRIST GOD,
      \break
      TRAMP -- LING DOWN DEATH BY DEATH;
      THOU WHO ART ONE OF
      \break
      THE HO -- LY TRI -- NI -- TY,
      GLO -- RI -- FIED WITH THE FA -- THER
      \break
      AND THE HO -- LY SPI -- RIT,
      SAVE US.


% Единоро́дный Сы́не и Сло́ве Бо́жий, Безсме́ртен Сый
% O only-begotten Son and Word of God, Who art immortal, /

% и изво́ливый спасе́ния на́шего ра́ди воплоти́тися
% yet didst deign for our sal-va-tion to be incarnate /

%  от Святы́я Богоро́дицы и Присноде́вы Мари́и,
%  of the Holy Theotokos and Ever-Virgin Mary, /

% непрело́жно вочелове́чивыйся,
% and without change didst become man, /

% распны́йся же, Христе́ Бо́же, сме́ртию смерть попра́вый,
% and was crucified, O Christ God, trampling down death by death, /

% Еди́н Сый Святы́я Тро́ицы,
% Thou Who art one of the Holy Trinity, /

% спрославля́емый Отцу́ и Свято́му Ду́ху, спаси́ нас.
% glorified with the Father and the Holy Spirit, save us.

    }
  >>
}