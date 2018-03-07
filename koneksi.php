<?php

//session_start();
ob_start();



$hostDB 	= "localhost";
$userDB 	= "root";
$passDB 	= "";
$database   = "proyek_uas";

$conn = mysqli_connect("$hostDB","$userDB","$passDB","$database");
error_reporting(0);
if(mysqli_connect_errno())
{
	echo "KONEKSI GAGAL";
	die();
}

//pendaftaran
class dtabasedaftar{
public function daftarpasien()
{
                    $query = mysqli_query($conn, "select max(right(no_antrian,1)) as antrian from tbl_antrian WHERE tanggal=(SELECT CURDATE())");
					$nomor  = mysqli_fetch_array($query);
					$antrian	= $nomor['antrian'];
								
					if ($antrian == '') 
					{
						$idantrian = + 1;
					}
					else
					{
						$idantrian = $antrian+1;
					}
    
    
                    return $idantrian;
}

    
}
//ambil data
class anggota{
    
     public function ambilanggota(){
        $get = mysqli_query($conn, "SELECT * from tbl_pasien");					
        while($get_row = mysqli_fetch_assoc($get))
        $sub = $get_row['kode_pasien'] * $value;
        return $sub;
    }
    
}

?>
