//%attributes = {"invisible":true,"preemptive":"capable"}
C_OBJECT:C1216($1;$object)
C_BOOLEAN:C305($0;$isFormula)

$object:=$1

  //"OB Instance of" polyfill

If ($object#Null:C1517)
	If (JSON Stringify:C1217($object)="\"[object Formula]\"")
		$isFormula:=True:C214
	End if 
End if 

$0:=$isFormula