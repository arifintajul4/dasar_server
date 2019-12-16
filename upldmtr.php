


<?php include 'connection.php'; ?>

<?php
$mk = "SELECT kode_matkul, nama_matkul FROM matkul";
$result = $conn->query($mk);

if ($result->num_rows > 0) {
    $pilihmk = '<option>Pilih Matakuliah...</option>';
    while($row = $result->fetch_assoc()) {
        $pilihmk .= '<option  value = "'.$row['nama_matkul'].'">'.$row['nama_matkul'].'</option>';
    }
} else {
    echo "0 results";
}


$ds = "SELECT nidn, nama_dosen FROM dosen";
$result = $conn->query($ds);

if ($result->num_rows > 0) {
    $pilihds = '<option>Pilih Dosen...</option>';
    while($row = $result->fetch_assoc()) {
        $pilihds .= '<option value = "'.$row['nidn'].'">'.$row['nama_dosen'].'</option>';
    }
} else {
    echo "0 results";
}

?>

<section class="content">

<!-- Horizontal Form -->
<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Upload Materi!</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post" enctype = "multipart/form-data">
              <div class="box-body">
                <div class="form-group">
                  <label for="uploadMtrKodeMK" class="col-sm-2 control-label">Nama Matakuliah</label>
                  <div class="col-sm-10">
                    <select class="form-control select2" style="width: 100%;" id="uploadMtrKodeMK" name="uploadMtrKodeMK">
                      <?php echo $pilihmk ?>
                    </select>
                  </div>
                </div>
               
                 <div class="form-group">
                  <label for="uploadMtrFile" class="col-sm-2 control-label">Pilih file</label>

                  <div class="col-sm-10">
                  <input type="file" id="uploadMtrFile" name="uploadMtrFile">
                    <p class="help-block">Pilih file yang ingin diupload.</p>
                  </div>
                </div>

                <div class="form-group">
                  <label for="uploadMtrNameFile" class="col-sm-2 control-label">Nama file</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="uploadMtrNameFile" name="uploadMtrNameFile" placeholder="File Name - Format (Pertemuan Ke-XxX)">
                  </div>
                </div>
                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="uploadMkPublish" name="uploadMkPublish">Publish</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
          <!-- /.box -->
          </section>



