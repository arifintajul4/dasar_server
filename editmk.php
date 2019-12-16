<?php
include 'connection.php';
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


if(isset($_POST["kode_matkul"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM matkul where kode_matkul='".$_POST["kode_matkul"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmMK = $row["nama_matkul"];
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
                              <div class="form-group">
                                <label for="editMkKode" class="col-sm-2 control-label">Kode Matakuliah</label>
              
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="editMkKode" name="editMkKode" placeholder="Kode Matakuliah" value="'.$_POST["kode_matkul"].'">
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="editMkNama" class="col-sm-2 control-label">Nama Matakuliah</label>
              
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="editMkNama" name="editMkNama" placeholder="Nama Matakuliah" value="'.$nmMK.'">
                                </div>
                              </div>
              
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                              <button type="submit" class="btn btn-info pull-right" id="editMK" name="editMK">Simpan</button>
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
                 <form class="form-horizontal" action="" method="post" id="form_laporan">
                 <div class="box-body">
   
   
                   <div class="form-group">
                     <label for="edtLapNIM" class="col-sm-2 control-label">NIM</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtLapNIM" name="edtLapNIM" placeholder="201x31xxx" value='.$nimPOIN.'>
                     </div>
                   </div>
   
                   <div class="form-group">
                     <label for="tmbhInfoNama" class="col-sm-2 control-label">Nama Matakuliah</label>
                     <div class="col-sm-10">
                       <select class="form-control select2" style="width: 100%;" id="tmbhInfoNama" name="tmbhInfoNama">
                         '.$pilihmk.'
                       </select>
                     </div>
                   </div>
   
                   <div class="form-group">
                     <label for="edtLapKelas" class="col-sm-2 control-label">Kelas</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtLapKelas" name="edtLapKelas" placeholder="Masukkan Kelas" value='.$klsPOIN.'>
                     </div>
                   </div>
   
                   <div class="form-group">
                     <label for="edtLapKe" class="col-sm-2 control-label">Laporan</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtLapKe" name="edtLapKe" placeholder="Laporan Ke-" value='.$lapKePOIN.'>
                     </div>
                   </div>
   
                   <div class="form-group">
                     <label for="edtLapNilai" class="col-sm-2 control-label">Nilai</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtLapNilai" name="edtLapNilai" placeholder="Nilai" value='.$nilaiPOIN.'>
                     </div>
                   </div>
                   
   
                   
                 <!-- /.box-body -->
                 
                 <!-- /.box-footer -->
   
   
   
                   <div class="form-group">
                     <label for="inputLaporan" class="col-sm-2 control-label">  </label>
   
                     <div class="col-sm-10">
                        <div class="box-footer">
                   <button type="submit" class="btn btn-info pull-right" id="edtLaporan" name="edtLaporan" value="'.$_POST["tgl_input"].'">Simpan</button>
                 </div>
             <!-- /.box -->
                     </div>
                   </div>
   
   
                  
   
                 </div>
   
   
               </form>
                 </div>
        </div>
      </div>  
                 ';
                         
                          

  echo $output;
}



?>