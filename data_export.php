<!DOCTYPE html>
<html>
<head>
    <title>Rekap Nilai Laporan</title>
</head>
<body>
    <?php
    //header("Content-type: application/vnd-ms-excel");
    //header("Content-Disposition: attachment; filename=Rekap Nilai Laporan.xls");
    ?>
 	
	<table border="1">
		<tr>
			<th rowspan="2">No</th>
			<th rowspan="2">NIM</th>
			<th rowspan="2">Nama</th>
			<th colspan="7">Laporan</th>
		</tr>
		<tr>
			<th>1</th>
		</tr>
	<?php 
		if(isset($_POST['matkul']) && isset($_POST['kelas']) ):
			// koneksi database
			$koneksi = mysqli_connect("localhost","root","","db_dasar");
	 
			// menampilkan data pegawai
			$data = mysqli_query($koneksi,"select * from mhs_detail JOIN mhs ON mhs.nim = mhs_detail.nim where mhs_detail.matkul = '".$_POST['matkul']."' AND mhs_detail.kelas='".$_POST['kelas']."'");
			$no = 1;
			while($d = mysqli_fetch_array($data)):
	?>
		<tr>
			<td><?= $no++ ?></td>
			<td><?= $d['nim'] ?></td>
			<td><?= $d['nama_mhs'] ?></td>
			<td><?= $d['nilai'] ?></td>
		</tr>

	<?php 
			endwhile;
		endif;
	?>
	</table>
</body>
</html>