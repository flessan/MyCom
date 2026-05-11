Tentu, Thio! Supaya skrip kamu Universal (bisa jalan di Bash, Zsh, maupun Fish) dan punya instruksi yang jelas, kita akan pakai trik "piping" yang paling aman.
Berikut adalah README.md profesional yang bisa kamu taruh di repository atau website kamu, lengkap dengan perintah satu baris yang anti-error di shell apa pun.
------------------------------
## 🔋 TLP Portable Switcher by Flessan
Skrip otomatis untuk mengelola hemat daya di CachyOS / Arch Linux tanpa ribet. Dibuat khusus untuk folder eksperimen ~/Destop.
## 🚀 Cara Install & Jalankan (Universal)
Gunakan perintah di bawah ini. Perintah ini sudah dites dan berjalan di Fish, Bash, maupun Zsh.

```bash
curl -s https://flessan.pages.dev/linux/tlp.sh | bash
```

Kenapa pakai perintah ini? Karena curl | bash adalah cara paling universal yang tidak akan terkena error process substitution di Fish Shell.

## ✨ Apa yang dilakukan skrip ini?

   1. Auto-Dependency: Mengecek dan menginstall tlp jika belum ada.
   2. Panggung Khusus: Mengunduh skrip permanen ke ~/Destop/tlp-control.sh.
   3. App Generator: Membuat ikon klik-dan-jalan TLP-Switch.desktop langsung di folder Destop.
   4. Smart Toggle: Otomatis ganti mode (Hemat ↔ Normal) setiap kali dijalankan tanpa perlu ngetik perintah lagi.

# Mencari folder Desktop meskipun namanya 'Desktop' atau 'Destop'
FOLDER_KERJA=$(xdg-user-dir DESKTOP)

## 📝 Catatan Penting

* Saat dijalankan pertama kali, terminal akan meminta password sudo untuk setting sistem.
* Jika ikon di Desktop tidak bisa diklik, klik kanan pada file TLP-Switch.desktop lalu pilih "Allow Launching" (Izinkan Peluncuran).
