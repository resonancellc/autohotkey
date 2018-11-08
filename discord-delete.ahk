#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^k::
	stop = 1
return

^j::
Loop, 1000
{
	if ^P
	{
		break
	}
	if stop = 1
	{
		stop = 0
		break
	}
    send, {Up}
    send, ^a
    send, {BS}
    send, {Enter}
    send, {Enter}
    send, {PgUp}
    sleep, 250
}
Return

