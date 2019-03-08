<?php include_once '../_header.php'; ?>

	<div class="box">
		<h1>Obat</h1>
		<h4>
			<small>Data Obat</small>
			<div class="pull-right">
				<a href="" class="btn btn-default btn-xs"><i>Refresh</i></a>
				<a href="add.php" class="btn btn-default btn-xs"><i>Add</i></a>
			</div>
		</h4>
		<div style="margin-bottom: 20px">
		<div>
			<form class="form-inline" action="" method="post">
				<div class="form-group">
					<input type="text" name="pencarian" class="form-control" placeholder="search">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">search</button>
				</div>
			</form>
		</div>
		</div>
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>Nama Obat</th>
						<th>Keterangan</th>
						<th>Opsi</th>	
					</tr>
				</thead>
				<tbody>
					<?php
					$batas = 3;
					$hal = @$_GET['hal'];
					if (empty($hal)) {
						$posisi = 0;
						$hal = 1;
					}else{
						$posisi = ($hal - 1) * $batas;
					}

					$no=1;

					if ($_SERVER['REQUEST_METHOD'] == "POST") {
						$pencarian = trim(mysqli_real_escape_string($con, $_POST['pencarian']));
						if ($pencarian != '' ) {
							$sql = "SELECT * FROM tb_obat WHERE nama_obat LIKE '%$pencarian%' ";
							$query = $sql;
							$queryJml = $sql;
						}else{
							$query = "SELECT * FROM tb_obat LIMIT $posisi, $batas";
							$queryJml = "SELECT * FROM tb_obat";
							$no = $posisi + 1;
						}
					}else{
						$query = "SELECT * FROM tb_obat LIMIT $posisi,$batas";
						$queryJml = "SELECT * FROM tb_obat";
						$no = $posisi + 1;
					}

					$sql_obat=mysqli_query($con,$query) or die (mysqli_error($con));
					if (mysqli_num_rows($sql_obat) >0 ){
						while ($data = mysqli_fetch_array($sql_obat)) {?>
							<tr>
								<td><?=$no++?></td>
								<td><?=$data['nama_obat']?></td>
								<td><?=$data['ket_obat']?></td>
								<td>
								<a href="edit.php?id=<?=$data['id_obat']?>">Edit</a> |
								<a href="del.php?id=<?=$data['id_obat']?>" onclick="return confirm('Yakin akan menghapus data?')">Delete</a>
								</td>
							</tr>
						<?php	
						}
					}else{
						echo "<tr><td colspan=\"4\" align='center'><td></tr>";
					}
					?>

				</tbody>
			</table>
		</div>
		<?php
		 ?>
			<div style="float: left;">
				<?php
				$jml = mysqli_num_rows(mysqli_query($con, $queryJml));
				echo "Jumlah data : <b>$jml</b>";
				?>
			</div>
			<div style="float: right;">
				<ul class="pagination pagination-sm" style="margin: 0">
					<?php
					$jml_hal = ceil($jml / $batas);
					for ($i=1; $i <= $jml_hal ; $i++) { 
						if ($i != $hal) {
							echo "<li><a href='?hal=$i' class='btn btn-blok'>$i</a></li>";
						}else{
							echo "<li class='active'><a class='btn btn-blok'>$i</a></li>";
						}
					}
					?>
				</ul>
			</div>
	</div>

<?php include_once '../_footer.php'; ?>