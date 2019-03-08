<?php 
require_once "../_config/config.php";

 if (!isset($_POST['checked'])) {
     echo "<script>alert('Tidak ada data yang dipilih!');window.location='data.php';</script>";
 }else {
 	foreach ($_POST['checked'] as $id) {
 		$sql = mysqli_query($con,"DELETE FROM tb_poliklinik WHERE id_poli='$id' ") or die(mysqli_error($con));
 	}
 	if ($sql) {
		echo "<script>alert('Data berhasil dihapus'); window.location='data.php'</script>";
	}else{
		echo "<script>alert(' Gagal Hapus Data, Coba lagi');</script>";
	}
 }
 ?>