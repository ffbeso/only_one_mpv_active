set WSShell = WScript.CreateObject("WScript.Shell")
set pid = WScript.Arguments

if pid(0) <> "" then
	WSShell.AppActivate(int(pid(0)))
	WSShell.SendKeys "%{F4}" 'ALT+F4
	' WScript.Sleep 100 '終了失敗する場合はSleepを挟む
else
	Wscript.echo "PID NOT FOUND"
end if