
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


?>
 
 <!-- Content Header (Page header) -->

    <!-- Main content -->
    <section class="content">
    
    <!-- Horizontal Form -->
<div class="box box-info">


            <div class="box-header with-border">
              <h3 class="box-title">Kumpulan Materi!</h3>
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
                  <th style="width: 40px">Materi</th>
                </tr>
                <?php
                      

                while($row = mysqli_fetch_object($result)) {
                    
                    
                    $kdmknya= $row->kode_matkul;
                    $bnyk = mysqli_query($conn,"SELECT count(kode_matkul) as total from matkul where kode_matkul='$kdmknya'");
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
                        <td><button type="button"  name="View" value="View"  id="<?php echo $row->kode_matkul;?>" class="btn btn-default view_files">Lihat Files</button></td>
                        
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

  

 <!-- modal  -->

  <!-- Files Modals -->
  <div class="modal modal-files fade" id="modal-files">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Download Files&hellip;</h4>
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
            url:"fileMK.php",
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