//%attributes = {"invisible":true,"preemptive":"capable"}
ARRAY TEXT:C222($components;0)
ARRAY TEXT:C222($messages;0)
ARRAY LONGINT:C221($codes;0)
GET LAST ERROR STACK:C1015($codes;$components;$messages)

$stack:=New collection:C1472
For ($i;1;Size of array:C274($codes))
	$stack.push(New object:C1471("code";$codes{$i};"component";$components{$i};"$message";$messages{$i}))
End for 

$error:=New object:C1471("code";ERROR;"method";ERROR METHOD;"line";ERROR LINE;"formula";ERROR FORMULA;"stack";$stack;"callChain";Get call chain:C1662)

C_OBJECT:C1216(ERROR OBJECT)
ERROR OBJECT:=$error