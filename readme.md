# Windowsの電源プランを変更するshellです

## change_power_plan.ps1を実行し以下の文字列を入力してください。または、引数に指定してください
- high: 高パフォーマンス
- low: 省電力
- balance: バランス
- show: 電源プラン一覧(末尾に*がついているものが適用済み)

## 上記以外で使用したいプランがある場合はconf.ps1を編集してください
```powershell
# plan constant
$プラン名 = "UID"

# input relation
(略)
  "入力値" = $プラン名
```

## 電源プランのUIDは下記のコマンドで確認できます
`powercfg /list`