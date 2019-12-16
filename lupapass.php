 <!-- Register Modals -->
 <div class="modal modal-lupa fade" id="modal-lupa">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Form lupa password&hellip;</h4>
                                        </div>
                                        <div class="modal-body">
                                            
                                            
                                        
                                       
  <div class="register-logo">
    <a href=""><b>Basic </b>Laboratory</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Isikan data untuk pemulihan password</p>

    <form action="lupaFix.php" method="post">
      <div class="form-group has-feedback">
        <input type="number" class="form-control" id="lupapassNim" name="daftarNim" placeholder="NIM(*)">
        <span class="glyphicon glyphicon-briefcase form-control-feedback" ></span>
      </div>

    <!-- select -->
    <div class="form-group">
                  <label for="daftarRecovery2">Pertanyaan recovery(*)</label>
                  <select class="form-control" id="lupapassRecovery2" name="daftarRecovery2">
                    <option>Dosen yang anda suka?</option>
                    <option>Asisten yang anda suka?</option>
                    <option>Nama hewan peliharaan?</option>
                    <option>Panggilan unik anda?</option>
                    <option>Bebas?</option>
                  </select>
                </div>

      <div class="form-group has-feedback">
        <input type="text" class="form-control" id="lupapassRecovery1" name="daftarRecovery1" placeholder="Jawaban Recovery(*)">
        <span class="glyphicon glyphicon-pushpin form-control-feedback"></span>
      </div>
      <p class="help-block text-center">Isikan secara keseluruhan</p>
      <div class="row">
      
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" name="lupapass" value="lupapass" class="btn btn-primary btn-block btn-flat">Submit</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

  
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->


                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->

<?php
include 'connection.php';
if(isset($_POST['lupapass']))   // it checks whether the user clicked login button or not 
{
      $nimDaftar = $_POST['daftarNim'];
      $recover2Pertanya = $_POST['daftarRecovery2'];  
      $recover1Jawab = $_POST['daftarRecovery1'];  

      

      if($nimDaftar==""||$recover1Jawab==""||$recover2Pertanya==""){
        echo "<script> gagalDaftar(); </script>";
        
      }else{
        $result = mysqli_query($conn,"SELECT * from mhs where nim='$nimDaftar' and recovery1='$recover1Jawab' and recovery2='$recover2Pertanya'");
       
        if($conn->query($result) === TRUE){
          echo "<script> gagalDaftar(); </script>";
        }else{
          while($row = $result->fetch_assoc()) {
            echo "Password anda : ".$result["pass"];
          }
        }

        
      }

}

?>