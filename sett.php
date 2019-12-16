<?php
if(isset($_POST["nimna"])){
  $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM mhs where nim='".$_POST["nimna"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmMHS = $row["nim"];
        $namaMhs= $row["nama_mhs"];
        $pass1 = $row["pass"];
        $mail=$row["email"];
        $kontak=$row["no_hp_mhs"];
        $pertanyaan = $row["recovery2"];
        $jawaban = $row["recovery1"];
        $status = $row["status_mhs"];
    }
}

?>

  <div class="register-logo">
    <a href=""><b>Basic </b>Laboratory</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Isikan data anda dengan benar</p>

    <form action="logout.php" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" id="perbaruiNama" name="perbaruiNama" placeholder="Nama(*)" value="<?php echo $namaMhs;?>">
        <span class="glyphicon glyphicon-user form-control-feedback"  ></span>
      </div>
      <div class="form-group has-feedback">
        <input type="number" class="form-control" id="perbaruiNIM" name="perbaruiNIM" placeholder="NIM(*)"  value="<?php echo $nmMHS;?>">
        <span class="glyphicon glyphicon-briefcase form-control-feedback" ></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" id="perbaruiPass" name="perbaruiPass" placeholder="Password(*)" value="<?php echo $pass1;?>">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" id="perbaruiPassConfirm" name="perbaruiPassConfirm" placeholder="Retype password(*)" value="<?php echo $pass1;?>">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>

      <div class="form-group has-feedback">
        <input type="email" class="form-control" id="perbaruiEmail" name="perbaruiEmail" placeholder="Email" value="<?php echo $mail;?>">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>

      <div class="form-group has-feedback">
        <input type="number" class="form-control" id="perbaruiNoHP" name="perbaruiNoHP" placeholder="No Kontak" value="<?php echo $kontak;?>">
        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>

    <!-- select -->
    <div class="form-group">
                  <label for="daftarRecovery2">Pertanyaan recovery(*)</label>
                  <select class="form-control" id="perbaruiRecovery2" name="perbaruiRecovery2" value="<?php echo $pertanyaan;?>">
                    <option>Dosen yang anda suka?</option>
                    <option>Asisten yang anda suka?</option>
                    <option>Nama hewan peliharaan?</option>
                    <option>Panggilan unik anda?</option>
                    <option>Bebas?</option>
                  </select>
                </div>

      <div class="form-group has-feedback">
        <input type="text" class="form-control" id="perbaruiRecovery1" name="perbaruiRecovery1" placeholder="Jawaban Recovery(*)" value="<?php echo $jawaban;?>">
        <span class="glyphicon glyphicon-pushpin form-control-feedback"></span>
      </div>
      <p class="help-block text-center">Form yang terdapat tanda (*) bersifat wajib</p>
      <div class="row">
      <input type="hidden" name="stats" value="<?php echo $status; ?>">
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" name="perbaruiAkun" value="perbaruiAkun" class="btn btn-primary btn-block btn-flat">Perbarui</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

   
    <!-- <a href="#" class="text-center" data-dismiss="modal">Sudah punya akun?</a> -->
  </div>
  <!-- /.form-box -->

  