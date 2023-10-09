# read setting
. ./conf.ps1

# input
$input = read-host "please input power plan [high or low or balance].or please input [show] to see power plans."

# inut logic
if($input -eq "show"){
  powercfg /list
  pause
  exit
}elseif(!$INPUT_RELATION.ContainsKey($input)){
  echo "inputed in not exact power plan. please check conf.ps INPUT_RELATION."
  pause
  exit
}
$select_plan = $INPUT_RELATION[$input]

# execute
powercfg /s $select_plan

# show result
$result = "failed..."
if($?){
  $result = "success!!"
}

echo "Result: $result"
pause
