#SingleInstance, force

#include monster.ahk
#include hotstrings.ahk
#include wheelflip.ahk
#include macify.ahk

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