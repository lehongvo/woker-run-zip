# API Worker

Hướng dẫn cài đặt và sử dụng API Worker cho macOS và Linux.

## 📥 Bước 1: Tải API Worker

Tải file API Worker từ Google Drive:
- **Link tải**: https://drive.google.com/drive/folders/1u1Ire0TSRejCCFjw3XFjAesY5AuwEemK?usp=sharing

Sau khi tải về, giải nén file zip vào thư mục mong muốn.

## 🚀 Bước 2: Cài đặt và Chạy

### Dành cho macOS và Linux

#### Cách 1: Sử dụng script run.sh (Khuyến nghị - Đơn giản nhất)

Sử dụng script `run.sh` để tự động cấp quyền và chạy API Worker:

```bash
# Chạy script run.sh
cd /Users/vincent/Desktop/apiwoker
./run.sh
```

Script sẽ tự động:
- ✅ Kiểm tra file có tồn tại
- ✅ Cấp quyền thực thi
- ✅ Xóa thuộc tính quarantine (macOS)
- ✅ Chạy API Worker

Hoặc chạy từ bất kỳ đâu:

```bash
/Users/vincent/Desktop/apiwoker/run.sh
```

#### Cách 2: Sử dụng chmod thủ công

```bash
# Cấp quyền thực thi cho file
chmod +x /đường/dẫn/đến/api-worker-macos-m

# Chạy API Worker
./đường/dẫn/đến/api-worker-macos-m
```

#### Cách 3: Xóa thuộc tính quarantine (macOS)

Nếu gặp lỗi về quarantine trên macOS, sử dụng lệnh sau:

```bash
xattr -d com.apple.quarantine /đường/dẫn/đến/api-worker-macos-m
```

Sau đó chạy file như bình thường:

```bash
./đường/dẫn/đến/api-worker-macos-m
```

### Ví dụ cụ thể

Nếu file nằm tại `/Users/vincent/Desktop/apiwoker/api-worker-macos-m`:

```bash
# Cấp quyền thực thi
chmod +x /Users/vincent/Desktop/apiwoker/api-worker-macos-m

# Xóa quarantine (nếu cần)
xattr -d com.apple.quarantine /Users/vincent/Desktop/apiwoker/api-worker-macos-m

# Chạy ứng dụng
cd /Users/vincent/Desktop/apiwoker
./api-worker-macos-m
```

## ⚙️ Bước 3: Cấu hình HTTP 1.1

Sau khi mở API Worker, giao diện sẽ hiển thị. Để sử dụng HTTP 1.1:

1. Mở **Settings** hoặc **Preferences** trong ứng dụng
2. Tìm mục **Protocol** hoặc **HTTP Version**
3. Chọn **HTTP 1.1**
4. Lưu cấu hình

Sau khi cấu hình xong, bạn có thể sử dụng API Worker bình thường.

## 📝 Lưu ý

- Đảm bảo file có quyền thực thi trước khi chạy
- Trên macOS, có thể cần xóa thuộc tính quarantine nếu file bị chặn
- Cấu hình HTTP 1.1 là bắt buộc để ứng dụng hoạt động đúng

## 🆘 Xử lý lỗi

### Lỗi "Permission denied"
```bash
chmod +x api-worker-macos-m
```

### Lỗi "cannot be opened because it is from an unidentified developer" (macOS)
```bash
xattr -d com.apple.quarantine api-worker-macos-m
```

### Lỗi "No such file or directory"
Kiểm tra đường dẫn file và đảm bảo bạn đang ở đúng thư mục chứa file.

---

**Phiên bản**: macOS M
**Ngày cập nhật**: 2025
