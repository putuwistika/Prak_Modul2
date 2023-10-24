#!/bin/bash

# Membersihkan layar
clear

# Menyimpan tanggal dan waktu awal
start_time=$(date +"%Y-%m-%d %T")
echo "================================================================================="

echo "      ┏━━┓           ┏┓     ┏┓     ┏┓                    ┏━━┓              ┏┓"
echo "      ┃┏┓┃           ┃┃    ┏┛┗┓    ┃┃                    ┃┏┓┃             ┏┛┃"
echo "      ┃┗┛┃  ┏━┓ ┏━━┓ ┃┃┏┓  ┗┓┏┛ ┏┓ ┃┃┏┓ ┏┓┏┓ ┏┓┏┓   ┏┓┏┓ ┃┗┛┃ ┏━━┓ ┏━┓    ┗┓┃"
echo "      ┃┏━┛  ┃┏┛ ┃┏┓┃ ┃┗┛┛   ┃┃  ┣┫ ┃┗┛┛ ┃┃┃┃ ┃┗┛┃   ┃┗┛┃ ┃┏━┛ ┃┏━┛ ┃┏┓┓    ┃┃"
echo "      ┃┃    ┃┃  ┃┏┓┃ ┃┏┓┓   ┃┗┓ ┃┃ ┃┏┓┓ ┃┗┛┃ ┃┃┃┃   ┃┃┃┃ ┃┃   ┃┗━┓ ┃┃┃┃   ┏┛┗┓"
echo "      ┗┛    ┗┛  ┗┛┗┛ ┗┛┗┛   ┗━┛ ┗┛ ┗┛┗┛ ┗━━┛ ┗┻┻┛   ┗┻┻┛ ┗┛   ┗━━┛ ┗┛┗┛   ┗━━┛"



echo "================================================================================="
echo " "
echo "                      ASISTEN PRAKTIKUM MPCN I 2023 MEMPERSEMBAHKAN"
echo " "
echo "                      *******************************************"
echo "                          DOWNLOAD DATA PRAKTIKUM MODUL 2 MPCN"
echo "                              MOHON TUNGGU SAYANG-SAYANGKUH"
echo "                             SAMBIL NUNGGU MENDING NGOPI DULU"
echo "                                JANGAN DI CANCEL YAHHH!!!!"
echo "                      *******************************************"
echo " "
echo "================================================================================="
echo "                                  DOWNLOADING........"
echo "================================================================================="
echo "               emang ga ada progressnya, tenang pasti kedownload kok :)"
echo " "

# Mengunduh file dengan output log dan mengarahkan pesan kesalahan ke log
wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=1LupxU6R6cE6gIUKv8GllYMKF3mchv3LW' -O- | sed -rn 's/.confirm=([0-9A-Za-z]+)._/\1\n/p')&id=1LupxU6R6cE6gIUKv8GllYMKF3mchv3LW" -O MPCN_MODUL2.zip 2>> download.log


echo "================================================================================="
echo "                                  UNPACKING DATA........"
echo "================================================================================="

# Memeriksa apakah 'unzip' sudah terinstal
if ! command -v unzip &> /dev/null
then
    echo "Perintah 'unzip' tidak ditemukan. Mencoba menginstal..."
    sudo apt install unzip
fi


unzip MPCN_MODUL2.zip >> unzip.log 


# Menyimpan tanggal dan waktu akhir
end_time=$(date +"%Y-%m-%d %T")

# Menambahkan informasi waktu awal dan akhir ke log
echo "Start Time: $start_time" >> download.log
echo "End Time: $end_time" >> download.log

# Hapus file yang tidak diperlukan
rm MPCN_MODUL2.zip download_modul2.sh
mv MPCN_MODUL2 MODUL2
rm download.log
rm unzip.log

mv MODUL2 ../
cd ..
rm -rf Prak_Modul2


echo " "
echo "================================================================================="
echo "                                  YEYYY SUDAH SELESAI"
echo "================================================================================="
echo "                              TERIMA KASIH SUDAH MENUNGGU"
echo "                             SELAMAT MENGERJAKAN PRAKTIKUM"
echo "                 @SALAM HANGAT ASISTEN PRAKTIKUM MPCN I 2023 ALA ALA DUM DUM"
echo "================================================================================="
cd ../
