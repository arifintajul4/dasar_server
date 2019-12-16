

<?php
include 'connection.php';
if(isset($_POST['lupapass']))   // it checks whether the user clicked login button or not 
{
      $nimDaftar = $_POST['daftarNim'];
      $recover2Pertanya = $_POST['daftarRecovery2'];  
      $recover1Jawab = $_POST['daftarRecovery1'];  

      

      if($nimDaftar==""||$recover1Jawab==""||$recover2Pertanya==""){
        echo "Maaf itu bukan akun anda";
        
      }else{
        $sql = "SELECT * FROM mhs where nim='$nimDaftar' and recovery1='$recover1Jawab' and recovery2='$recover2Pertanya'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
           echo "Password anda : ".$row["pass"];
        }
        }else{
          echo "Maaf itu bukan akun anda";
        }

        
      }

}

?>