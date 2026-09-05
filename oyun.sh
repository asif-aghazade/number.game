#!/bin/bash


say=$((RANDOM % 10))

   read -p "Salam, sayi tutma oyununa xos geldin. 0-9 arasinda bir reqem tutmusam, onu tapmaqa calis: " texmin
   

   while true
   do

	if [[ ! $texmin =~ ^[0-9]+$ ]]; then
	read -p "reqem gir!  " texmin
	
	elif (( $texmin > 9  )); then
	read -p "0-9 arasinda reqem gir:  " texmin


	elif [[ $texmin == $say ]]; then
	echo "Tebrikler, aqlimdaki sayiyi tapdin :)" 
	break

	elif [[ $texmin > $say ]]; then
	read -p "Aqlimdaki sayi $texmin -den kicikdir:  " texmin

 	elif [[ $texmin < $say ]]; then
	read -p "Aqlimdaki sayi $texmin -den boyukdur:  " texmin


	fi
   done








