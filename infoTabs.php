 
 <!-- Content Header (Page header) -->
 <section class="content-header">
      <h1>
        Selamat Datang
        <small><b>di Laboratorium Dasar</b></small>
        
        <?php
        if(isset($_SESSION['use'])) {
          $nmMhs = $_SESSION['use'];

          $cekPort = "SELECT * FROM mhs where nim='$nmMhs'";
            $hasilnya = $conn->query($cekPort);
            while($isi = $hasilnya->fetch_assoc()) {
              $stats_mhs2 =$isi["status_mhs"];
            }

        }
          
        ?>
      </h1>
      <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Layout</a></li>
        <li class="active">Top Navigation</li>
      </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
    <div>
    <?php include 'tabs.php'; 
    
    if(isset($_SESSION['use'])) {
      $nim_log = $_SESSION['use'];
    
      $cek = "SELECT * FROM mhs where nim='$nim_log'";
      $hasil = $conn->query($cek);
      while($isi = $hasil->fetch_assoc()) {
        $stats_mhs =$isi["status_mhs"];
      }
    } 

    
    ?>
      

    </div>
      
    <h3>Informasi!</h3>
    <?php

    

    $sql = "SELECT * FROM informasi";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
          $kdmat = $row['kode_matkul'];
          $nmnya= $row['nim'];
          ?>
          
                <?php
                $www = "SELECT * FROM matkul where kode_matkul='$kdmat'";
                $tew = $conn->query($www);
                
                if ($tew->num_rows > 0) {
                  // output data of each row
                  while($rw = $tew->fetch_assoc()) {
                      $nm_mtkul = $rw["nama_matkul"];  
                  }
                } else {
                  echo "<h3>Data tidak ditemukan</h3>";
                }


                $sq = "SELECT * FROM mhs where nim='$nmnya'";
                $wd = $conn->query($sq);
                
                if ($wd->num_rows > 0) {
                  // output data of each row
                  while($rww = $wd->fetch_assoc()) {
                      $nm_mhhs = $rww["nama_mhs"];
                  }
                } else {
                  echo "<h3>Data tidak ditemukan</h3>";
                }

                ?>
          
          <div class="box box-solid">
            <div class="box-header with-border">
              <i class="fa fa-warning"></i>

              <h3 class="box-title"><?php echo $row['judul_info']; ?>
              <small><?php echo $row['tgl_information']; ?></small>
              </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <blockquote>
                <p><?php echo $row['info']; ?></p>
                <small><?php echo $nm_mtkul; ?> <cite title="Source Title"><?php echo ". Diupload oleh-".$nm_mhhs; ?></cite></small>
                <?php
                if(isset($_SESSION['use'])) {
                  if($stats_mhs=="Asisten"){
                    ?>
                    <button class="btn btn-default btn-flat hapus_informasi pull-right" id="<?php echo $row['tgl_information'];?>">Hapus</button>
                    <?php
                  }
                }
                
                ?>
              </blockquote>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          <?php  
        }
    } else {
        echo "<h3>Tidak ada informasi</h3>";
    }

    ?>
      
    </section>
    <!-- /.content -->




    <script>
    $(function () {
      $('.hapus_informasi').click(function(){
        var hapusInfo = $(this).attr("id");
        
        $.ajax({
            url:"hapusdsn.php",
            method: "post",
            data: {hapusInfo:hapusInfo},
            success:function(data){
                $('#detail_hpsinfo').html(data);
                $('#modal-hpsinfo').modal("show");
            }

        });
    })
    })
    </script>


<div class="modal modal-hpsinfo fade" id="modal-hpsinfo">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Hapus Info&hellip;</h4>
                                        </div>
                                        <div class="modal-body" id="detail_hpsinfo">
                                            
  
                                        </div>

                                        
                                        </div>
                                        
                                    </div>
                                    
                                    </div>
                                   