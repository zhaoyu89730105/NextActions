AutoItSetOption("TrayAutoPause",0);
Global $Paused
Global Const $box_x = 0, $box_y = 0, $box_w = 16, $box_h = 16, $box_count = 1
;Global $PreAction=0, $ActionCount=0

;HotKeySet("\", "TogglePause")
;HotKeySet(",", "Terminate")

While 1
	WinWaitActive("魔兽世界")
	NAExecute()
	sleep(random(200,400))
WEnd

Func TogglePause()
    $Paused = NOT $Paused
	Send('^!`')
    While $Paused
        sleep(5000)
    WEnd
EndFunc

Func Terminate()
    Exit 0
EndFunc

Func GetShowBoxValue()
	Dim $box_value[$box_count]
	For $i = 0 to $box_count-1 Step 1
		$x = $box_x + $box_w*$i + $box_w/2
		$y = $box_y + $box_h/2

		$box_value[$i] = NAParseColor2Value(PixelGetColor( $x , $y ))
	Next
	Return $box_value
EndFunc

Func NAParseColor2Value($color)
	$c = Hex($color, 6)
	$v = Number(StringMid($c, 1, 1) & StringMid($c, 3, 1) & StringMid($c, 5, 1))
	NAdebug($c & "-------------" & $v)
	return $v
EndFunc

Func NAdebug($text)
	ConsoleWrite($text & @CRLF)
EndFunc

Func NAExecute()
	$value = GetShowBoxValue()
;	Send("{ENTER}" & $value[0] & "{ENTER}")
;	If $value[0]==0 then 
;		Return
;	endif
;
;	If $PreAction == $value[0] and $ActionCount<3 Then
;		$ActionCount = $ActionCount +1;
;		Return;
;	Else
;		$PreAction = $value[0];
;		$ActionCount = 0;
;	EndIf

	NAdebug($value[0])
	Switch $value[0]
    Case 1 To 9
		Send("^c");
	Case 10
		Send("0");
	Case 11
		Send("【");
	Case 12
		Send("】");
	Case 13 To 21
		Send("^!" & ($value[0]-12));
	Case 22
		Send("^!0");
	Case 23
		Send("^!-");
	Case 24
		Send("^!=");
	Case 25 To 33
		Send("+" & ($value[0]-24));
	Case 33
		Send("+0");
	Case 34
		Send("+-");
	Case 35
		Send("+=");
	Case 41
		Send("-");
		sleep(random(14000,16000));
		Send("^z");
		sleep(random(100,300));
		Send("^x");
	Case 42
		Send("=");
		sleep(random(14000,16000));
		Send("^z");
		sleep(random(100,300));
		Send("^x");
	Case 43
		Send("-");
		sleep(random(1100,1300));
		Send("=");
		sleep(random(1100,1300));
		Send("^z");
		sleep(random(100,300));
		Send("^x");
	Case 44
	    Send("^c");
	Case 45
		Send("^c");
	Case 100	
		Send("+T");
	Case 101 
		Send("{TAB}");
	Case 900
		Send("=");
	Case Else
	EndSwitch
EndFunc


