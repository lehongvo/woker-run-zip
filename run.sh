#!/bin/bash

# Script để chạy API Worker
# Tự động cấp quyền và xóa quarantine nếu cần

# Lấy đường dẫn tuyệt đối của script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
API_WORKER="$SCRIPT_DIR/api-worker-macos-m"

# Kiểm tra file có tồn tại không
if [ ! -f "$API_WORKER" ]; then
    echo "❌ Lỗi: Không tìm thấy file api-worker-macos-m"
    echo "📁 Đường dẫn: $API_WORKER"
    exit 1
fi

echo "🚀 Đang khởi động API Worker..."
echo "📁 Đường dẫn: $API_WORKER"

# Cấp quyền thực thi
echo "🔐 Đang cấp quyền thực thi..."
chmod +x "$API_WORKER"

# Xóa quarantine trên macOS (nếu có)
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "🍎 Đang xóa thuộc tính quarantine (macOS)..."
    xattr -d com.apple.quarantine "$API_WORKER" 2>/dev/null || true
fi

# Chạy API Worker
echo "✅ Đang chạy API Worker..."
echo ""
exec "$API_WORKER"

