<section class="content">

<!-- Horizontal Form -->
<div class="box box-info">

<?php
          include 'connection.php';
          $sql = "SELECT * FROM matkul";
          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
              // output data of each row
              ?>
              <div class="box-body">
                <table id="example1" class="table table-bordered table-striped" id="tbl_mk">
                  
                  <tr>
                    <th>Kode Matakuliah</th>
                    <th>Nama Matakuliah</th>
                    <th>Edit</th>
                    <th>Hapus</th>
                  </tr>

                  <tbody>
                    <?php
                      while($row = $result->fetch_assoc()) {
                        echo "<tr><th>".$row["kode_matkul"]."</th><td>".$row["nama_matkul"].
                        "</td><td><button id='".$row["kode_matkul"]."' class='btn btn-block btn-info btn-flat edit_mk'>"."Edit".
                        "</button></td><td><button id='".$row["kode_matkul"]."' class='btn btn-block btn-danger btn-flat hapus_mk'>"."Hapus"."</button></td></tr>";
                        
                    }
                    
                } else {
                    echo "<h3>Jadwal tidak tersedia</h3>";
                }
                    ?>
                  </tbody>
                </table>
              </div>

            <div class="box-header with-border">
              <h3 class="box-title">Tambahkan Matakuliah!</h3>
               <button class="btn btn-default btn-flat hapus_semua_matkul pull-right" id="hapus_semua_mk" >Bersihkan Semua Matakuliah</button>
            </div>
            
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post">
              <div class="box-body">
              
                <div class="form-group">
                  <label for="tambahMkKode" class="col-sm-2 control-label">Kode Matakuliah</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahMkKode" name="tambahMkKode" placeholder="Kode Matakuliah">
                  </div>
                </div>
                <div class="form-group">
                  <label for="tambahMkNama" class="col-sm-2 control-label">Nama Matakuliah</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahMkNama" name="tambahMkNama" placeholder="Nama Matakuliah">
                  </div>
                </div>

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="tambahMKSimpan" name="tambahMKSimpan">Simpan</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
          <!-- /.box -->
          </section>


<!-- Files Modals -->
<div class="modal modal-mk fade" id="modal-mk">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Edit Matakuliah&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_mk">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->


<script>

$(document).ready(function(){
    $('.edit_mk').click(function(){
        var kode_matkul = $(this).attr("id");

        $.ajax({
            url:"editmk.php",
            method: "post",
            data: {kode_matkul:kode_matkul},
            success:function(data){
                $('#detail_mk').html(data);
                $('#modal-mk').modal("show");
            }

        });
    });


$('.hapus_semua_matkul').click(function(){
        var hapus_semua_mk = $(this).attr("id");
        
        $.ajax({
            url:"hapusMK.php",
            method: "post",
            data: {hapus_semua_mk:hapus_semua_mk},
            success:function(data){
                $('#detail_mk').html(data);
                $('#modal-mk').modal("show");
            }

        });
    });


    $('.hapus_mk').click(function(){
        var kode_matkul = $(this).attr("id");

        $.ajax({
            url:"hapusMK.php",
            method: "post",
            data: {kode_matkul:kode_matkul},
            success:function(data){
                $('#detail_mk').html(data);
                $('#modal-mk').modal("show");
            }

        });
    });

});

</script> 

