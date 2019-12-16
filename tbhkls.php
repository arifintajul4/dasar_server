<?php include 'connection.php'; ?>

<?php
$mk = "SELECT kode_matkul, nama_matkul FROM matkul";
$result = $conn->query($mk);

if ($result->num_rows > 0) {
    $pilihmk = '<option>Pilih Matakuliah...</option>';
    while($row = $result->fetch_assoc()) {
        $pilihmk .= '<option value = "'.$row['kode_matkul'].'">'.$row['nama_matkul'].'</option>';
    }
} else {
    echo "0 results";
}


$ds = "SELECT nidn, nama_dosen FROM dosen";
$result = $conn->query($ds);

if ($result->num_rows > 0) {
    $pilihds = '<option>Pilih Dosen...</option>';
    while($row = $result->fetch_assoc()) {
        $pilihds .= '<option value = "'.$row['nidn'].'" >'.$row['nama_dosen'].'</option>';
    }
} else {
    echo "0 results";
}

?>

<section class="content">

<!-- Horizontal Form -->
<div class="box box-info">

<?php
          include 'connection.php';
          $sql = "SELECT * FROM kode_nama_kelas";
          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
              // output data of each row
              ?>
              <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                  
                  <tr>
                    <th>Kode / Nama Matakuliah</th>
                    <th>Kelas</th>
                    <th>Hari</th>
                    <th>Jam</th>
                    <th>NIDN</th>
                    <th>Edit</th>
                    <th>Hapus</th>
                  </tr>

                  <tbody>
                    <?php
                      while($row = $result->fetch_assoc()) {
                        echo "<tr><th>".$row["kode_matkul"]." - ".$row["nama_matkul"]."</th><td>".$row["kelas_matkul"]."</td><td>".$row["hari_matkul"].
                        "</td><td>".$row["jam_matkul"].
                        "</td><td>".$row["nidn"].
                        "</td><td><button id='".$row["kode_matkul"].$row["kelas_matkul"].$row["nidn"]."' class='btn btn-default edit_kls'>"."Edit".
                        "</button></td><td><button id='".$row["kode_matkul"]."' kls='".$row["kelas_matkul"]."' class='btn btn-default hapus_kls'>"."Hapus"."</button></td></tr>";
                    }
                    
                } else {
                    echo "<h3>Jadwal tidak tersedia</h3>";
                }
                    ?>
                  </tbody>
                </table>
              </div>

            <div class="box-header with-border">
              <h3 class="box-title">Tambahkan Kelas!</h3>
              <button class="btn btn-default btn-flat hapus_semua_kelas pull-right" id="hapus_semua_kls" >Bersihkan Semua Kelas</button>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="tambahklsMkKode" class="col-sm-2 control-label">Nama Matakuliah</label>
                  <div class="col-sm-10">
                    <select class="form-control select2" style="width: 100%;" name="tambahklsMkKode">
                      <?php echo $pilihmk ?>
                    </select>
                  </div>
                </div>

                 <div class="form-group">
                  <label for="tambahklsKelas" class="col-sm-2 control-label">Kelas</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahklsKelas" name="tambahklsKelas" placeholder="Kelas">
                  </div>
                </div>

                <div class="form-group">
                  <label for="tambahklsNIDN" class="col-sm-2 control-label">Nama Dosen</label>
                  <div class="col-sm-10">
                    <select class="form-control select2" style="width: 100%;" name="tambahklsNIDN">
                      <?php echo $pilihds ?>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label for="tambahklsHari" class="col-sm-2 control-label">Hari</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahklsHari" name="tambahklsHari" placeholder="Hari Perkuliahan">
                  </div>
                </div>
              

                <div class="form-group">
                  <label for="tambahklsJam" class="col-sm-2 control-label">Jam</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="tambahklsJam" name="tambahklsJam" placeholder="Contoh : 08:00-09:40">
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button>
                <button type="submit" class="btn btn-info pull-right" id="tambahKlsSimpan" name="tambahKlsSimpan">Simpan</button>
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
                                            <h4 class="modal-title">Edit Kelas&hellip;</h4>
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
  $('.edit_kls').click(function(){
        var kode_matkul = $(this).attr("id");
        
        $.ajax({
            url:"editkls.php",
            method: "post",
            data: {kode_matkul:kode_matkul},
            success:function(data){
                $('#detail_mk').html(data);
                $('#modal-mk').modal("show");
            }

        });
    });

    $('.hapus_semua_kelas').click(function(){
        var hapus_semua_kls = $(this).attr("id");
        
        $.ajax({
            url:"hapuskls.php",
            method: "post",
            data: {hapus_semua_kls:hapus_semua_kls},
            success:function(data){
                $('#detail_mk').html(data);
                $('#modal-mk').modal("show");
            }

        });
    });

     $('.hapus_kls').click(function(){
        var kode_matkul = $(this).attr("id");
       
        
        $.ajax({
            url:"hapuskls.php",
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