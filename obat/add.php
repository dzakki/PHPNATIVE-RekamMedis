<?php include_once '../_header.php';?>

 	<div class="box">
 		<h1>Obat</h1>
 		<h4>
 			<small>Tambah data</small>
			<div class="pull-right">
				<a href="data.php" class="btn btn-default btn-xs"><i>Back</i></a>
			</div>
 		</h4>
 		<div class="row">
 			<div class="col-lg-6 col-lg-offset-3">
 				<form action="proses.php" method="post">
 					<div class="form-group">
 						<label for="nama">Nama Obat</label>
 						<input type="text" name="nama" class="form-control" required autofocus>
 					</div>
 					<div class="form-group">
 						<label for="nama">Keterangan</label>
 						<textarea name="ket" id="ket" class="form-control" required></textarea>
 					</div>
 					<div class="form-group pull-right">
 						<input type="submit" name="add" value="simpan" class="btn btn btn-succes">
 					</div>
 				</form>
 			</div>
 		</div>
 	</div>

<?php include_once '../_footer.php';?>