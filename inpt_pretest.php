
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


if(isset($_POST['inputPretest']))   // it checks whether the user clicked login button or not 
{
      $nimPre = $_POST['inputPreNIM'];
      $kdMKPre = $_POST['tmbhInfoNama'];
      $kelasPre = $_POST['inputPreKelas'];    
      $PreKe = $_POST['inputPreKe'];    
      $nilaiPre = $_POST['inputPreNilai'];
      
      
      if(isset($_SESSION['use'])){

        $qcek = "SELECT * FROM mhs where nim='".$_SESSION['use']."'";
                  $result = $conn->query($qcek);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $stats = $row["status_mhs"];  
                    }
                    
                    if($stats == "Asisten"){
                        
                        if($nimPre==""||$kdMKPre==""||$kelasPre==""||$PreKe==""||$nilaiPre==""){
                            echo "<script> gagalDaftar(); </script>";
                          }else{
                            $result = mysqli_query($conn,"INSERT INTO mhs_detail(nim,kode_matkul,kelas_mhs,lapKe,nilai,jenis,tgl_input,penginput) VALUES
                            ('".$nimPre."','".$kdMKPre."','".$kelasPre."','".$PreKe."','".$nilaiPre."','Pretest','".date("Y-m-d/hms")."', '".$_SESSION['use']."')");
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
              <h3 class="box-title">Input Nilai Pretest!</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post" id="form_pretest">
              <div class="box-body">


                <div class="form-group">
                  <label for="inputPreNIM" class="col-sm-2 control-label">NIM</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPreNIM" name="inputPreNIM" placeholder="201x31xxx">
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
                  <label for="inputPreKelas" class="col-sm-2 control-label">Kelas</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPreKelas" name="inputPreKelas" placeholder="Masukkan Kelas">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputPreKe" class="col-sm-2 control-label">Pretest</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPreKe" name="inputPreKe" placeholder="Pretest Ke-">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputPreNilai" class="col-sm-2 control-label">Nilai</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPreNilai" name="inputPreNilai" placeholder="Nilai">
                  </div>
                </div>
                

                
              <!-- /.box-body -->
              
              <!-- /.box-footer -->



                <div class="form-group">
                  <label for="inputPretest" class="col-sm-2 control-label">  </label>

                  <div class="col-sm-10">
                     <div class="box-footer">
                     <input type="hidden" name="inputPretest" value="pretest">
                <button type="button" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="inputPretest">Input</button>
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
                                <h3 class="box-title">Data Pretest</h3>
                            </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                <button class="btn btn-default btn-flat hapus_semua_pretest" id="pretest">Bersihkan semua data</button>
                                    <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>NIM</th>
                                        <th>Kode Matakuliah</th>
                                        <th>Kelas</th>
                                        <th>Pretest ke-</th>
                                        <th>Nilai</th>
                                        <th>Tanggal Input</th>
                                        <th>Edit</th>
                                        <th>Hapus</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <?php
                                    
                                    $sql = "SELECT * FROM mhs_detail where jenis='pretest'";
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
                                                <td><button class="btn btn-default btn-flat edit_pretest" id="<?php echo $row["tgl_input"];?>">Edit</button></td>
                                                <td><button class="btn btn-default btn-flat hapus_pretest" id="<?php echo $row["tgl_input"];?>">Hapus</button></td>
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
                                        <th>Pretest ke-</th>
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
$("#form_pretest").submit(function(e){
      e.preventDefault();
      
      $.ajax({
            url:"inpt_pretest.php",
            method: "post",
            data: $(this).serializeObject(),
            success:function(data){
                $('#detail_pretest').html(data);
                $('#modal-pretest').modal("show");
            }

        });
    });

$('.edit_pretest').click(function(){
        var tgl_input = $(this).attr("id");
        
        $.ajax({
            url:"editkls.php",
            method: "post",
            data: {tgl_input:tgl_input},
            success:function(data){
                $('#detail_PretestEdt').html(data);
                $('#modal-pretestEdt').modal("show");
            }

        });
    });

    $('.hapus_semua_pretest').click(function(){
        var pretest = $(this).attr("id");
        
        $.ajax({
            url:"hapusdsn.php",
            method: "post",
            data: {pretest:pretest},
            success:function(data){
                $('#detail_PretestEdt').html(data);
                $('#modal-pretestEdt').modal("show");
            }

        });
    })

    $('.hapus_pretest').click(function(){
        var tgl_input = $(this).attr("id");
        
        $.ajax({
            url:"hapuskls.php",
            method: "post",
            data: {tgl_input:tgl_input},
            success:function(data){
                $('#detail_PretestEdt').html(data);
                $('#modal-pretestEdt').modal("show");
            }

        });
    })


  })
</script>


  <!-- Files Modals -->
  <div class="modal modal-pretestEdt fade" id="modal-pretestEdt">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Edit Poin&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_PretestEdt">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->

  <!-- Files Modals -->
  <div class="modal modal-pretest fade" id="modal-pretest">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Hasil&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_pretest">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->