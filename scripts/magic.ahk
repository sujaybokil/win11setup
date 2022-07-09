; App launching
#Enter::
{
    Run "wt.exe"
}

#b::
{
    Run "C:\Program Files\Google\Chrome\Application\chrome.exe"
}

#w::
{
    WinClose "A"
}

#m::
{
    WinMaximize "A"
}

#+m::
{
    WinMinimize "A"
}


; Workspace Management
desktop_idx := 1
num_desktops := 1
desktop_names := Map(1, "Fun", 2, "Work", 3, "Browse", 4, "Timepass", 5, "Creative", 6, "Mail", 7, "NA", 8, "NA")

DesktopChangeMsg() {
    global desktop_idx, desktop_names
    res := MsgBox("Workspace " desktop_names[desktop_idx], "", "OK T0.45") 
}

CreateVirtualDesktops(n) {
    Loop n {
        Send "^#d"
    }
}

GetDesktopId() {
    global desktop_idx, num_desktops
    id_len := 32
    CurrentDesktopId := RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops", "CurrentVirtualDesktop")
    VirtualDesktopList := RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops", "VirtualDesktopIDs")

    num_desktops := Floor(StrLen(VirtualDesktopList) / id_len)

    i := 0
    while (i < num_desktops) {
        start_pos := (i * id_len) + 1
        
        DesktopId := SubStr(VirtualDesktopList, start_pos, id_len)

        if (DesktopId = CurrentDesktopId) {
            desktop_idx  := i + 1
            break
        }
        i++
    }
}

MoveToWorkspace(new_idx) {
    global desktop_idx, num_desktops
    GetDesktopId()

    if (new_idx > num_desktops) {
        CreateVirtualDesktops(new_idx - num_desktops)

        num_desktops := new_idx
        desktop_idx := num_desktops
    }
    else {
        direction := new_idx - desktop_idx

        if (direction > 0) {
            Loop direction {
                Send "^#{Right}"
                Sleep 50
            }
        }
        else if (direction < 0) {
            Loop Abs(direction) {
                Send "^#{Left}"
                Sleep 50
            }
        }
        desktop_idx := new_idx
    }

    DesktopChangeMsg()
}

#1::
{
    MoveToWorkspace(1)
}

#2::
{
    MoveToWorkspace(2)
}

#3::
{
    MoveToWorkspace(3)
}

#4::
{
    MoveToWorkspace(4)
}

#5::
{
    MoveToWorkspace(5)
}

#6::
{
    MoveToWorkspace(6)
}

#7::
{
    MoveToWorkspace(7)
}

#8::
{
    MoveToWorkspace(8)
}


; Layout Switching (PowerToys FancyZones)
layouts_list := Array(0, 0, 0, 0, 0, 0, 0, 0)
total_layouts := 3

SwitchLayout() {
    global layouts_list, total_layouts, desktop_idx
    GetDesktopId()

    next_layout := Mod(layouts_list[desktop_idx] + 1, total_layouts)
    Send "#!^" next_layout
    layouts_list[desktop_idx] := next_layout

}

#+Space::{
    SwitchLayout()
}

; Window snapping
#+k::{
    Send "#{Right}"
}

#+j::{
    Send "#{Left}"
}
