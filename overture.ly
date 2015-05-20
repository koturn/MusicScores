\version "2.18.2"

\header {
  title = "序曲"
  subtitle = "ドラゴンクエストより"
  composer = "作曲：すぎやまこういち"
  arranger = "編曲：koturn"
  copyright = "koturn"
  tagline = ""
}


\paper {
  #(set-paper-size "a4")
  line-width = 18.0 \cm
  top-margin = 1.5 \cm
  bottom-margin = 2 \cm
}


global = {
  \key c \major
  \time 4/4
  \tempo 4=120
  \partial 4
}


rightTrack = \relative c'' {
  \global
  s1*0\f
  <g f>8. <g f>16 | 
  \repeat volta 2 {
    <c e,>4 <d g,> <e c> <f c> | << {g  c2 b8. a16} \\ {c,2 c} >> |
    <a' f>4. <g e>8 r <fis dis> <fis dis> <a dis,> | <g e>4 <e c>2 e,8. e16 |
    \break
    <e gis,>4 <e gis,>4 <fis a,>4 <gis b,>4 | <a c,>2~ <a c,>8 <a c,> <b d,> <c e,> |
    <d a>2~ <d a>8 <a fis> <a fis> <c a> | <c a>4 <b g> <a f?> <g f> |
    \break
    <e' gis,>2~ <e gis,>8 <f gis,> <e gis,> <d gis,> | <c a>2 <a e>4 <c e,> |
    <d a>2~ <d a>8 <e fis,> <d fis,> <c fis,> | <c f,?>2 <b f>4 g |
    \break
    <g' cis,>2~ <g cis,>8 <e cis> <f d> <g e> | <a f>2~ <a f>8 <a, f> <b g> <c a> |
    <f a,>2 << {e} \\ {b8 ( a g f ) } >> |
  }
  \alternative {
    {
      <c' e,>2~ <c e,>8 r <g f>8. <g f>16 |
      \break
    }
    {
      <c e,>2~ <c e,>8 r \tempo 4 = 72 g4-- |
    }
  }
  g'8 cis, d e f e f g |
  <a d,>2~ <a d,>8^\fermata r <a, f c>4--->
  \time 2/4
  <b g f d>---> <c g e c>--->
  \break
  \time 4/4
  <<
    { <f c a f>1---> }
    \\
    { r8 <f, c a>  <f c a> <a f c> <a f c> <c a f> <c a f> <f c a>}
  >> |
  <e b f>2-- <e b f>-- | <c g e c>1^\fermata \bar "|."
}


leftTrack = \relative c {
  \global
  r4 |
  \repeat volta 2 {
    c b bes a | e2 f2 |
    c'4 g c, c' | c, e g c |

    e,2 e2 | a4 e c a' |
    fis a d d, | g2 g4 b |

    e, gis b e, | a b c a |
    fis a d d, | g g d' f |

    e cis a a | d, e f d |
    d' g, f' g, |
  }
  \alternative {
    {
      c g c,8 r r4 |
    }
    {
      c' g c,8 r r4 |
    }
  }
  \clef treble
  <<
    {cis'''8 e, f g a2 }
    \\
    { a,2 d4 c }
  >> |
  <f b,>2~ <f b,>8^\fermata r \clef bass <f, f,>4---> |
  <f f,>---> <e e,>---> |
  <<
    { <d d,>1---> }
    \\
    { r8 f f a a c c f }
  >> |
  <g, g,>2-- <g g,>-- | <c, c,>1^\fermata \bar "|."
}


\score {
  \new StaffGroup <<
    \new Staff {
      \clef "treble"
      \rightTrack
    }
    \new Staff {
      \clef "bass"
      \leftTrack
    }
  >>
  \layout {
    \context {
      \Staff
      \override StringNumber #'transparent = ##t
    }
  }
}


\score {
  \unfoldRepeats
  \new StaffGroup <<
    \new Staff {
      \clef "treble"
      \rightTrack
    }
    \new Staff {
      \clef "bass"
      \leftTrack
    }
  >>
  \midi {}
}
