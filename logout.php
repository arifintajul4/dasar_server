<?php
include 'connection.php';
if(isset($_POST['perbaruiAkun']))   // it checks whether the user clicked login button or not 
{
      $nimDaftar = $_POST['perbaruiNIM'];
      $namaDaftar = $_POST['perbaruiNama'];
      $pass1 = $_POST['perbaruiPass'];    
      $pass2 = $_POST['perbaruiPassConfirm'];    
      $emailDaftar = $_POST['perbaruiEmail'];
      $noHpDaftar = $_POST['perbaruiNoHP'];  
      $recover2Pertanya = $_POST['perbaruiRecovery2'];  
      $recover1Jawab = $_POST['perbaruiRecovery1'];  
      $statusnya = $_POST["stats"];
      

      if($pass1!=$pass2 || $nimDaftar=="" || $namaDaftar=="" || $pass1=="" || $recover2Pertanya=="" || $recover1Jawab==""){
        echo "<script> gagalDaftar(); </script>";
        
      }else{
        
        if($statusnya=="Asisten"){
          $result = mysqli_query($conn,"UPDATE mhs SET 
          nama_mhs='$namaDaftar', no_hp_mhs='$noHpDaftar', pass='$pass1', status_mhs='Asisten',email='$emailDaftar',recovery2='$recover2Pertanya',recovery1='$recover1Jawab' where nim = '$nimDaftar'");  
        }else{
          $result = mysqli_query($conn,"UPDATE mhs SET 
          nama_mhs='$namaDaftar', no_hp_mhs='$noHpDaftar', pass='$pass1', status_mhs='Mahasiswa',email='$emailDaftar',recovery2='$recover2Pertanya',recovery1='$recover1Jawab' where nim = '$nimDaftar'");
        }

        if($conn->query($result) === TRUE){
          echo "<script> gagalDaftar(); </script>";
        }else{
          echo "<script> berhasilDaftar(); </script>";
        }

        
      }

}

  session_start();
  session_destroy();   // function that Destroys Session 
  header("Location: index.php");
?>