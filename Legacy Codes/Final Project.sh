n=0;
exit=1;

	echo "Masukkan nama"
	read nama

	while [[ $exit=1 ]]; 
	do
	#statements
	invoice = "BAJUI"1;
	let invoice=$invoice+3

	increment = 0;
	let increment=$increment+1

	clear
	echo "Hi $nama. Selamat datang di Project Program saya."
	echo "1. Create User."
	echo "2. Login User."
	read login
	if [[ $login -eq 1 ]];
	then
		echo "Segera Membuat username kamu !"
		echo -n "Username = "
		read username;
		echo "Username kamu sudah dibuat."
		echo "=========================="
		echo "Yuk Membuat password kamu !"
		echo -n "Password = "
		read password;
		echo "User sudah jadi."
		echo "=========================="
		let n=$n+1;
	elif [[ $login -eq 2 ]]; then 
		echo "Yuk Login !"
		echo -n "Username = "
		read usr;
		echo "=========================="
		echo "Yuk Membuat password kamu !"
		echo -n "Password = "
		read pwd;
		echo "=========================="
		if [[ $usr == $username && $pwd == $password ]];
			then
			echo "Kamu berhasil login."
			break;
		else
			echo "Kamu Salah memasukkan password."
			echo "Tolong ulangi lagi."
			exit=1;
		fi
		#statements
	fi
	done

exit=1;
while [[ $exit = 1 ]];
do
echo ""
echo "Menu"
   echo "1. Transaksi Pembelian";
   echo "2. Pembayaran ";
   echo "3. Cetak Bukti Pembayaran ";
   echo "4. KELUAR       ";
read -p "pilih menu yang akan dilakukan " pilihan

if [ $pilihan -eq 1 ];
then
clear;
       echo "=====================================";
       echo "    MENU HARGA BUKU KEMPRUT STORE";
       echo "=====================================";
       echo "1. KOMIK      RP 60.000";
       echo "2. NOVEL      RP 70.000";
       echo "3. PELAJARAN  RP 100.000";
       echo "=====================================";
       echo -n "Masukan Nama anda                 :";
       read nama 
       echo -n "Masukan Alamat anda               :";
       read alamat
       echo -n "E-mail        : "
       read email
       echo -n "No HP         : "
       read hp
       echo -n "Masukan jenis buku anda (1-3)    :";
       read jenis
       echo -n "Masukan jumlah buku yang di beli : "
       read jum
       echo "=====================================";
       if [ $jenis -eq 1 ];
       then
	       buku="KOMIK";
	       harga=60000;
	       let total=jum*harga;
       elif [ $jenis -eq 2 ];
       then
	       buku="NOVEL";
	       harga=70000;
	       let total=jum*harga; 
       elif [ $jenis -eq 3 ];
       then
	       buku="PELAJARAN";
	       tiket=100000;
	       let total=jum*harga;
       else
	       echo "Sorry, tidak tersedia"
	       exit=0;
       fi
elif [ $pilihan -eq 2 ];
then
       echo "Pembayaran untuk buku."
       echo "1. Online.";
       echo "2. Offline.";
       read -p "Masukkin Pilihan : " pembayaran
       echo ""
       if [ $pembayaran -eq 1 ];
       then
	       echo "1. Kartu Kredit."
	       echo "2. Transfer Bank"
	       read -p "Masukkin Pilihan : " bayar
	       if [ $bayar -eq 1 ];
	       then
		       echo -n "Masukkan nomor kartu kredit anda : "
		       read cc
		       if [ $cc -eq 12345678 ];
		       then
			       echo "No Invoice : "$invoice
			       echo "Pembayaran anda sudah diterima, terima kasih telah membeli buku di aplikasi kami."
	       else
	       echo "Inputan Salah."
	   fi
	       fi
       elif [[ $bayar -eq 2 ]];
       then
	       echo "Masukkan nomor Kartu atm anda : "
	       read atm
	       echo "Masukkan otp yang telah dikirimkan ke nomor telepon anda."
	       read otp
	       if [ $otp -eq 123456 ];
	       then
		       echo "No Invoice : "$invoice
		       echo "Pembayaran anda telah terverifikasi."
		       echo "Pembayaran anda sudah diterima, terima kasih telah membeli buku di aplikasi kami."
	       else
		       echo "Inputan salah !!"
		       echo "Masukkan nomor atm yang benar"
	       fi
       echo ""
       elif [[ $pembayaran -eq 2 ]]; 
       then
       echo "Pembayaran di loket."
       else
       echo "Inputan anda salah."
       fi
       echo ""

elif [ $pilihan -eq 3 ];
then
       clear;
       echo "DATA PEMBELI BUKU Kemprut Store";
       echo "====================================";
       echo "No invoice  : $invoice"
       echo "NAMA        : $nama";
       echo "ALAMAT      : $alamat";
       echo "BUKU        : $buku";
       echo "JUMLAH      : $jum";
       echo "Nomor Hp    : $hp"
       echo "E-mail      : $email"
       echo "====================================";
       echo "TOTAL BAYAR : $total";
       echo "====================================";
       echo
else
	exit=0;
	echo "Terima Kasih sudah beli di Kemprut Store."
fi
done
	
