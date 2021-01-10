//%attributes = {"invisible":true,"preemptive":"capable"}
C_OBJECT:C1216($1;$smtp;$2;$mail;$3;$ctx)

$smtp:=$1
$mail:=$2
$ctx:=$3

C_OBJECT:C1216($status;$onError;$onSuccess)

$onError:=$ctx.onError
$onSuccess:=$ctx.onSuccess

ON ERR CALL:C155("on_error")
$status:=SMTP New transporter:C1608($smtp).send($mail)
ON ERR CALL:C155("")

If (OK#0)
	If (is_formula ($onError))
		$onError.call($ctx;ERROR OBJECT)
	End if 
End if 

If (is_formula ($onSuccess))
	$onSuccess.call($ctx;$status)
End if 

KILL WORKER:C1390