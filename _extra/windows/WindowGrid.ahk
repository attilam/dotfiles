#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; SysGet
; A_ScreenWidth, A_ScreenHeight

#z::
	GRIDX := 32
	GRIDY := 32
	WinGetTitle WTitle, A
	WinGetPos, WX, WY, WW, WH, A
	WXq := Round(WX / GRIDX) * GRIDX
	WYq := Round(WY / GRIDY) * GRIDY
	WWq := Round(WW / GRIDX) * GRIDX
	WHq := Round(WH / GRIDY) * GRIDY

	if (WXq + WWq > A_ScreenWidth)
	{
		WWq := A_ScreenWidth - WXq
	}

	if (WYq + WHq > A_ScreenHeight)
	{
		WHq := A_ScreenHeight - WYq
	}

	WinMove A,, %WXq%, %WYq%, %WWq%, %WHq%
	;MsgBox The Window is %WTitle%, at %WXq%, %WYq% size: %WWq%x%WHq%.
Return
