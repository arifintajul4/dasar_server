

<?php
include 'connection.php';




if(isset($_POST["kode_matkul"])){
    
    $kodeMat = substr($_POST["kode_matkul"],0,9);
    $kls = substr($_POST["kode_matkul"],9,1);
    $dn = substr($_POST["kode_matkul"],10,9);
    

    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM kode_nama_kelas where kode_matkul='$kodeMat' and kelas_matkul='$kls'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmMK = $row["nama_matkul"];
        $klsMK = $row["kelas_matkul"];
        $hrMK = $row["hari_matkul"];
        $jmMK = $row["jam_matkul"];
        $nid = $row["nidn"];
    }
    
    $ds = "SELECT nidn, nama_dosen FROM dosen";
      $res = $conn->query($ds);
      
      if ($res->num_rows > 0) {
          $pilihds = '<option>Pilih Dosen...</option>';
          while($rw = $res->fetch_assoc()) {
              if($rw['nidn']==$nid){
                $pilihds .= '<option value = "'.$rw['nidn'].'" selected="selected">'.$rw['nama_dosen'].'</option>';
              }else{
                $pilihds .= '<option value = "'.$rw['nidn'].'" >'.$rw['nama_dosen'].'</option>';
              }
          }
      } else {
          echo "0 results";
      }

      $mk = "SELECT kode_matkul, nama_matkul FROM matkul";
        $rst = $conn->query($mk);

        if ($rst->num_rows > 0) {
            $pilihmk = '<option>Pilih Matakuliah...</option>';
            while($ro = $rst->fetch_assoc()) {
                if($ro['kode_matkul']==$kodeMat){
                  $pilihmk .= '<option value = "'.$ro['kode_matkul'].'" selected="selected">'.$ro['nama_matkul'].'</option>';
                }else{
                  $pilihmk .= '<option value = "'.$ro['kode_matkul'].'">'.$ro['nama_matkul'].'</option>';
                }
            }
        } else {
            echo "0 results";
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
                       <label for="editklsMkKode" class="col-sm-2 control-label">Nama Matakuliah</label>
                       <div class="col-sm-10">
                         <select class="form-control select2" style="width: 100%;" name="editklsMkKode" disabled>
                           '.$pilihmk.'
                         </select>
                       </div>
                     </div>
     
                      <div class="form-group">
                       <label for="editklsKelas" class="col-sm-2 control-label">Kelas</label>
     
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="editklsKelas" name="editklsKelas" placeholder="Kelas" value='.$klsMK.' disabled>
                       </div>
                     </div>
     
                     <div class="form-group">
                       <label for="editklsNIDN" class="col-sm-2 control-label">Nama Dosen</label>
                       <div class="col-sm-10">
                         <select class="form-control select2" style="width: 100%;" name="editklsNIDN">
                           '.$pilihds.'
                         </select>
                       </div>
                     </div>
     
                     <div class="form-group">
                       <label for="editklsHari" class="col-sm-2 control-label">Hari</label>
     
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="editklsHari" name="editklsHari" placeholder="Hari Perkuliahan" value='.$hrMK.'>
                       </div>
                     </div>
                   
     
                     <div class="form-group">
                       <label for="editklsJam" class="col-sm-2 control-label">Jam</label>
     
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="editklsJam" name="editklsJam" placeholder="Contoh : 08:00-09:40" value='.$jmMK.'>
                       </div>
                     </div>
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-info pull-right" id="editklsSimpan" name="editklsSimpan">Simpan</button>
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
        $rst = $conn->query($mk);

        if ($rst->num_rows > 0) {
            $pilihmk = '<option>Pilih Matakuliah...</option>';
            while($ro = $rst->fetch_assoc()) {
                if($ro['kode_matkul']==$kdMkPOIN){
                  $pilihmk .= '<option value = "'.$ro['kode_matkul'].'" selected="selected">'.$ro['nama_matkul'].'</option>';
                }else{
                  $pilihmk .= '<option value = "'.$ro['kode_matkul'].'">'.$ro['nama_matkul'].'</option>';
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
                     <label for="edtPreNIM" class="col-sm-2 control-label">NIM</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtPreNIM" name="edtPreNIM" placeholder="201x31xxx" value='.$nimPOIN.'>
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
                     <label for="edtPreKelas" class="col-sm-2 control-label">Kelas</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtPreKelas" name="edtPreKelas" placeholder="Masukkan Kelas" value='.$klsPOIN.'>
                     </div>
                   </div>
   
                   <div class="form-group">
                     <label for="edtPreKe" class="col-sm-2 control-label">Pretest</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtPreKe" name="edtPreKe" placeholder="Pretest Ke-" value='.$lapKePOIN.'>
                     </div>
                   </div>
   
                   <div class="form-group">
                     <label for="edtPreNilai" class="col-sm-2 control-label">Nilai</label>
   
                     <div class="col-sm-10">
                       <input type="text" class="form-control" id="edtPreNilai" name="edtPreNilai" placeholder="Nilai" value='.$nilaiPOIN.'>
                     </div>
                   </div>
                   
   
                   
                 <!-- /.box-body -->
                 
                 <!-- /.box-footer -->
   
   
   
                   <div class="form-group">
                     <label for="inputPretest" class="col-sm-2 control-label">  </label>
   
                     <div class="col-sm-10">
                        <div class="box-footer">
                   <button type="submit" class="btn btn-info pull-right" id="edtPretest" name="edtPretest" value="'.$_POST["tgl_input"].'">Simpan</button>
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