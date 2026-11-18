# Sport_Tool_-Aidrop

# HƯỚNG DẪN SỬ DỤNG CÔNG CỤ VIET MMO - CRYPTO TOOL KIT

Công cụ này chạy trên nền tảng **Node.js**, cung cấp giao diện dòng lệnh (CLI) tổng hợp gồm 8 chức năng chính phục vụ cho công việc MMO và Crypto (tạo ví hàng loạt, tạo User Agent, tạo tên ngẫu nhiên, câu hỏi trắc nghiệm crypto và tạo email ảo qua Mail.tm).

---

## CHI TIẾT CÁC CHỨC NĂNG (ĐẦU VÀO & ĐẦU RA)

### 1. [EVM] Generate Wallets (Excel)
* **Mô tả:** Tạo hàng loạt ví EVM (tương thích Ethereum, BSC, Polygon, Arbitrum, v.v.).
* **Đầu vào:**
  * Chọn loại Mnemonic (cụm từ khôi phục): `1` (12 từ) hoặc `2` (24 từ)[cite: 1].
  * Nhập số lượng ví muốn tạo (số nguyên lớn hơn 0)[cite: 1].
* **Đầu ra:** File Excel lưu tại `evm_wallets.xlsx` bao gồm các cột[cite: 1]:
  * `Mnemonic` (Cụm từ khóa bí mật / Khóa khôi phục)[cite: 1]
  * `Private Key` (Khóa riêng tư của ví)[cite: 1]
  * `Address` (Địa chỉ ví EVM)[cite: 1]

### 2. [SOL] Generate Solana Wallets (Excel)
* **Mô tả:** Tạo hàng loạt ví mạng lưới Solana[cite: 1].
* **Đầu vào:** Nhập tổng số lượng ví muốn tạo[cite: 1].
* **Đầu ra:** File Excel lưu tại `solana_wallets.xlsx` bao gồm các cột[cite: 1]:
  * `PublicKey(Base58)` (Địa chỉ ví Solana)[cite: 1]
  * `PrivateKey(Base58)` (Khóa riêng tư của ví Solana)[cite: 1]

### 3. [SUI] Generate Sui Wallets (Txt)
* **Mô tả:** Tạo hàng loạt ví mạng lưới SUI sử dụng thư viện `@mysten/sui.js`[cite: 1].
* **Đầu vào:** Nhập tổng số lượng ví muốn tạo[cite: 1].
* **Đầu ra:** File văn bản lưu tại `sui_wallets.txt`, mỗi dòng chứa thông tin định dạng theo cấu trúc[cite: 1]:
  * `[Mnemonic/Private Key]|[Address]`[cite: 1]

### 4. [APTOS] Generate Aptos Wallets (Excel)
* **Mô tả:** Tạo hàng loạt ví mạng lưới Aptos[cite: 1].
* **Đầu vào:** Nhập tổng số lượng ví muốn tạo[cite: 1].
* **Đầu ra:** File Excel lưu tại `aptos_wallets.xlsx` bao gồm các cột[cite: 1]:
  * `Phrase (Mnemonic)` (Cụm từ khôi phục)[cite: 1]
  * `PrivateKey` (Khóa riêng tư)[cite: 1]
  * `Address` (Địa chỉ ví Aptos)[cite: 1]

### 5. [UA] Generate Diverse User Agents
* **Mô tả:** Tạo ngẫu nhiên danh sách chuỗi User Agent đa dạng cho trình duyệt (Chrome/Safari trên Windows, Mac, Linux)[cite: 1].
* **Đầu vào:** Nhập tổng số lượng User Agent muốn tạo (mặc định là `100` nếu bỏ trống)[cite: 1].
* **Đầu ra:** File văn bản lưu tại `user_agents.txt`, mỗi dòng là một chuỗi User Agent hoàn chỉnh[cite: 1].

### 6. [NAME] Generate Usernames
* **Mô tả:** Tạo ngẫu nhiên các tên người dùng (Username) kết hợp từ Họ và Tên đệm/Tên chính đi kèm một dãy số ngẫu nhiên[cite: 1].
* **Đầu vào:** Nhập tổng số lượng username muốn tạo (mặc định là `50` nếu bỏ trống)[cite: 1].
* **Đầu ra:** File văn bản lưu tại `usernames.txt`, mỗi dòng là một tên người dùng ngẫu nhiên[cite: 1].

### 7. [QUEST] Generate Crypto Questions
* **Mô tả:** Tạo ngẫu nhiên bộ câu hỏi và trắc nghiệm về kiến thức Crypto từ cơ sở dữ liệu có sẵn[cite: 1].
* **Đầu vào:** Nhập số lượng câu hỏi muốn tạo[cite: 1].
* **Đầu ra:** File văn bản lưu tại `questions.txt` chứa danh sách câu hỏi được đánh số thứ tự[cite: 1].

### 8. [MAIL] Create Mail.tm (Multi-thread)
* **Mô tả:** Tạo tài khoản email ảo hàng loạt thông qua API của `mail.tm` hỗ trợ chạy đa luồng (multi-thread) kết hợp sử dụng proxy (nếu có)[cite: 1].
* **Đầu vào:** 
  * Đọc danh sách proxy từ file `proxy.txt` (nếu có sẵn)[cite: 1].
  * Nhập tổng số lượng tài khoản email muốn tạo[cite: 1].
* **Đầu ra:** Lưu thông tin tài khoản vào file `mail.txt` (hoặc log quá trình vào `logs.txt`) theo định dạng[cite: 1]:
  * `[Email]|[Password]|[Token xác thực]`[cite: 1]

---

## HƯỚNG DẪN SỬ DỤNG TỔNG QUAN
1. Đảm bảo đã cài đặt đầy đủ các gói thư viện phụ thuộc Node.js (như `ethers`, `exceljs`, `cli-progress`, `axios`, v.v.)[cite: 1].
2. Khởi chạy script chính bằng lệnh[cite: 1]:
   ```bash
   node main.js

   Channel 

Free Airdrop Channel: https://t.me/Vietmmo_Aidrop 
Discord Channel: https://discord.com/invite/uw7dCDbnJu 
Purchase Keyline: https://web.telegram.org/k/#@ToolAirDrop_Bot
Donate : https://huynhviet933.github.io/donate_viet_mmo/
