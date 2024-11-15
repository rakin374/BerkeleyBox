\version "2.24.0"

\header {
  title = "Minuet in G Major"
  composer = "Wolfgang Amadeus Mozart (Transposed)"
}

upper = \relative c' {
  \key g \major
  \time 3/4
  \tempo "Minuet"
  
  % Main theme (first section)
  d'4 g b
  a8( b) c4
  b8( a) a4
  g4 r4
  
  % Continuation of theme
  d'4 g b
  a8( b) c4
  b8( a) a4
  g4 r4
  
  % Ending
  b4 c d
  a8( b) c4
  b8( a) a4
  g4 r4
}

lower = \relative c {
  \key g \major
  \time 3/4
  
  % Bass line (first section)
  g,4 d' g
  b d g,
  c e g,
  d fis g,
  
  % Continuation of bass line
  g,4 d' g
  b d g,
  c e g,
  d fis g,
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" {
      \clef bass
      \lower
    }
  >>
}


