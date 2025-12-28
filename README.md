# API Worker

Installation and usage guide for API Worker on macOS and Linux.

## 📥 Step 1: Download API Worker

Download the API Worker file from Google Drive:
- **Download link**: https://drive.google.com/drive/folders/1u1Ire0TSRejCCFjw3XFjAesY5AuwEemK?usp=sharing

After downloading, extract the zip file to your desired directory.

## 🚀 Step 2: Installation and Running

### For macOS and Linux

#### Method 1: Using run.sh script (Recommended - Simplest)

Use the `run.sh` script to automatically set permissions and run API Worker:

```bash
# Run the run.sh script
cd /Users/vincent/Desktop/apiwoker
./run.sh
```

The script will automatically:
- ✅ Check if the file exists
- ✅ Grant execute permissions
- ✅ Remove quarantine attribute (macOS)
- ✅ Run API Worker

Or run from anywhere:

```bash
/Users/vincent/Desktop/apiwoker/run.sh
```

#### Method 2: Using chmod manually

```bash
# Grant execute permission to the file
chmod +x /path/to/api-worker-macos-m

# Run API Worker
./path/to/api-worker-macos-m
```

#### Method 3: Remove quarantine attribute (macOS)

If you encounter a quarantine error on macOS, use the following command:

```bash
xattr -d com.apple.quarantine /path/to/api-worker-macos-m
```

Then run the file as usual:

```bash
./path/to/api-worker-macos-m
```

### Specific Example

If the file is located at `/Users/vincent/Desktop/apiwoker/api-worker-macos-m`:

```bash
# Grant execute permission
chmod +x /Users/vincent/Desktop/apiwoker/api-worker-macos-m

# Remove quarantine (if needed)
xattr -d com.apple.quarantine /Users/vincent/Desktop/apiwoker/api-worker-macos-m

# Run the application
cd /Users/vincent/Desktop/apiwoker
./api-worker-macos-m
```

## ⚙️ Step 3: Configure HTTP 1.1

After opening API Worker, the interface will be displayed. To use HTTP 1.1:

1. Open **Settings** or **Preferences** in the application
2. Find the **Protocol** or **HTTP Version** option
3. Select **HTTP 1.1**
4. Save the configuration

After configuration, you can use API Worker normally.

## 📝 Notes

- Ensure the file has execute permissions before running
- On macOS, you may need to remove the quarantine attribute if the file is blocked
- HTTP 1.1 configuration is required for the application to work correctly

## 🆘 Troubleshooting

### "Permission denied" error
```bash
chmod +x api-worker-macos-m
```

### "cannot be opened because it is from an unidentified developer" error (macOS)
```bash
xattr -d com.apple.quarantine api-worker-macos-m
```

### "No such file or directory" error
Check the file path and make sure you are in the correct directory containing the file.

---

**Version**: macOS M
**Last updated**: 2025
