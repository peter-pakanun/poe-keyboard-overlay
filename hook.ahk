#NoEnv
#SingleInstance FORCE
#NoTrayIcon

SendMode Input
SetWorkingDir %A_ScriptDir%

Return

#IfWinActive, Path of Exile ahk_class POEWindowClass

~*LButton::
  FileAppend, LButton down`n,*
  keywait, LButton
  FileAppend, LButton up`n,*
Return

~*RButton::
  FileAppend, RButton down`n,*
  keywait, RButton
  FileAppend, RButton up`n,*
Return

~*MButton::
  FileAppend, MButton down`n,*
  keywait, MButton
  FileAppend, MButton up`n,*
Return

~*q::
  FileAppend, q down`n,*
  keywait, q
  FileAppend, q up`n,*
Return

~*w::
  FileAppend, w down`n,*
  keywait, w
  FileAppend, w up`n,*
Return

~*e::
  FileAppend, e down`n,*
  keywait, e
  FileAppend, e up`n,*
Return

~*r::
  FileAppend, r down`n,*
  keywait, r
  FileAppend, r up`n,*
Return

~*t::
  FileAppend, t down`n,*
  keywait, t
  FileAppend, t up`n,*
Return

~*d::
  FileAppend, d down`n,*
  keywait, d
  FileAppend, d up`n,*
Return

; 3.2.0 Net
~*z::
  FileAppend, z down`n,*
  keywait, z
  FileAppend, z up`n,*
Return


~1::
  FileAppend, 1 down`n,*
  keywait, 1
  FileAppend, 1 up`n,*
Return

~2::
  FileAppend, 2 down`n,*
  keywait, 2
  FileAppend, 2 up`n,*
Return

~3::
  FileAppend, 3 down`n,*
  keywait, 3
  FileAppend, 3 up`n,*
Return

~4::
  FileAppend, 4 down`n,*
  keywait, 4
  FileAppend, 4 up`n,*
Return

~5::
  FileAppend, 5 down`n,*
  keywait, 5
  FileAppend, 5 up`n,*
Return

~*Shift::
  FileAppend, Shift down`n,*
  keywait, Shift
  FileAppend, Shift up`n,*
Return
