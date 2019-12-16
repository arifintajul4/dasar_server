
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


if(isset($_POST['inputPoin']))   // it checks whether the user clicked login button or not 
{
      $nimPO = $_POST['inputPONIM'];
      $kdMKPO = $_POST['tmbhInfoNama'];
      $kelasPO = $_POST['inputPOKelas'];    
      $POKe = $_POST['inputPOKe'];    
      $nilaiPO = $_POST['inputPO'];
      if(isset($_SESSION['use'])){

        $qcek = "SELECT * FROM mhs where nim='".$_SESSION['use']."'";
                  $result = $conn->query($qcek);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $stats = $row["status_mhs"];  
                    }
                    
                    if($stats == "Asisten"){
                        
                        if($nimPO==""||$kdMKPO==""||$kelasPO==""||$POKe==""||$nilaiPO==""){
                            echo "<script> gagalDaftar(); </script>";
                          }else{
                            $result = mysqli_query($conn,"INSERT INTO mhs_detail(nim,kode_matkul,kelas_mhs,lapKe,nilai,jenis,tgl_input,penginput) VALUES
                            ('".$nimPO."','".$kdMKPO."','".$kelasPO."','".$POKe."','".$nilaiPO."','poin','".date("Y-m-d/hms")."','".$_SESSION['use']."')");
                            if($result){
                              // echo "<script> gagalDaftar(); </script>";
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
              <h3 class="box-title">Input Poin Puls!</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post" id="form_poin">
              <div class="box-body">


                <div class="form-group">
                  <label for="inputPONIM" class="col-sm-2 control-label">NIM</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPONIM" name="inputPONIM" placeholder="201x31xxx">
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
                  <label for="inputPOKelas" class="col-sm-2 control-label">Kelas</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPOKelas" name="inputPOKelas" placeholder="Masukkan Kelas">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputPOKe" class="col-sm-2 control-label">Poin ke-</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPOKe" name="inputPOKe" placeholder="Poin Ke-">
                  </div>
                </div>

                <div class="form-group">
                  <label for="inputPO" class="col-sm-2 control-label">Poin</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPO" name="inputPO" placeholder="Besar Poin">
                  </div>
                </div>
                

                
              <!-- /.box-body -->
              
              <!-- /.box-footer -->



                <div class="form-group">
                  <label for="inputPoin" class="col-sm-2 control-label">  </label>

                  <div class="col-sm-10">
                     <div class="box-footer">
                     <input type="hidden" name="inputPoin" value="poin">
                     
                <button type="button" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="inputPoin" >Input</button>
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
                                <h3 class="box-title">Data Poin</h3>
                            </div>
                            
                                <!-- /.box-header -->
                                <div class="box-body">
                                <button class="btn btn-default btn-flat hapus_semua_poin" id="poin">Bersihkan semua data</button>
                                    <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>NIM</th>
                                        <th>Kode Matakuliah</th>
                                        <th>Kelas</th>
                                        <th>Poin ke-</th>
                                        <th>Poin</th>
                                        <th>Tanggal Input</th>
                                        <th>Edit</th>
                                        <th>Hapus</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <?php
                                    
                                    $sql = "SELECT * FROM mhs_detail where jenis='poin'";
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
                                                <td><button class="btn btn-default btn-flat edit_poin" id="<?php echo $row["tgl_input"];?>">Edit</button></td>
                                                <td><button class="btn btn-default btn-flat hapus_poin" id="<?php echo $row["tgl_input"];?>">Hapus</button></td>
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
                                        <th>Kode Matakuliah</th>
                                        <th>Kelas</th>
                                        <th>Poin ke-</th>
                                        <th>Poin</th>
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
    $("#form_poin").submit(function(e){
      e.preventDefault();
      
      $.ajax({
            url:"inpt_poin.php",
            method: "post",
            data: $(this).serializeObject(),
            success:function(data){
                $('#detail_hasil').html(data);
                $('#modal-hasil').modal("show");
            }

        });
    });

$('.edit_poin').click(function(){
        var tgl_input = $(this).attr("id");
        
        $.ajax({
            url:"editdsn.php",
            method: "post",
            data: {tgl_input:tgl_input},
            success:function(data){
                $('#detail_poinEdt').html(data);
                $('#modal-poinEdt').modal("show");
            }

        });
    });


    $('.hapus_semua_poin').click(function(){
        var poin = $(this).attr("id");
        
        $.ajax({
            url:"hapusdsn.php",
            method: "post",
            data: {poin:poin},
            success:function(data){
                $('#detail_poinEdt').html(data);
                $('#modal-poinEdt').modal("show");
            }

        });
    })

    $('.hapus_poin').click(function(){
        var tgl_input = $(this).attr("id");
        
        $.ajax({
            url:"hapusdsn.php",
            method: "post",
            data: {tgl_input:tgl_input},
            success:function(data){
                $('#detail_poinEdt').html(data);
                $('#modal-poinEdt').modal("show");
            }

        });
    })

  })
</script>


  <!-- Files Modals -->
  <div class="modal modal-poinEdt fade" id="modal-poinEdt">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Edit Poin&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_poinEdt">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->


  <!-- Files Modals -->
  <div class="modal modal-hasil fade" id="modal-hasil">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Hasil&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_hasil">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->