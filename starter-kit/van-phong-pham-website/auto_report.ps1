# Tac gia : Phạm Ngọc Linh
# Ngay Tao : 27/10/2026
"=== Bao Cao Loi === " > .logs/auto_report.txt 
Get-Content logs/shop.log | Select-String "ERROR" >> .logs/auto_report.txt
WRite-Host "Da tao bao cao : thanh cong"