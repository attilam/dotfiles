#SingleInstance, force

#include monster.ahk
#include hotstrings.ahk
#include wheelflip.ahk
#include macify.ahk
#include desktop_switcher.ahk
#include cursor_control.ahk

F16::
	Process, exist, speedcrunch.exe
	if (ErrorLevel = 0) {
		Run D:\Applications\speedcrunch\speedcrunch.exe
	}
	else {
		SetTitleMatchMode, 2
		WinActivate, SpeedCrunch
	}
	Return

^F16::
	Send ^r
	Send !{Tab}
	Sleep 200
	Send ^v
	Return