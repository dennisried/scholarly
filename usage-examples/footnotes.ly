\version "2.19.42"

\include "oll-core/package.ily"
\loadPackage \with {
  modules = annotate
} scholarly

music = {
    \criticalRemark
      \with{
        message = "my message/footnote about the slur"
        footnote-offset = #'(-1 . -2)
    } Slur a4( 
  b c') c'
    \musicalIssue
      \with{
        message = "my message without a footnote"
    } NoteHead a
  b b
    \question
      \with{
        message = "my message, but not footnote"
        footnote-offset = #'(-0.5 . -2)
        footnote-text = "my footnote, seperate from my message"
      } Hairpin a\p\< b c'\!
}

\score {
  \new Staff = "my staff" \music
}
