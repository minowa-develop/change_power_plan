# admin execute
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole("Administrators")) { Start-Process powershell.exe "-File `"$PSCommandPath`"" -Verb RunAs; exit }

# show power plans
# powercfg /list

# plan constant
$BALANCE = "381b4222-f694-41f0-9685-ff5bb260df2e"
$HIGH_PERFORMANCE = "8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"
$POWER_SEVER  = "a1841308-3541-4fab-bc81-f71556f20b4a"
# $RYZEN_POWER_SEVER = "951a752a-925f-4830-ab5a-e013024f4a92"
# $RYZEN_BALANCE = "9897998c-92de-4669-853f-b7cd3ecb2790"
# $RYZEN_HIGH_PERFORMANCE = "9935e61f-1661-40c5-ae2f-8495027d5d5d"

# input
$input = read-host "please input power plan [high or low or balance].or please input [show] to see power plans."

$select_plan = $BALANCE
if($input -eq "high"){
  $select_plan = $HIGH_PERFORMANCE
}elseif($input -eq "low"){
  $select_plan = $POWER_SEVER
}elseif($input -eq "show"){
  powercfg /list
}

powercfg /s $select_plan

pause
