# BÀI LÀM – THI THỬ HACKATHON 01

- **Mã đề:** Thi thử
- **Họ tên:Phạm Ngọc Linh
- **Lớp:K26CNTT3
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Force
mv nhap_hang.txt docs
mv logo_van_phong_pham.png media
cp media/ logo_van_phong_pham.png backup/
Rm temp_131.tmp
Cd logs 
Ls
cd..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text


    Directory: C:\Users\TRONG TIN\Downloads\starter-kit\van-phong-pham-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/27/2026   9:09 PM                backup
d-----        10/27/2026   9:08 PM                data
d-----        10/27/2026   9:09 PM                docs
d-----        10/27/2026   9:09 PM                logs
d-----        10/27/2026   9:09 PM                media
-a----        10/19/2026   9:41 AM             78 .env


    Directory: C:\Users\TRONG TIN\Downloads\starter-kit\van-phong-pham-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.png


    Directory: C:\Users\TRONG TIN\Downloads\starter-kit\van-phong-pham-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6105 don_ban_hang_thang10.xlsx


    Directory: C:\Users\TRONG TIN\Downloads\starter-kit\van-phong-pham-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM             51 nhap_hang.txt


```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-content logs/shop.log | Select-String “ERROR” > logs/daily_report.txt
Get-content logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text

2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [X ] Heading 1: tên dự án
- [ X] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [ X] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [ X] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [ X] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [ X] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1

```

### Nội dung file logs/auto_report.txt

```text
# Tac gia : Phạm Ngọc Linh
# Ngay Tao : 27/10/2026
"=== Bao Cao Loi === " > .logs/auto_report.txt 
Get-Content logs/shop.log | Select-String "ERROR" >> .logs/auto_report.txt
WRite-Host "Da tao bao cao : thanh cong"

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
Get-content logs/shop.log | select-string “ERROR” | Measure-Object

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :


```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
 "=== === TONG HOP LOG ===" > logs/tong_hop.txt
  get-content logs/shop.log | select-string "WARNING" >> logs/tong_hop.txt
   Get-Content logs/shop.log | Select-String "ERROR" | Measure-Object >> logs/tong_hop.txt
   Get-Content .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== === TONG HOP LOG ===

2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon
2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham




Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_ban_thang_10.xlsx`, không cần ghi vào đây.
