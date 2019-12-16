
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


if(isset($_POST['inputLaporan']))   // it checks whether the user clicked login button or not 
{
      $nimLap = $_POST['inputLapNIM'];
      $kdMKLap = $_POST['tmbhInfoNama'];
      $kelasLap = $_POST['inputLapKelas'];    
      $LapKe = $_POST['inputLapKe'];    
      $nilaiLap = $_POST['inputLapNilai'];
      
      
      if(isset($_SESSION['use'])){

        $qcek = "SELECT * FROM mhs where nim='".$_SESSION['use']."'";
                  $result = $conn->query($qcek);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $stats = $row["status_mhs"];  
                    }
                    
                    if($stats == "Asisten"){
                        
                        if($nimLap==""||$kdMKLap==""||$kelasLap==""||$LapKe==""||$nilaiLap==""){
                            echo "<script> gagalDaftar(); </script>";
                          }else{
                            $result = mysqli_query($conn,"INSERT INTO mhs_detail(nim,kode_matkul,kelas_mhs,lapKe,nilai,jenis,tgl_input,penginput) VALUES
                            ('".$nimLap."','".$kdMKLap."','".$kelasLap."','".$LapKe."','".$nilaiLap."','Laporan','".date("Y-m-d/hms")."' ,'".$_SESSION['use']."')");
                            if($result){
                              echo "success";
                            }else{
                              // echo "<script> berhasilDaftar(); </script>";
                              echo "fail";
                            }
                    
                            
                          }

                    }

                } 


      }



      

      exit;


}


?>


<section class="content">

<!-- Horizontal Form -->
<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Input Nilai Laporan!</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post" id="form_laporan">
              <div class="box-body">


                <div class="form-group">
                  <label for="inputLapNIM" class="col-sm-2 control-label">NIM</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputLapNIM" name="inputLapNIM" placeholder="201x31xxx">
                  </div>
                </div>

                <div class="form-group">
                  <label for="tmbhInfoNama" class="col-sm-2 control-label">Nama Matakuliah</label>
                  <div class="col-sm-10">
                    <select class="form-control select2" style="width: 100%;" id="tmbhInfoNama" name="tmbhInfoNama">
                      <?php echo $pilihmk ?>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputLapKelas" class="col-sm-2 control-label">Kelas</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputLapKelas" name="inputLapKelas" placeholder="Masukkan Kelas">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputLapKe" class="col-sm-2 control-label">Laporan</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputLapKe" name="inputLapKe" placeholder="Laporan Ke-">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputLapNilai" class="col-sm-2 control-label">Nilai</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputLapNilai" name="inputLapNilai" placeholder="Nilai">
                  </div>
                </div>
                

                
              <!-- /.box-body -->
              
              <!-- /.box-footer -->



                <div class="form-group">
                  <label for="inputLaporan" class="col-sm-2 control-label">  </label>

                  <div class="col-sm-10">
                     <div class="box-footer">
                     <input type="hidden" name="inputLaporan" value="laporan">
                <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="inputLaporan">Input</button>
              </div>
          <!-- /.box -->
                  </div>
                </div>


               

              </div>


            </form>
          </div>
          <!-- /.box -->

        
<div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Data Laporan</h3>
                            </div>
                                <!-- /.box-header -->
                                <div class="box-body">

                             <button class="btn btn-default btn-flat hapus_semua_laporan" id="laporan">Bersihkan semua data</button>

                                    <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>NIM</th>
                                        <th>Kode Matakuliah</th>
                                        <th>Kelas</th>
                                        <th>Laporan ke-</th>
                                        <th>Nilai</th>
                                        <th>Tanggal Input</th>
                                        <th>Edit</th>
                                        <th>Hapus</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <?php
                                    
                                    $sql = "SELECT * FROM mhs_detail where jenis='laporan'";
                                    $result = $conn->query($sql);
                                    if ($result->num_rows > 0) {
                                        while($row = $result->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td><?php echo $row['nim'];?></td>
                                                <td><?php echo $row['kode_matkul'];?></td>
                                                <td><?php echo $row['kelas_mhs'];?></td>
                                                <td><?php echo $row['lapKe'];?></td>
                                                <td><?php echo $row['nilai'];?></td>
                                                <td><?php echo $row['tgl_input'];?></td>
                                                <td><button class="btn btn-default btn-flat edit_laporan" id="<?php echo $row["tgl_input"];?>">Edit</button></td>
                                                <td><button class="btn btn-default btn-flat hapus_laporan" id="<?php echo $row["tgl_input"];?>">Hapus</button></td>
                                            </tr>
                                            <?php
                                        }
                                    }else{
                                        echo "<h3>Data Tidak Tersedia</h3>";  
                                    }
                                    ?>
                                    
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                    <th>NIM</th>
                                        <th>Matakuliah</th>
                                        <th>Kelas</th>
                                        <th>Laporan ke-</th>
                                        <th>Nilai</th>
                                        <th>Tanggal Input</th>
                                        <th>Edit</th>
                                        <th>Hapus</th>
                                    </tr>
                                    </tfoot>
                                    </table>
                                </div>
                                <!-- /.box-body -->
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

<!-- DataTables -->
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->

<script>

$.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };
    
  $(function () {
    $('#example1').DataTable({
      'paging'      : false,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : true
    })

// handle form untuk submit
$("#form_laporan").submit(function(e){
      e.preventDefault();
      $.ajax({
            url:"inpt_lap.php",
            method: "post",
            data: $(this).serializeObject(),
            success:function(data){
                $('#detail_lap').html(data);
                $('#modal-lap').modal("show");
            }

        });
    });


$('.edit_laporan').click(function(){
        var tgl_input = $(this).attr("id");
        
        $.ajax({
            url:"editmk.php",
            method: "post",
            data: {tgl_input:tgl_input},
            success:function(data){
                $('#detail_lapEdt').html(data);
                $('#modal-lapEdt').modal("show");
            }

        });
    });


$('.hapus_semua_laporan').click(function(){
        var laporan = $(this).attr("id");
        
        $.ajax({
            url:"hapusdsn.php",
            method: "post",
            data: {laporan:laporan},
            success:function(data){
                $('#detail_lapEdt').html(data);
                $('#modal-lapEdt').modal("show");
            }

        });
    })

    $('.hapus_laporan').click(function(){
        var tgl_input = $(this).attr("id");
        
        $.ajax({
            url:"hapusMK.php",
            method: "post",
            data: {tgl_input:tgl_input},
            success:function(data){
                $('#detail_lapEdt').html(data);
                $('#modal-lapEdt').modal("show");
            }

        });
    })


  })
</script>


<div class="modal modal-lapEdt fade" id="modal-lapEdt">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Edit&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_lapEdt">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->

<div class="modal modal-lap fade" id="modal-lap">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Hasil&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_lap">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->