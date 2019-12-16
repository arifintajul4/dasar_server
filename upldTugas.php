


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
              <h3 class="box-title">Upload Tugas!</h3>
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
                  <label for="uploadTugasKelas" class="col-sm-2 control-label">Kelas</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="uploadTugasKelas" name="uploadTugasKelas" placeholder="Kelas">
                  </div>
                </div>
                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="uploadTugastSubmit" name="uploadTugastSubmit">Submit</button>
              </div>
              <!-- /.box-footer -->
            </form>
            


     <!-- Main content -->
     <section class="content">
    
    <!-- Horizontal Form -->
<div class="box box-info">


            <div class="box-header with-border">
              <h3 class="box-title">File Terkumpul</h3>
            </div>

       <?php
       // ambil tanggal berangkat kereta buat compare
        //$tglPilihan= $_POST['tglBerangkat'];
        $sql = "SELECT * FROM matkul";
        $result = $conn->query($sql);
        $tot = 0;
        if ($result->num_rows > 0) {
          // output data of each row
        ?>
            <div class="box-body">
              <table class="table table-condensed">
                <tr>
                  <th style="width: 10px">Kode</th>
                  <th>Matakuliah</th>
                  <th>Total Files</th>
                  <th style="width: 40px">Check</th>
                </tr>
                <?php
                      

                while($row = mysqli_fetch_object($result)) {
                    
                    
                    $kdmknya= $row->kode_matkul;
                    $bnyk = mysqli_query($conn,"SELECT count(kode_matkul) as total from upload_materi where kode_matkul='$kdmknya'");
                    $value = mysqli_fetch_assoc($bnyk);
                    $num_rows = $value["total"];
                    ?>
                        <tr>
                        <td><?php echo $row->kode_matkul?></td>
                        <td><?php echo $row->nama_matkul?></td>
                        <td>
                            <div class="progress progress-xs progress-striped active">
                            <div class="progress-bar progress-bar-info" style="width: <?php echo $num_rows;?>%"></div>
                            </div>
                        </td>
                        <td><button type="button"  name="View" value="View"  id="<?php echo $row->kode_matkul;?>" class="btn btn-default view_files">Check Files</button></td>
                        
                        </tr>
                    <?php
                }
                ?>

              </table>
            </div>
            <!-- /.box-body -->
        <?php
        
        
      } else {
          echo "<h3>Jadwal Tidak Tersedia</h3>";
      }
       ?>     
        
</div>
      
 
    </section>
    <!-- /.content -->


          </div>
          <!-- /.box -->
          </section>




 <!-- modal  -->

  <!-- Files Modals -->
  <div class="modal modal-files fade" id="modal-files">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Tugas Files&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_files">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->

<script>
$(document).ready(function(){
    $('.view_files').click(function(){
        var kode_matkul = $(this).attr("id");

        $.ajax({
            url:"fileTugas.php",
            method: "post",
            data: {kode_matkul:kode_matkul},
            success:function(data){
                $('#detail_files').html(data);
                $('#modal-files').modal("show");
            }

        });

        
    });
});
</script>