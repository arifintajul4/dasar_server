
<?php   session_start();  ?>
<?php include 'connection.php'; ?>
<?php
$mk = "SELECT * FROM matkul";
$result = $conn->query($mk);

if ($result->num_rows > 0) {
    $pilihmk = '<option>Pilih Matakuliah...</option>';
    while($row = $result->fetch_assoc()) {
        $pilihmk .= '<option  value="'.$row['kode_matkul'].'">'.$row['nama_matkul'].'</option>';
    }
} else {
    echo "0 results";
}

?>


<section class="content">

<!-- Horizontal Form -->
<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Tambahkan Informasi!</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post">
              <div class="box-body">

                <div class="form-group">
                  <label for="tmbhInfoNama" class="col-sm-2 control-label">Nama Matakuliah</label>
                  <div class="col-sm-10">
                    <select class="form-control select2" style="width: 100%;" id="tmbhInfoNama" name="tmbhInfoNama">
                      <?php echo $pilihmk ?>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="tambahInfoJudul" class="col-sm-2 control-label">Judul</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahInfoJudul" name="tambahInfoJudul" placeholder="Judul Informasi - Kelas">
                  </div>
                </div>
                

                <div class="form-group">
                  <label for="tambahDosenKet" class="col-sm-2 control-label">  </label>

                  <div class="col-sm-10">
                     <div class="box box-info">
                         <div class="box-header">
                            <h3 class="box-title">Informasi
                                <small><?php echo date("d-m-Y")?></small>
                            </h3>
              
                        </div>
                            <!-- /.box-header -->
                        <div class="box-body pad">
                          
                            <textarea id="editor1" name="editor1" rows="10" cols="80">
                                            Isikan informasinya disini.
                            </textarea>
                            
                        </div>
                    </div>
          <!-- /.box -->
                  </div>
                </div>

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="tambahInfoSimpan" name="tambahInfoSimpan">Simpan</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
          <!-- /.box -->
          </section>

<!-- CK Editor -->
<script src="bower_components/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>

<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>