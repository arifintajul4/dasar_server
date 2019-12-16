

<?php
include 'connection.php';








$ds = "SELECT nidn, nama_dosen FROM dosen";
$result = $conn->query($ds);

if ($result->num_rows > 0) {
    $pilihds = '<option>Pilih Dosen...</option>';
    while($row = $result->fetch_assoc()) {
        $pilihds .= '<option value = "'.$row['nidn'].'">'.$row['nama_dosen'].'</option>';
    }
} else {
    echo "0 results";
}




if(isset($_POST["nidn"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM dosen where nidn='".$_POST["nidn"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmDsn = $row["nama_dosen"];
        $ketDsn = $row["ket_dosen"];
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
                <div class="form-group">
                  <label for="editDosenNIDN" class="col-sm-2 control-label">NIDN</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="editDosenNIDN" name="editDosenNIDN" placeholder="NIDN" value='.$_POST["nidn"].'>
                  </div>
                </div>
                <div class="form-group">
                  <label for="editDosenNama" class="col-sm-2 control-label">Nama</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="editDosenNama" name="editDosenNama" placeholder="Nama Dosen" value="'.$nmDsn.'">
                  </div>
                </div>

                <div class="form-group">
                  <label for="editDosenKet" class="col-sm-2 control-label">Keterangan</label>

                  <div class="col-sm-10">
                  <textarea class="textarea" placeholder="Tulis keterangan" name="editDosenKet"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">'.$ketDsn.'</textarea>

                  </div>
                </div>

              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-info pull-right" id="editDosenSimpan" name="editDosenSimpan">Simpan</button>
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
        

    $mk = "SELECT kode_matkul, nama_matkul FROM matkul";
      $re = $conn->query($mk);

      if ($re->num_rows > 0) {
          $pilihmk = '<option>Pilih Matakuliah...</option>';
          while($rt = $re->fetch_assoc()) {
              if($rt['kode_matkul'] == $kdMkPOIN){
                $pilihmk .= '<option value = "'.$rt['kode_matkul'].'" selected="selected">'.$rt['nama_matkul'].'</option>';
              }else{
                $pilihmk .= '<option value = "'.$rt['kode_matkul'].'">'.$rt['nama_matkul'].'</option>';
              }
          }
      } else {
          echo "0 results";
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
     
     
                     <div class="form-group">
                       <label for="edtPONIM" class="col-sm-2 control-label">NIM</label>
     
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="edtPONIM" name="edtPONIM" placeholder="201x31xxx" value='.$nimPOIN.'>
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
                       <label for="edtPOKelas" class="col-sm-2 control-label">Kelas</label>
     
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="edtPOKelas" name="edtPOKelas" placeholder="Masukkan Kelas" value='.$klsPOIN.'>
                       </div>
                     </div>
     
                     <div class="form-group">
                       <label for="edtPOKe" class="col-sm-2 control-label">Poin ke-</label>
     
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="edtPOKe" name="edtPOKe" placeholder="Poin Ke-" value='.$lapKePOIN.'>
                       </div>
                     </div>
     
                     <div class="form-group">
                       <label for="edtPO" class="col-sm-2 control-label">Poin</label>
     
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="edtPO" name="edtPO" placeholder="Besar Poin" value='.$nilaiPOIN.'>
                       </div>
                     </div>
                     
     
                     
                   <!-- /.box-body -->
                   
                   <!-- /.box-footer -->
     
     
     
                     <div class="form-group">
                       <label for="edtPoin" class="col-sm-2 control-label">  </label>
     
                       <div class="col-sm-10">
                          <div class="box-footer">
                     <button type="submit" class="btn btn-info pull-right" id="edtPoin" name="edtPoin" value="'.$_POST["tgl_input"].'">Simpan</button>
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