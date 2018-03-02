#SingleInstance ignore

OnExit, KillNExit
RunWait, node ., %A_WorkingDir%, Hide, NodePid
MsgBox, 16, PoE keyboard overlay, Node.js exit!
ExitApp

KillNExit:
  RunWait, taskkill /F /PID %NodePid%,, Hide
ExitApp
