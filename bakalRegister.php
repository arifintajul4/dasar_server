<div class="register-box">
  <div class="register-logo">
    <a href="../../index2.html"><b>Admin</b>LTE</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    <form action="" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Nama(*)">
        <span class="glyphicon glyphicon-user form-control-feedback" id="daftarNama" name="daftarNama" ></span>
      </div>
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="NIM(*)">
        <span class="glyphicon glyphicon-briefcase form-control-feedback" id="daftarNim" name="daftarNim"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" id="daftarPassword" name="daftarPassword" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" id="daftarConfirmPassword" name="daftarConfirmPassword" placeholder="Retype password">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>

      <div class="form-group has-feedback">
        <input type="email" class="form-control" id="daftarEmail" name="daftarEmail" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>

      <div class="form-group has-feedback">
        <input type="number" class="form-control" id="daftarNoHp" name="daftarNoHp" placeholder="No Kontak">
        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>

    <!-- select -->
    <div class="form-group">
                  <label for="daftarRecovery2">Pertanyaan recovery(*)</label>
                  <select class="form-control" id="daftarRecovery2" name="daftarRecovery2">
                    <option>Dosen yang anda suka?</option>
                    <option>Asisten yang anda suka?</option>
                    <option>Nama hewan peliharaan?</option>
                    <option>Panggilan unik anda?</option>
                    <option>Bebas?</option>
                  </select>
                </div>

      <div class="form-group has-feedback">
        <input type="number" class="form-control" id="daftarRecovery1" name="daftarRecovery1" placeholder="Jawaban Recovery">
        <span class="glyphicon glyphicon-pushpin form-control-feedback"></span>
      </div>

      <div class="row">
      <p class="help-block">Form yang terdapat tanda (*) bersifat wajib</p>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" name="registerDaftar" value="registerDaftar" class="btn btn-primary btn-block btn-flat">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
        Google+</a>
    </div>

    <a href="login.html" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->