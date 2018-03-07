<?php
	include "koneksi.php";
		
		$query = mysqli_query($conn, "SELECT MAX(id_pengguna) AS ke FROM pengguna NATURAL JOIN anggota");
		$nomor  = mysqli_fetch_array($query);
		$jum	= $nomor['ke'];
					
		if ($jum == '') 
		{
			$ke = '1';
		}
		else
		{
			$ke = $jum + 1;
		}
		
		$nama 		= $_POST['nama'];
		$ktp 		= $_POST['ktp'];
		$alamat 	= $_POST['alamat'];
		$telp 		= $_POST['telepon'];
		$email 		= $_POST['email'];
		$tgl 		= date('Y-m-d');
		$gaji 		= $_POST['penghasilan'];
		$pekerjaan 	= $_POST['pekerjaan'];
		$username	= $_POST['username'];
		$data		= $_POST['password'];
		$password 	= md5($data);
		
		
		$simpan		 = mysqli_query($conn, "INSERT INTO anggota (id_pengguna,nama,no_ktp,alamat,telp,email,tgl_daftar,gaji,pekerjaan) 
						VALUES ('$ke', '$nama', '$ktp', '$alamat', '$telp', '$email', '$tgl', '$gaji', '$pekerjaan')");
		$simpan1	 = mysqli_query($conn, "INSERT INTO pengguna (id_pengguna,username,password,status) 
						VALUES ('$ke', '$username', '$password', 'User')");
						
		if ($simpan && $simpan1)
		{
			echo "<script>alert('Akun Berhasil Didaftarkan!'); window.location = 'index.php'</script>";	
		} 
		else 
		{
			echo "<script>alert('Data Peminjaman Gagal Dimasukan!'); window.location = 'daftar.php'</script>";	
		}							
?>