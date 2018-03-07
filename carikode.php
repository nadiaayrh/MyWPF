<?php
include "koneksi.php";
$kodepasien = $_POST['kodepasien'];

$query = mysqli_query($conn, "SELECT * FROM TBL_PASIEN WHERE kode_pasien LIKE '$kodepasien'");
$data = mysqli_fetch_array($query); 

if (!empty($data))
{ 

		session_start();
		$_SESSION['kodepasien']    = $kodepasien;
		echo "<script>alert('Data Ditemukan.');window.location ='pendaftaran.php'</script>";
}
			
 else {
	echo "<script>alert('Anda Belum terdaftar.');</script>";	
	echo "<script>alert('Silahkan Daftar Terlebih dahulu.'); window.location = 'pendaftaranbaru.php'</script>";	
}
?>