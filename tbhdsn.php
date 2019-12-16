<section class="content">

<!-- Horizontal Form -->
<div class="box box-info">

          <?php
          include 'connection.php';
          $sql = "SELECT * FROM dosen";
          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
              // output data of each row
              ?>
              <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                  
                  <tr>
                    <th>NIDN</th>
                    <th>Nama Dosen</th>
                    <th>Keterangan</th>
                    <th>Edit</th>
                    <th>Hapus</th>
                  </tr>

                  <tbody>
                    <?php
                      while($row = $result->fetch_assoc()) {
                        echo "<tr><th>".$row["nidn"]."</th><td>".$row["nama_dosen"].
                        "</td><td>".$row["ket_dosen"].
                        "</td><td><button id='".$row["nidn"]."' class='btn btn-block btn-default btn-flat edit_dsn'>"."Edit".
                        "</button></td><td><button id='".$row["nidn"]."' class='btn btn-block btn-default btn-flat hapus_dsn'>"."Hapus"."</button></td></tr>";;
                    }
                    
                } else {
                    echo "<h3>Jadwal tidak tersedia</h3>";
                }
                    ?>
                  </tbody>
                </table>
              </div>

            <div class="box-header with-border">
              <h3 class="box-title">Tambahkan dosen!</h3>
              <button class="btn btn-default btn-flat hapus_semua_dosen pull-right" id="hapus_semua_dsn" >Bersihkan Semua Dosen</button>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="tambahDosenNIDN" class="col-sm-2 control-label">NIDN</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahDosenNIDN" name="tambahDosenNIDN" placeholder="NIDN">
                  </div>
                </div>
                <div class="form-group">
                  <label for="tambahDosenNama" class="col-sm-2 control-label">Nama</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahDosenNama" name="tambahDosenNama" placeholder="Nama Dosen">
                  </div>
                </div>

                <div class="form-group">
                  <label for="tambahDosenKet" class="col-sm-2 control-label">Keterangan</label>

                  <div class="col-sm-10">
                  <textarea class="textarea" placeholder="Tulis keterangan" name="tambahDosenKet"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>

                  </div>
                </div>

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="tambahDosenSimpan" name="tambahDosenSimpan">Simpan</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
          <!-- /.box -->
          </section>


          <!-- Files Modals -->
<div class="modal modal-dsn fade" id="modal-dsn">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Edit Dosen&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_dsn">
                                            
  
                                        </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->

<script>
$(document).ready(function(){
  $('.edit_dsn').click(function(){
        var nidn = $(this).attr("id");
        
        $.ajax({
            url:"editdsn.php",
            method: "post",
            data: {nidn:nidn},
            success:function(data){
                $('#detail_dsn').html(data);
                $('#modal-dsn').modal("show");
            }

        });
    });


    $('.hapus_semua_dosen').click(function(){
        var hapus_semua_dsn = $(this).attr("id");
        
        $.ajax({
            url:"hapusdsn.php",
            method: "post",
            data: {hapus_semua_dsn:hapus_semua_dsn},
            success:function(data){
                $('#detail_dsn').html(data);
                $('#modal-dsn').modal("show");
            }

        });
    });

     $('.hapus_dsn').click(function(){
        var nidn = $(this).attr("id");
        
        $.ajax({
            url:"hapusdsn.php",
            method: "post",
            data: {nidn:nidn},
            success:function(data){
                $('#detail_dsn').html(data);
                $('#modal-dsn').modal("show");
            }

        });
    });

});

</script>                                    