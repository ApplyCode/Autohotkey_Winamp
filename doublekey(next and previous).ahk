$Enter::
    KeyWait, Enter			; wait for z to be released
    KeyWait, Enter, D T0.3		; and pressed again within 0.2 seconds
    if ErrorLevel 			; timed-out (only a single press)
        PostMessage, 0x111, 40044,, , ahk_class Winamp v1.x
    Else
        PostMessage, 0x111, 40048,, , ahk_class Winamp v1.x
Return