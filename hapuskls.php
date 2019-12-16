<?php
if(isset($_POST["kode_matkul"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM kode_nama_kelas where kode_matkul='".$_POST["kode_matkul"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmMK = $row["nama_matkul"];
        $kelas = $row["kelas_matkul"];
    }
        
        $output .='
        <div class="register-box-body">
	        <div class="box">
              <div class="box-header">
                  <h3 class="box-title">'.$nmMK.'</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                            <form class="form-horizontal" action="" method="post">
                            <div class="box-body">
                              
                                <h4>Apakah anda yakin ingin menghapus '.$nmMK.'?</h4>
              
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                              <button type="submit" class="btn btn-danger pull-right" id="hapusKls" value="'.$_POST["kode_matkul"].$kelas.'" name="hapusKls">Hapus</button>
                            </div>
                            <!-- /.box-footer -->
                          </form>
                   ';
                           
                            

    echo $output;
}



if(isset($_POST["tgl_input"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM mhs_detail where tgl_input='".$_POST["tgl_input"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nimPOIN = $row["nim"];
        $kdMkPOIN = $row["kode_matkul"];
        $klsPOIN = $row["kelas_mhs"];
        $lapKePOIN = $row["lapKe"];
        $nilaiPOIN = $row["nilai"];
        $jenisPOIN = $row["jenis"];
    }
        
        $output .='
        <div class="register-box-body">
	        <div class="box">
              <div class="box-header">
                  <h3 class="box-title">'.$nimPOIN.'</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin menghapus NIM : '.$nimPOIN.' - Kode Matkul '.$kdMkPOIN.' - Laporan ke-'.$lapKePOIN.' - Nilai : '.$nilaiPOIN.'?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusPretest" value="'.$_POST["tgl_input"].'" name="hapusPretest">Hapus</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}




if(isset($_POST["hapus_semua_kls"])){
    $output = '';
        
        $output .='
        <div class="register-box-body">
	        <div class="box">
              <div class="box-header">
                  <h3 class="box-title">Hapus semua Kelas</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin menghapus semua kelas?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusSemuaKelas" value="'.$_POST["hapus_semua_kls"].'" name="hapusSemuaKelas">Hapus</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}

?>