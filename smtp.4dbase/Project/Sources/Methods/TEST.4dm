//%attributes = {}
$server:=New object:C1471
$server.host:="192.168.168.BAD"  //bad IP
$server.port:=25

$email:=New object:C1471
$email.headers:=New collection:C1472(New object:C1471("name";"Importance";"value";"normal"))
$email.subject:="TEST"
$email.from:="from@email.com"
$email.to:="to@email.com"
$email.textBody:="TESTING"

$mySmtpInstance:=MySmtpClass 

$ctx:=New object:C1471
$ctx.onSuccess:=Formula:C1597(ALERT:C41(JSON Stringify:C1217($1)))
$ctx.onError:=Formula:C1597(ALERT:C41(JSON Stringify:C1217($1)))

$mySmtpInstance.sendMail($server;$email;$ctx)