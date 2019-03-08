<?php include_once '../_header.php'; ?>

	<div class="box">
		<h1>Pasien</h1>
		<h4>
			<small>Data Pasien</small>
			<div class="pull-right">
				<a href="" class="btn btn-default btn-xs"><i>Refresh</i></a>
				<a href="add.php" class="btn btn-default btn-xs"><i>Add</i></a>
			</div>
		</h4>
		<div class="table-responsive">
			<table class="table table-striped table-bordered table-hover" id="pasien">
				<thead>
					<tr>	
						<th>Nomer Identitas</th>
						<th>Nama Pasiean</th>
						<th>Jenis Kelamin</th>
						<th>Alamat</th>
						<th>No. Telp</th>
						<th><i class="glyphicon glyphicon-cog"></i></th>
					</tr>
				</thead>
			</table>
		</div>		
	</div>
	<script>
		$(document).ready(function() {
    $('#pasien').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax": "pasien_data.php",
        // scrollY : '250px',
        dom : 'Bfrtip',
        button : [
        	{
        		extend : 'pdf',
        		oriented : 'potrait',
        		pageSize : 'Legal',
        		title : 'Data Pasien',
        		download : 'open'
        	},
        		'csv', 'excel', 'print', 'copy'
        ],
        columnDefs : [
        	{
        		"searchable" : false,
        		"orderable" : false,
        		"targets" : 5,
        		"render" : function (data, type , row){
        			var btn ="<center><a href=\"edit.php?id="+data+"\" class=\"btn btn-warning btn-xs\"><i class=\"glyphicon glyphicon-edit\"></i></a> <a href=\"del.php?id="+data+"\" onclick=\"return confirm('Yakin anda akan menghapus!')\" class=\"btn btn-warning btn-xs\"><i class=\"glyphicon glyphicon-trash\"></i></a></center>";
        			return btn;
        		}
        	}
        ]
    } );
} );
	</script>
<?php include_once '../_footer.php'; ?>