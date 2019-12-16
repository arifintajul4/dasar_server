<?php
if(isset($_POST["nidn"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM dosen where nidn='".$_POST["nidn"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmDsn = $row["nama_dosen"];
    }
        
        $output .='
        <div class="register-box-body">
	        <div class="box">
              <div class="box-header">
                  <h3 class="box-title">'.$nmDsn.'</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                            <form class="form-horizontal" action="" method="post">
                            <div class="box-body">
                              
                                <h4>Apakah anda yakin ingin menghapus '.$nmDsn.'?</h4>
              
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                              <button type="submit" class="btn btn-danger pull-right" id="hapusDsn" value="'.$_POST["nidn"].'" name="hapusDsn">Hapus</button>
                            </div>
                            <!-- /.box-footer -->
                          </form>
                   ';
                           
                            

    echo $output;
}


if(isset($_POST["tugas"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM mhs_detail where jenis='".$_POST["tugas"]."'";
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
                  <h3 class="box-title">Hapus semua data Tugas</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin menghapus semua data Tugas ?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusTugasSemua" value="'.$_POST["tugas"].'" name="hapusTugasSemua">Hapus Semua</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}

if(isset($_POST["laporan"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM mhs_detail where jenis='".$_POST["laporan"]."'";
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
                  <h3 class="box-title">Hapus semua data Laporan</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin menghapus semua data Laporan ?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusLaporanSemua" value="'.$_POST["laporan"].'" name="hapusLaporanSemua">Hapus Semua</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}




if(isset($_POST["hapusInfo"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM informasi where tgl_information='".$_POST["hapusInfo"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $tgl = $row["tgl_information"];
        
    }
        
        $output .='
        <div class="register-box-body">
	        <div class="box">
              <div class="box-header">
                  <h3 class="box-title">Hapus Informasi</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin informasi ini ?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusInfonyaboss" value="'.$_POST["hapusInfo"].'" name="hapusInfonyaboss">Hapus Info</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}


if(isset($_POST["pretest"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM mhs_detail where jenis='".$_POST["pretest"]."'";
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
                  <h3 class="box-title">Hapus semua data Pretest</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin menghapus semua data Pretest ?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusPretestSemua" value="'.$_POST["pretest"].'" name="hapusPretestSemua">Hapus Semua</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}




if(isset($_POST["hapus_semua_dsn"])){
    $output = '';
        
        $output .='
        <div class="register-box-body">
	        <div class="box">
              <div class="box-header">
                  <h3 class="box-title">Hapus semua data Dosen</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin menghapus semua data Dosen?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusDosenSemua" value="'.$_POST["hapus_semua_dsn"].'" name="hapusDosenSemua">Hapus Semua</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}

if(isset($_POST["poin"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM mhs_detail where jenis='".$_POST["poin"]."'";
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
                  <h3 class="box-title">Hapus semua data Poin</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                   <form class="form-horizontal" action="" method="post">
                   <div class="box-body">
                     
                       <h4>Apakah anda yakin ingin menghapus semua data Poin ?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusPoinSemua" value="'.$_POST["poin"].'" name="hapusPoinSemua">Hapus Semua</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
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
                     <button type="submit" class="btn btn-danger pull-right" id="hapusPoin" value="'.$_POST["tgl_input"].'" name="hapusPoin">Hapus</button>
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