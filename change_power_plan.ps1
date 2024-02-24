param([String]$input_plan)
if (-not $input_plan) {
  $input_plan = Read-Host "Please input power plan [high or low or balance]. Or please input [show] to see power plans."
}

# read setting
. ./conf.ps1

# input logic
if($input -eq "show"){
  powercfg /list
  pause
  exit
}elseif(!$INPUT_RELATION.ContainsKey($input_plan)){
  echo "inputed in not exact power plan. please check conf.ps INPUT_RELATION."
  pause
  exit
}
$select_plan = $INPUT_RELATION[$input_plan]

# execute
powercfg /s $select_plan

# show result
if($?){
  exit
}

echo "Result: failed..."
pause
