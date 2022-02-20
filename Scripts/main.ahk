; Apps
#b::
Run, Brave
Return

#s::
Run, "C:\Users\sujay\AppData\Roaming\Spotify\Spotify.exe"
Return

#i::
Run, ms-settings:
Return

#Enter::
Run, "C:\Users\sujay\AppData\Local\Microsoft\WindowsApps\wt.exe"
Return

#k::
Return

Launch_Mail::AdjustScreenBrightness(-3)
Browser_Home::AdjustScreenBrightness(3)

; Basic commands
#w::WinClose, A

#+q::DllCall("LockWorkStation")

; Workspace management
#1::switchDesktopByNumber(1)
#2::switchDesktopByNumber(2)
#3::switchDesktopByNumber(3)
#4::switchDesktopByNumber(4)
#5::switchDesktopByNumber(5)
#6::switchDesktopByNumber(6)
#7::switchDesktopByNumber(7)
#8::switchDesktopByNumber(8)
#9::switchDesktopByNumber(9)

#+1::MoveCurrentWindowToDesktop(1)
#+2::MoveCurrentWindowToDesktop(2)
#+3::MoveCurrentWindowToDesktop(3)
#+4::MoveCurrentWindowToDesktop(4)
#+5::MoveCurrentWindowToDesktop(5)
#+6::MoveCurrentWindowToDesktop(6)
#+7::MoveCurrentWindowToDesktop(7)
#+8::MoveCurrentWindowToDesktop(8)
#+9::MoveCurrentWindowToDesktop(9)

#c::createVirtualDesktop()
#d::deleteVirtualDesktop()

#+k::
Send, ^#Right
Return

#+j::
Send, ^#Left
Return

; Workspace Layout toggle
#Space::switchWorkspaceLayout()
