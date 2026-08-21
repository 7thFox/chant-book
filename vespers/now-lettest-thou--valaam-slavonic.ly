\include "../common.ly"

\header {

  title = \markup {
    \override #'(font-name . "Pochaevsk")
    \fontsize #2
    "нынѣ ѿпꙋща́еши"
  }
  composer = \markup {
    \override #'(font-name . "Pochaevsk")
    "Валаамскій напёвъ"
  }
}

\score {
  <<
    \new Staff <<
      \new Voice = "melody" \relative c' { \melody
          c4. (d8 e2) d4 \breve e4 c4. (d8 c4 b) a2. \bar "|"
        b4 c d d d d e4 c4. (d8 c4 b) a2. \bar "|"
        b4 b c4. (d8 e2) d4 d d \breve e4 c4. d8 c4 b a2. \bar "|"
        b8 ([c] d4) d d \breve d4 e4 c4. (d8 c4) b a2. \bar "|"
        c4. (d8 e2) d4 d \breve e4 c4. (d8 c4 b) a2. \bar "|"
        b8 ([c]) d4 d d \breve e4 c4. (d8 c4) b a2. \bar "|."
        }
      \new Voice = "ison" \relative c' { \ison
        a2 r2 r4 r1 r1 r4 r2 r4 r r2 r4 \bar "|"
        r4 r g r r r r4 a2 r4 r r2 r4 \bar "|"
        r4 r r2 r2 r4 r r r1 r1 r4 r2 r4 r r2 \bar "|"
        % \once \ison_left
        g4 r r4 r1 r1 r4 r a2 r4 r4 r2 r4 \bar "|"
        r2 r2 r4 r1 r1 r4 r2 r4 r r2 r4 \bar "|"
        r4 g4 r r1 r1 r4 a2 r4 r r2 r4 \bar "|."
        }
    >>

    \new Lyrics \lyricsto "melody" {
      % Елизаветинская Библия 1751 Church Slavonic
      % https://bible.by/elzs/42/2/
      \override LyricText.font-name = #"Pochaevsk"
      \override LyricText.font-size = #+2

      ны -- нѣ ѿ-пꙋ-ща́-е-ши__ра-ба̀__тво-е-го̀, вла -- ды -- ко,
      по гла -- го -- лꙋ тво -- е -- мꙋ̀, съ__ми́ -- ромъ:
      ꙗ҆́ -- кѡ ви́ -- дѣ -- стѣ ѻ҆́-чи__мо-ѝ спа -- се -- нї -- е тво -- ѐ,
      є҆́ -- же є҆-сѝ__ᲂу҆-го-то́в-алъ__пред̾ ли -- це́мъ всѣ́хъ лю -- ді́й:
      свѣ́тъ во ѿ-кро-ве́-нї-е ꙗ҆ -- зы́ -- кѡмъ,
      и҆ сла́ -- вꙋ лю-ді́й__тво-и́хъ Іи҆з -- ра́ -- и -- лѧ.
    }
    \new Lyrics \lyricsto "melody" {
      % ны -- нѣ ѿ-пꙋ-ща́-е-ши__ра-ба̀__тво-е-го̀, вла -- ды -- ко,
        nee -- nyeh ot-pu-sha-yeh-shee__ra-ba__tvo-yeh-go, vla -- dee -- ko
      % по гла -- го -- лꙋ тво -- е -- мꙋ̀, съ ми́ -- ромъ:
        po gla -- go -- loo tvo -- yeh -- moo, smi -- rom:
      % ꙗ҆́ -- кѡ ви́ -- дѣ -- стѣ ѻ҆́-чи__мо-ѝ спа -- се -- нї -- е тво -- ѐ,
        ya -- ko vee -- dye -- ste o-chi__moe-ee spa -- se -- nee -- yeh tvo -- yeh,
      % є҆́ -- же   є҆-сѝ__ᲂу҆-го-то́в-алъ__пред̾ ли -- це́мъ всѣ́хъ лю -- ді́й:
        ye -- zhe ye-see__oo-go-to-val__pred lih -- tsehm vseeh lyoo -- dyeh:
      % свѣ́тъ во ѿ-кро-ве́-нї-е ꙗ҆ -- зы́ -- кѡмъ,
        svyeht vo ot-kro-veh-nee-ye ya -- zeh -- kom,
      % и҆ сла́ -- вꙋ лю-ді́й__тво-и́хъ Іи҆з -- ра́ -- и -- лѧ.
        ee sla -- voo lyoo-deh__tvo-eeh Iz -- ra -- ee -- yahl.
    }

  >>
  \layout {
    ragged-last = ##f
  }
}