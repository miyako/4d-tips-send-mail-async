//%attributes = {"invisible":true,"preemptive":"capable"}
C_OBJECT:C1216($1;$smtp;$2;$mail;$3;$formula;$4;$that)

$smtp:=$1
$mail:=$2
$formula:=$3
$that:=$4

$workerName:="mail"+"@"+Generate UUID:C1066  //because we want to run multiple instances of this method

CALL WORKER:C1389($workerName;"smtp_p";$smtp;$mail;$formula;$that)