#!/bin/bash

echo "DOWNLOAD DATA PRAKTIKUM MODUL 2 MPCN"

wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=1_0QrnfIAqlRdvGsV5tgG_OTjezKQliQS' -O- | sed -rn 's/.confirm=([0-9A-Za-z]+)._/\1\n/p')&id=1_0QrnfIAqlRdvGsV5tgG_OTjezKQliQS" -O MPCN_MODUL2.zip && rm -rf /tmp/cookies.txt

unzip MPCN_MODUL2.zip

echo "TERIMA KASIH SUDAH MENUNGGU @ASISTEN PRAKTIMUM MPCN"

