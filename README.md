# README - Praktikum Sistem Operasi

## Identitas Mahasiswa

- Nama: Eli Nur Aulia
- NIM: 251572010005
- Mata Kuliah: Sistem Operasi
- Repository: praktikum-linux-sesi5

---

# Praktikum Linux Shell & Data Processing

Praktikum ini mempelajari penggunaan command Linux, shell scripting, data processing, analisis log, JSON processing, SSH, SCP, RSYNC, dan verifikasi file menggunakan SHA256SUM.

---

# 1. Instalasi dan Persiapan

## Update Package

```bash
sudo apt update
```

## Install OpenSSH

```bash
sudo apt install openssh-server
sudo systemctl enable --now ssh
```

## Install jq

```bash
sudo apt install jq
```

---

# 2. Command Linux yang Digunakan

| Command | Fungsi |
|---|---|
| ls | melihat isi folder |
| cat | melihat isi file |
| vim | editor teks |
| grep | mencari teks |
| tail | melihat isi akhir file |
| touch | membuat file |
| cp | copy file |
| mv | memindahkan file |
| rsync | sinkronisasi file |
| tar | archive |
| zip/unzip | kompres file |
| sed | manipulasi teks |
| awk | processing data |

---

# 3. Vim Editor

## Mode Vim

| Mode | Fungsi |
|---|---|
| Normal | navigasi |
| Insert | edit teks |
| Esc | keluar insert |
| :w | save |
| :q | quit |
| :wq | save & quit |

Contoh:

```bash
vim solution.sh
```

---

# 4. Linux File System Hierarchy

| Folder | Fungsi |
|---|---|
| /home | data user |
| /etc | konfigurasi |
| /var | log |
| /tmp | file sementara |
| /usr | aplikasi |
| /mnt | mount device |

---

# 5. Mount dan Unmount

## Mount

```bash
sudo mount /dev/sdb1 /mnt
```

## Unmount

```bash
sudo umount /mnt
```

---

# 6. Praktikum SSH, SCP, RSYNC, dan SHA256

## SSH

```bash
ssh localhost
```

Digunakan untuk remote Linux.

---

## SCP

```bash
scp produk-lama.csv user@ip:/home/user/
```

Digunakan untuk transfer file.

---

## RSYNC

```bash
rsync -avz folder/ user@ip:/home/user/
```

Digunakan untuk sinkronisasi file.

---

## SHA256SUM

```bash
sha256sum produk-lama.csv
```

Digunakan untuk verifikasi integritas file.

---

# 7. Exercise

## Exercise 1 — CSV Customer Data

Melakukan:
- normalisasi status
- filter gmail
- deduplikasi email
- konversi tanggal

---

## Exercise 2 — Nginx Access Log

Melakukan:
- top IP analysis
- error rate
- brute force detection

---

## Exercise 3 — JSON Orders

Melakukan:
- parsing JSON
- validasi order
- analisis customer

---

## Exercise 4 — Data Migration

Melakukan:
- cleaning data
- normalisasi kategori
- deduplikasi data

---

---

# 8. Refleksi Pribadi

Pada praktikum ini saya belajar menggunakan Linux shell tools untuk processing data, analisis log, dan administrasi server Linux.

Saya juga belajar menggunakan vim editor, SSH, SCP, RSYNC, awk, sed, dan jq.

Kesulitan terbesar pada praktikum ini adalah memahami penggunaan awk dan vim karena syntax cukup sensitif.

Praktikum ini membantu memahami penggunaan Linux pada dunia kerja seperti DevOps, System Administrator, dan Data Engineering.

---

# 9. Kesimpulan

Praktikum ini membantu memahami penggunaan command Linux, shell scripting, processing data, transfer file, dan penggunaan GitHub dalam environment Linux.
