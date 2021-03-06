HotKeySet("{F1}", "mix")

$txt = ""
$cyc = 0
$wai = 1

while 1
   sleep(100)
WEnd

Func waits()
   HotKeySet("{F1}", "cyc")
   HotKeySet("`", "apply")
   HotKeySet("1", "codeblock")
   HotKeySet("2", "center")
   while $wai
	  sleep(100)
   WEnd
   HotKeySet("{F1}", "mix")
   HotKeySet("`")
   HotKeySet("1")
   HotKeySet("2")
EndFunc

Func cyc()
   if $cyc == 0 Then
	  $cyc = 1
	  ToolTip("Bold")
   ElseIf $cyc == 1 Then
	  $cyc = 2
	  ToolTip("Italic")
   ElseIf $cyc == 2 Then
	  $cyc = 3
	  ToolTip("Bold+Italic")
   ElseIf $cyc == 3 Then
	  $cyc = 4
	  ToolTip("strikethrough")
   Else
	  $cyc = 0
	  ToolTip("Non")
   EndIf
EndFunc

Func mix()
   send("^c")
   $txt = ClipGet()
   waits()
   $wai = 1

   if $cyc == 1 Then
	  $txt = "**" & $txt & "**"
	  ClipPut($txt)
	  send("^v")
   ElseIf $cyc == 2 Then
	  $txt = "*" & $txt & "*"
	  ClipPut($txt)
	  send("^v")
   ElseIf $cyc == 3 Then
	  $txt = "***" & $txt & "***"
	  ClipPut($txt)
	  send("^v")
   ElseIf $cyc == 4 Then
	  $txt = "~~" & $txt & "~~"
	  ClipPut($txt)
	  send("^v")
   ElseIf $cyc == 8 Then
	  send("```")
	  Send("{ENTER}")
	  send("^v")
	  Send("{ENTER}")
	  send("```")
   ElseIf $cyc == 9 Then
	  $txt = "<center>" & $txt & "</center>"
	  ClipPut($txt)
	  send("^v")
   EndIf

   ToolTip("")
   $cyc = 0
EndFunc

Func apply()
   $wai = 0
EndFunc

Func codeblock()
   $wai = 0
   $cyc = 8
EndFunc

Func center()
   $wai = 0
   $cyc = 9
EndFunc
