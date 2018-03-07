<?php
session_start();
session_destroy();	
	unset($_SESSION['username']);
	unset($_SESSION['hak']);
    echo "<script>alert('Anda telah berhasil keluar.'); window.location = '../index.php'</script>";
?>
