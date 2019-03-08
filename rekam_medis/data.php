<?php include_once '../_header.php'; ?>

	<div class="box">
		<h1>Rekam Medis</h1>
		<h4>
			<small>Data Rekam Medis</small>
			<div class="pull-right">
				<a href="" class="btn btn-default btn-xs"><i>Refresh</i></a>
				<a href="add.php" class="btn btn-default btn-xs"><i>Add</i></a>
			</div>
		</h4>
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover" id="rekammedis">
				<thead>
					<tr>
						<th>No</th>
						<th>Tanggal Periksa</th>
						<th>Nama Pasien</th>
						<th>Keluhan</th>
						<th>Nama Dokter</th>
						<th>Diagnosa</th>
						<th>Poliklinik</th>
						<th>Data Obat</th>

						<th><center><i class="glyphicon glyphicon-cog"></center></i></th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no=1;
					$query = "SELECT * FROM tb_rekammedis
							INNER JOIN tb_pasien ON tb_rekammedis.id_pasien = tb_pasien.id_pasien
							INNER JOIN tb_dokter ON tb_rekammedis.id_dokter = tb_dokter.id_dokter
							INNER JOIN tb_poliklinik ON tb_rekammedis.id_poli = tb_poliklinik.id_poli";
					$sql_rm = mysqli_query($con, $query) or die (mysqli_error($ocn));
					while ($data =  mysqli_fetch_array($sql_rm)){ ?>
						<tr>
							<td><?=$no++?></td>
							<td><?=$data['tgl_periksa']?></td>
							<td><?=$data['nama_pasien']?></td>
							<td><?=$data['keluhan']?></td>
							<td><?=$data['nama_dokter']?></td>
							<td><?=$data['diagnosa']?></td>
							<td><?=$data['nama_poli']?></td>
							<td>
								<?php
								$sql_obat = mysqli_query($con,"SELECT * FROM tb_rm_obat JOIN tb_obat ON tb_rm_obat.id_obat = tb_obat.id_obat WHERE id_rm = '$data[id_rm]' ") or die (mysqli_error($con));
								while ($data_obat = mysqli_fetch_array($sql_obat)) {
									echo $data_obat['nama_obat']."<br/>";
								}
								?>
							</td>
							<td>
								<center><a href="del.php?id=<?=$data['id_rm']?>" onclick="return confirm('Yakin anda akan menghapus!')" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-trash"></i></a></center>
							</td>
						</tr>
					<?php
					}
					?>
				</tbody>
			</table>
		</div>
		<script>
		$(document).ready(function() {
		$('#rekammedis').DataTable({
			columnDefs: [
				{
					"searchable": false,
					"orderable": false,
					"targets": 8
				}
			]

		});
	});
		</script>
	</div>
<?php include_once '../_footer.php'; ?>
