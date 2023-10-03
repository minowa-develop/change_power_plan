# admin execute
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole("Administrators")) { Start-Process powershell.exe "-File `"$PSCommandPath`"" -Verb RunAs; exit }

# read setting
. conf.ps1

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
