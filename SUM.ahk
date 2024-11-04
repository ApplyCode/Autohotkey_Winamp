;Code from Autohotkey forums and GOTHIKE from The MagicCafe, g0thike (at) aol . com
DetectHiddenText, On
DetectHiddenWindows, On
winamppath = C:\Program Files (x86)\Winamp\winamp.exe ;change winamp path here
;WINAMP HOTKEYS
;___________PLAY (send Left Arrow)
Left::
PostMessage, 0x111,40045,,,ahk_class Winamp v1.x
return
;____________PREVIOUS TRACK (send Up Arrow)
Up::
PostMessage, 0x111,40044,,,ahk_class Winamp v1.x
return
;_______________NEXT TRACK (send Down Arrow)
Enter::
PostMessage, 0x111,40048,,,ahk_class Winamp v1.x
return
;_______________STOP (send Right Arrow)
Right::
PostMessage, 0x111,40047,,,ahk_class Winamp v1.x
return
;_______________VOLUME UP (send e)
e::
PostMessage, 0x111,40058,,,ahk_class Winamp v1.x
return
;_______________VOLUME DOWN (send d)
d::
PostMessage, 0x111,40059,,,ahk_class Winamp v1.x
return
;PLAYLIST FONT SIZE
settitlematchmode,2
;______________Enlarge Playlist Font (send a)
a::
IfWinExist, ahk_class Winamp PE
{
controlsend,ahk_parent,{Control Down}{NumpadAdd};
return
}
;______________Shrink Plylist Font (send z)
z::
IfWinExist, ahk_class Winamp PE
{
controlsend,ahk_parent,{Control Down}{NumpadSub};
return
}
;LAUNCH WINAMP BY HOTKEY
w::
Run, C:Program FilesWinampwinamp.exe
return
; END OF CODE- STOP COPYING