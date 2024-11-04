Enter::
    Send {Enter}
    lastEnter := A_TickCount
    KeyWait, Enter
    KeyWait, Enter, D T10
    if ErrorLevel
    {
        Send {Down}
    }
    else
    {
        PostMessage, 0x111, 40045,, , ahk_class Winamp v1.x
        lastEnter := A_TickCount
        SetTimer, CheckTimeout, -10000 ; check for timeout after 10 seconds
    }
Return

CheckTimeout:
    if (A_TickCount - lastEnter >= 10000) ; 10 second timeout
    {
        Send {Down}
    }
Return