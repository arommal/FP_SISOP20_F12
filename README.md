# FP_SISOP20_F12
**Final Project mata kuliah Sistem Operasi 2020** (lab)

  - Bryan Gautama Ngo (05111840000011)
  - Rosa Valentine Lammora (05111840000035)

## Overview
- [x] `cd`
- [ ] `chmod`
- [x] `head -n`
- [x] `head -c`
- [x] `head -q`
- [x] `head -v`
- [ ] `cp`
- [ ] `cp -r`
- [ ] `cp *`
- [ ] `mv`
- [ ] `mv *`

## Operasi
- **cd**\
Mengubah working directory.\
Contoh:\
cd /var/www/html -> akan berpindah ke direktori /var/www/html

- **chmod**\
Mengubah file permission suatu file atau directory.\
r = 4\
w = 2\
x = 1\
Contoh:\
chmod 777 tes.txt -> file permission dari tes.txt akan berubah menjadi 777 (user, group, others)

- **head**
Mencetak baris atau byte awal dari satu atau beberapa file.\
Contoh: (asumsi isi file lebih dari 10)
  - `head -n 5 file.txt` (mencetak isi file sebanyak 5 baris, default mencetak 10 baris tanpa option -n)
  - `head -c 6 file.txt`(mencetak isi file sebanyak 6 byte pada baris pertama)
  - `head -q  file1.txt file2.txt` (digunakan jika file lebih dari 1, akan mencetak sebanyak 20 baris)
  - `head -v file.txt` (selain mencetak 10 baris dari isi file, akan mencetak nama filenya pada baris pertama)

- **cp**
Meng-copy file.
  - **cp biasa**\
  `cp file1.c file2.c`  -> meng-copy file1.c menjadi file2.c
  - **cp -r**\
  `cp -r dir1 dir2`     -> meng-copy direktori dir1 menjadi dir2
  - **cp \***\
  `cp * /var/www/html`  -> meng-copy semua file di direktori saat ini ke /var/www/html

- `mv`\
Perintah ini digunakan untuk memindahkan file-file ke folder tujuan.\
Contoh:
  - **mv biasa**\
  `mv file1.txt ../Tujuan/`
  - **mv \***\
  `mv * ../Tujuan/`