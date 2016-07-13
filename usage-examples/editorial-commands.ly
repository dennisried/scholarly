\version "2.19.42"

\include "scholarly/package.ly"

\setOption scholarly.editorial.addition #`(
  (Slur . ,slurDashed)
  (NoteHead . ,parenthesize))
  
music = {
    \criticalRemark
    \with{
        message = "my message/footnote about deleting the slur"
        apply = #'addition
        offset = #'(-0.5 . -2)
    } Slur a4( b c')
    \musicalIssue
    \with{
        message = "my message about adding the note"
        apply = #'addition
    } NoteHead 
    b
}

\score {
  \new Staff = "my staff" \music 
}
