Windowsの電源プランを変更するshellです
change_power_plan.ps1を実行すると以下の文字列を入力してください。
- high
  高パフォーマンス
- low
  省電力
- show
  電源プラン一覧(末尾に*がついているものが適用済み)

上記以外で使用したいプランがある場合はchange_power_plan.ps1の7行目plan constant付近のように追加してください
また、適宜21-22行目のような制御を付与してください