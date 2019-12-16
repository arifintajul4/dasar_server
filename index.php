<?php   session_start();  ?>
<?php include 'connection.php'; 

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BASIC Laboratory</title>

     <!-- Tell the browser to be responsive to screen width -->
        <link rel="shortcut icon" href="favicon.ico">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <!-- DataTables -->
        <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->

        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
            folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

     <script src="jquery/jquery-3.3.1.min.js"></script>
</head>


<script>

var input = document.getElementById("inputPassword");
input.addEventListener("keyup", function(event) {
    event.preventDefault();
    if (event.keyCode === 13) {
        document.getElementById("login").click();
    }
});
</script>


<script>
function bedaPasswordAlert() {
    alert("Password tidak sesuai!");
}

function salahAlert() {
    alert("NIM / Password salah!");
}

function berhasilDaftar() {
    alert("Berhasil");
}

function gagalDaftar() {
    alert("Gagal");
}

function balik() {
  $('#mainDiv').load('infoTabs.php');
}


function forRegister() {
  $('#mainDiv').load('register.php');
}

function tbhdsn() {
  $('#mainDiv').load('tbhdsn.php');
}

function tbhmk() {
  $('#mainDiv').load('tbhmk.php');
}

function tbhkls() {
  $('#mainDiv').load('tbhkls.php');
}

function upldmtr() {
  $('#mainDiv').load('upldmtr.php');
}

function upldTgs(){
  $('#mainDiv').load('upldTugas.php');
}

function upldPretest() {
  $('#mainDiv').load('upldpretest.php');
}

function upldUjian() {
  $('#mainDiv').load('upldUjian.php');
}

function input_lap() {
  $('#mainDiv').load('inpt_lap.php');
}

function input_tgs(){
  $('#mainDiv').load('inpt_tugas.php');
}

function input_pre(){
  $('#mainDiv').load('inpt_pretest.php');
}

function input_poi(){
  $('#mainDiv').load('inpt_poin.php');
}

function mtr() {
  $('#mainDiv').load('materi.php');
}

function FileUjian(){
  $('#mainDiv').load('listUjianKumpul.php');
}

function lht_pretest(){
  $('#mainDiv').load('lhtPretest.php');
}
function lht_laporan(){
  $('#mainDiv').load('lhtLaporan.php');
}

function lht_poin(){
  $('#mainDiv').load('lhtPoin.php');
}

function lht_tugas(){
  $('#mainDiv').load('lhtTugas.php');
}

function tbhinfo() {
  $('#mainDiv').load('tbhinform.php');
}

function rekap() {
  $('#mainDiv').load('eksport.php');
}

</script>





<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

<header class="main-header">
    <?php include 'nav.php'; ?>
</header>
<!-- Full Width Column -->
<div class="content-wrapper">
  <div class="container">
      <div id="mainDiv"><?php include('infoTabs.php')?></div>
  </div>
  <!-- /.container -->
</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
  <div class="container">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.1
    </div>
    <strong>Copyright &copy; 2015-2016-2017 <a href="#">Basic Laboratory</a>.</strong> All rights
    reserved.
  </div>
  <!-- /.container -->
</footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

</body>
</html>


     

<?php include 'register.php'; ?>
<?php include 'lupapass.php'; ?>


                                    <?php


if(isset($_POST['login']))   // it checks whether the user clicked login button or not 
{
     $user = $_POST['inputNIM'];
     $pass = $_POST['inputPassword'];

     $result = mysqli_query($conn,"SELECT * FROM mhs WHERE nim='" . $user . "' and pass = '". $pass."'");
     $row  = mysqli_fetch_array($result);
     if(is_array($row)) {
        $_SESSION['use']=$user;
        echo '<script type="text/javascript"> window.open("index.php","_self");</script>';
     }else{
      echo "<script> salahAlert(); </script>";
     }
}


if(isset($_POST['tambahInfoSimpan']))   // it checks whether the user clicked login button or not 
{
     $Kode= $_POST['tmbhInfoNama'];
     $upldr = $_SESSION['use'];
     $jdl = $_POST['tambahInfoJudul'];
     $tglUploadInfo = date("h:m:s / d-m-Y");
     $infonya= $_POST['editor1'];
     
     $wew = "INSERT INTO informasi(nim,kode_matkul,info,tgl_information,judul_info) VALUES
      ('".$upldr."','".$Kode."','".$infonya."','".$tglUploadInfo."','".$jdl."')";
       
        if($conn->query($wew) === TRUE){
          
          echo "<script> berhasilDaftar(); </script>";
          // echo $jdl." ".$tglUploadInfo." ".$infonya." ".$Kode." ".$upldr; 
        }else{
          echo "<script> gagalDaftar(); </script>";
        }
      
    //  if($jdl==""||$upldr==""||$tglUploadInfo==""||$infonya==""||$Kode=""){
    //   echo "<script> gagalDaftar(); </script>";
    //  }else{
      
    //  }
     
}

if(isset($_POST['registerDaftar']))   // it checks whether the user clicked login button or not 
{
      $nimDaftar = $_POST['daftarNim'];
      $namaDaftar = $_POST['daftarNama'];
      $pass1 = $_POST['daftarPassword'];    
      $pass2 = $_POST['daftarConfirmPassword'];    
      $emailDaftar = $_POST['daftarEmail'];
      $noHpDaftar = $_POST['daftarNoHp'];  
      $recover2Pertanya = $_POST['daftarRecovery2'];  
      $recover1Jawab = $_POST['daftarRecovery1'];  

      if($pass1!=$pass2 || $nimDaftar=="" || $namaDaftar=="" || $pass1=="" || $recover2Pertanya=="" || $recover1Jawab==""){
        echo "<script> gagalDaftar(); </script>";
        
      }else{
        $result = mysqli_query($conn,"INSERT INTO mhs(nim,nama_mhs,no_hp_mhs,pass,status_mhs,email,recovery2,recovery1) VALUES
        ('".$nimDaftar."','".$namaDaftar."','".$noHpDaftar."','".$pass1."','Mahasiswa','".$emailDaftar."','".$recover2Pertanya."','".$recover1Jawab."')");
       
        if($conn->query($result) === TRUE){
          echo "<script> gagalDaftar(); </script>";
        }else{
          echo "<script> berhasilDaftar(); </script>";
        }
        
      }

}




if(isset($_POST['tambahDosenSimpan']))   // it checks whether the user clicked login button or not 
                {

                    $nidn = $_POST['tambahDosenNIDN'];
                    $namaDosen = $_POST['tambahDosenNama'];
                    $ketDosen = $_POST['tambahDosenKet'];


                    if($nidn=="" || $namaDosen==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"INSERT INTO dosen(nidn,nama_dosen,ket_dosen) VALUES
                      ('".$nidn."','".$namaDosen."','".$ketDosen."')");
                    
                      if($conn->query($result) === TRUE){
                        echo "<script> gagalDaftar(); </script>";
                      }else{
                        echo "<script> berhasilDaftar(); </script>";
                      }
                    }

                }






if(isset($_POST['editklsSimpan']))   // it checks whether the user clicked login button or not 
                {

                    $kdklsmk = $_POST['editklsMkKode'];
                    $klsMk = $_POST['editklsKelas'];
                    $nidnMK = $_POST['editklsNIDN'];
                    $hariMK = $_POST['editklsHari'];
                    $jamMK = $_POST['editklsJam'];

                    if($kdklsmk=="" || $klsMk==""||$nidnMK==""||$hariMK==""||$jamMK==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"UPDATE matkul_detail SET kode_matkul='$kdklsmk',jam_matkul='$jamMK',
                      kelas_matkul='$klsMk',nidn='$nidnMK',hari_matkul='$hariMK'");
                    
                      if($result){
                        echo "<script> berhasilDaftar(); </script>";
                      }else{
                        echo "<script> gagalDaftar(); </script>";
                      }
                    }

                }


                if(isset($_POST['tambahMKSimpan']))   // it checks whether the user clicked login button or not 
                {

                  
                    
                    $kode_mk = $_POST['tambahMkKode'];
                    $nama_mk = $_POST['tambahMkNama'];


                    if($kode_mk=="" || $nama_mk==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"INSERT INTO matkul(kode_matkul,nama_matkul) VALUES
                      ('".$kode_mk."','".$nama_mk."')");
                    
                      if($conn->query($result) === TRUE){
                        echo "<script> gagalDaftar(); </script>";
                      }else{
                        mkdir('matkul/'.$nama_mk);
                        mkdir('matkul/'.$nama_mk.'/materi');
                        mkdir('matkul/'.$nama_mk.'/pretest');
                        mkdir('matkul/'.$nama_mk.'/ujian');
                        mkdir('matkul/'.$nama_mk.'/tugas');
                        echo "<script> berhasilDaftar(); </script>";
                      }
                    }

                    

                }


                if(isset($_POST['uploadMkPublish']))   // it checks whether the user clicked login button or not 
                {

                  


                  $name= $_POST['uploadMtrNameFile'];
                  $nmMtkul= $_POST['uploadMtrKodeMK'];


                  $nimUploader = $_SESSION['use'];
                  $sql = "SELECT kode_matkul FROM matkul where nama_matkul='$nmMtkul'";
                  $result = $conn->query($sql);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $kode_mtkul = $row["kode_matkul"];  
                    }
                } 


                    if(isset($_FILES['uploadMtrFile'])){
                        $errors= array();
                        
                        $file_name = $_FILES['uploadMtrFile']['name'];
                        $file_size = $_FILES['uploadMtrFile']['size'];
                        $file_tmp = $_FILES['uploadMtrFile']['tmp_name'];
                        $file_type = $_FILES['uploadMtrFile']['type'];
                        $file_ext=substr($file_name, strripos($file_name, '.'));
                        
                        $expensions= array(".pdf",".docx",".jpg",".pptx",".txt",".zip",".doc",".ppt",".png",".exe");
                        

                        if(empty($errors)==true) {
                          if($name==""){
                            $terupload = move_uploaded_file($file_tmp,"matkul/".$nmMtkul."/materi"."/".$file_name);
                           
                            if($terupload){
                              $simpanNamaFile = $file_name;
                              echo "<script> berhasilDaftar(); </script>";
                            }else{
                              echo "<script> gagalDaftar(); </script>";
                            }

                          }else{
                           $nameBaru = $name.$file_ext;
                           $terupload = move_uploaded_file($file_tmp,"matkul/".$nmMtkul."/materi"."/".$nameBaru);
                           if($terupload){
                            $simpanNamaFile = $file_name;
                            echo "<script> berhasilDaftar(); </script>";
                          }else{
                            echo "<script> gagalDaftar(); </script>";
                          }
                          }

                        }else{
                           print_r($errors);
                        }
                     }
                }
                


                if(isset($_POST['tambahKlsSimpan']))   // it checks whether the user clicked login button or not 
                {

                  

                    $nidn = $_POST['tambahklsNIDN'];
                    $kod_mk = $_POST['tambahklsMkKode'];
                    $jam = $_POST['tambahklsJam'];
                    $kls = $_POST['tambahklsKelas'];
                    $hari = $_POST['tambahklsHari'];
                                      


                    if($nidn=="" || $kod_mk==""||$jam==""||$kls==""||$hari==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"INSERT INTO matkul_detail(kode_matkul,jam_matkul,kelas_matkul,nidn,hari_matkul) VALUES
                      ('".$kod_mk."','".$jam."','".$kls."','".$nidn."','".$hari."')");
                    
                      if($conn->query($result) === TRUE){
                        echo "<script> gagalDaftar(); </script>";
                      }else{
                        echo "<script> berhasilDaftar(); </script>";
                      }

                      var_dump($hari);
                      var_dump($conn->error);
                    }

                    

                }

                


                // cek ini untuk upload file dan penamaan
                if(isset($_POST['uploadTugastSubmit']))   // it checks whether the user clicked login button or not 
                {
                  $kls= $_POST['uploadTugasKelas'];
                  $nmMtkul= $_POST['uploadMtrKodeMK'];
                  $tgl_pretest= date("Y-m-d");

                  $nimUploader = $_SESSION['use'];
                  $sql = "SELECT kode_matkul FROM matkul where nama_matkul='$nmMtkul'";
                  $result = $conn->query($sql);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $kode_mtkul = $row["kode_matkul"];  
                    }
                } 


                    if(isset($_FILES['uploadMtrFile'])){
                        $errors= array();
                        
                        $file_name = $_FILES['uploadMtrFile']['name'];
                        $file_size = $_FILES['uploadMtrFile']['size'];
                        $file_tmp = $_FILES['uploadMtrFile']['tmp_name'];
                        $file_type = $_FILES['uploadMtrFile']['type'];
                        $file_ext=substr($file_name, strripos($file_name, '.'));
                        
                        $expensions= array(".pdf",".docx",".jpg",".pptx",".txt",".zip",".doc",".ppt",".png",".exe");
                        
                        
                        if(empty($errors)==true) {
                          if($kls==""){
                            echo "<script> gagalDaftar(); </script>";
                          }else{
                           $nameBaru = "Tugas_".$_SESSION['use']."_".$kls."_".$tgl_pretest.$file_ext;
                           $terupload = move_uploaded_file($file_tmp,"matkul/".$nmMtkul."/tugas"."/".$nameBaru);
                           if($terupload){
                            $simpanNamaFile = $nameBaru;
                            echo "<script> berhasilDaftar(); </script>";
                           }else{
                            echo "<script> gagalDaftar(); </script>";
                           }
                          }
                            
                        }else{
                           print_r($errors);
                        }
                     }
                }

                // cek ini untuk upload file dan penamaan
                if(isset($_POST['uploadPretestPublish']))   // it checks whether the user clicked login button or not 
                {

                  $kls= $_POST['uploadPretestKelas'];
                  $nmMtkul= $_POST['uploadMtrKodeMK'];
                  $tgl_pretest= date("Y-m-d");

                  $nimUploader = $_SESSION['use'];
                  $sql = "SELECT kode_matkul FROM matkul where nama_matkul='$nmMtkul'";
                  $result = $conn->query($sql);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $kode_mtkul = $row["kode_matkul"];  
                    }
                } 


                    if(isset($_FILES['uploadMtrFile'])){
                        $errors= array();
                        
                        $file_name = $_FILES['uploadMtrFile']['name'];
                        $file_size = $_FILES['uploadMtrFile']['size'];
                        $file_tmp = $_FILES['uploadMtrFile']['tmp_name'];
                        $file_type = $_FILES['uploadMtrFile']['type'];
                        $file_ext=substr($file_name, strripos($file_name, '.'));
                        
                        $expensions= array(".pdf",".docx",".jpg",".pptx",".txt",".zip",".doc",".ppt",".png",".exe");

                        if(empty($errors)==true) {
                          if($kls==""){
                            echo "<script> gagalDaftar(); </script>";
                          }else{
                           $nameBaru = "Pretest_".$_SESSION['use']."_".$kls."_".$tgl_pretest.$file_ext;
                           $terupload = move_uploaded_file($file_tmp,"matkul/".$nmMtkul."/pretest"."/".$nameBaru);
                           if($terupload){
                            $simpanNamaFile = $nameBaru;
                            echo "<script> berhasilDaftar(); </script>";
                           }else{
                            echo "<script> gagalDaftar(); </script>";
                           }
                          }
                            
                        }else{
                           print_r($errors);
                        }
                     }
                }






                // cek ini untuk upload file dan penamaan
                if(isset($_POST['uploadUjiantSubmit']))   // it checks whether the user clicked login button or not 
                {

                  $kls= $_POST['uploadUjianKelas'];
                  $nmMtkul= $_POST['uploadMtrKodeMK'];
                  $tgl_ujian= date("Y-m-d");

                  $nimUploader = $_SESSION['use'];
                  $sql = "SELECT nama_mhs FROM mhs where nim='$nimUploader'";
                  $result = $conn->query($sql);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $mhsNya = $row["nama_mhs"];  
                    }
                } 


                    if(isset($_FILES['uploadMtrFile'])){
                        $errors= array();
                        
                        $file_name = $_FILES['uploadMtrFile']['name'];
                        $file_size = $_FILES['uploadMtrFile']['size'];
                        $file_tmp = $_FILES['uploadMtrFile']['tmp_name'];
                        $file_type = $_FILES['uploadMtrFile']['type'];
                        $file_ext=substr($file_name, strripos($file_name, '.'));
                        
                        $expensions= array(".pdf",".docx",".jpg",".pptx",".txt",".zip",".doc",".ppt",".png",".exe");
                                                
                        if(empty($errors)==true) {
                          if($kls==""){
                            echo "<script> gagalDaftar(); </script>";
                          }else{
                           $nameBaru = "Ujian_".$_SESSION['use']."_".$kls."_".$tgl_ujian.$file_ext;
                           $terupload = move_uploaded_file($file_tmp,"matkul/".$nmMtkul."/ujian"."/".$nameBaru);
                           if($terupload){
                            $simpanNamaFile = $nameBaru;
                            echo "<script> berhasilDaftar(); </script>";
                           }else{
                            echo "<script> gagalDaftar(); </script>";
                           }
                          }
                            
                        }else{
                           print_r($errors);
                        }
                     }
                }



                // batas
                

                if(isset($_POST['edtTugas']))   // it checks whether the user clicked login button or not 
                        {
                              $nimPO = $_POST['edtTugNIM'];
                              $kdMKPO = $_POST['tmbhInfoNama'];
                              $kelasPO = $_POST['edtTugKelas'];    
                              $POKe = $_POST['edtTugKe'];       
                              $nilaiPO = $_POST['edtTugNilai'];
                              
            
                              if($nimPO==""||$kdMKPO==""||$kelasPO==""||$POKe==""||$nilaiPO==""){
                                echo "<script> gagalDaftar(); </script>";
                              }else{
                                $result = mysqli_query($conn,"UPDATE mhs_detail SET nim='$nimPO',kode_matkul='$kdMKPO',
                                kelas_mhs='$kelasPO',lapKe='$POKe',nilai='$nilaiPO',jenis='tugas' where tgl_input='".$_POST["edtTugas"]."'");
                                if($result){
                                  // echo "<script> gagalDaftar(); </script>";
                                  echo "<script> berhasilDaftar(); </script>";
                                }else{
                                  // echo "<script> berhasilDaftar(); </script>";
                                  echo "<script> gagalDaftar(); </script>";
                                }

                                
                              }
                        }


                if(isset($_POST['edtLaporan']))   // it checks whether the user clicked login button or not 
                        {
                              $nimPO = $_POST['edtLapNIM'];
                              $kdMKPO = $_POST['tmbhInfoNama'];
                              $kelasPO = $_POST['edtLapKelas'];    
                              $POKe = $_POST['edtLapKe'];    
                              $nilaiPO = $_POST['edtLapNilai'];
                              
            
                              if($nimPO==""||$kdMKPO==""||$kelasPO==""||$POKe==""||$nilaiPO==""){
                                echo "<script> gagalDaftar(); </script>";
                              }else{
                                $result = mysqli_query($conn,"UPDATE mhs_detail SET nim='$nimPO',kode_matkul='$kdMKPO',
                                kelas_mhs='$kelasPO',lapKe='$POKe',nilai='$nilaiPO',jenis='laporan' where tgl_input='".$_POST["edtLaporan"]."'");
                                if($result){
                                  // echo "<script> gagalDaftar(); </script>";
                                  echo "<script> berhasilDaftar(); </script>";
                                }else{
                                  // echo "<script> berhasilDaftar(); </script>";
                                  echo "<script> gagalDaftar(); </script>";
                                }

                                
                              }
                        }


                        if(isset($_POST['edtPoin']))   // it checks whether the user clicked login button or not 
                        {
                              $nimPO = $_POST['edtPONIM'];
                              $kdMKPO = $_POST['tmbhInfoNama'];
                              $kelasPO = $_POST['edtPOKelas'];    
                              $POKe = $_POST['edtPOKe'];    
                              $nilaiPO = $_POST['edtPO'];
                              
            
                              if($nimPO==""||$kdMKPO==""||$kelasPO==""||$POKe==""||$nilaiPO==""){
                                echo "<script> gagalDaftar(); </script>";
                              }else{
                                $result = mysqli_query($conn,"UPDATE mhs_detail SET nim='$nimPO',kode_matkul='$kdMKPO',
                                kelas_mhs='$kelasPO',lapKe='$POKe',nilai='$nilaiPO',jenis='poin' where tgl_input='".$_POST["edtPoin"]."'");
                                if($result){
                                  // echo "<script> gagalDaftar(); </script>";
                                  echo "<script> berhasilDaftar(); </script>";
                                }else{
                                  // echo "<script> berhasilDaftar(); </script>";
                                  echo "<script> gagalDaftar(); </script>";
                                }

                                
                              }
                        }
                        
                        
                        

                        if(isset($_POST['hapusSemuaMK']))   // it checks whether the user clicked login button or not 
                        {
                            

                              $result = mysqli_query($conn,"DELETE from matkul");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                           
        
                        }

                        if(isset($_POST['hapusInfonyaboss']))   // it checks whether the user clicked login button or not 
                        {
                            $hpsInfo = $_POST['hapusInfonyaboss'];

                            if($hpsInfo==""){
                              echo "<script> gagalDaftar(); </script>";
                            }else{
                              $result = mysqli_query($conn,"DELETE from informasi where tgl_information='$hpsInfo'");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                            }
        
                        }

                        if(isset($_POST['hapusTugasSemua']))   // it checks whether the user clicked login button or not 
                        {
                            $tgledttugas = $_POST['hapusTugasSemua'];

                            if($tgledttugas==""){
                              echo "<script> gagalDaftar(); </script>";
                            }else{
                              $result = mysqli_query($conn,"DELETE from mhs_detail where jenis='$tgledttugas'");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                            }
        
                        }


                        

                        if(isset($_POST['hapusDosenSemua']))   // it checks whether the user clicked login button or not 
                        {

                              $result = mysqli_query($conn,"DELETE from dosen");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                          
        
                        }

                        if(isset($_POST['hapusSemuaKelas']))   // it checks whether the user clicked login button or not 
                        {

                              $result = mysqli_query($conn,"DELETE from matkul_detail");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                          
        
                        }

                        if(isset($_POST['hapusLaporanSemua']))   // it checks whether the user clicked login button or not 
                        {
                            $tgledttugas = $_POST['hapusLaporanSemua'];

                            if($tgledttugas==""){
                              echo "<script> gagalDaftar(); </script>";
                            }else{
                              $result = mysqli_query($conn,"DELETE from mhs_detail where jenis='$tgledttugas'");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                            }
        
                        }

                        if(isset($_POST['hapusPretestSemua']))   // it checks whether the user clicked login button or not 
                        {
                            $tgledttugas = $_POST['hapusPretestSemua'];

                            if($tgledttugas==""){
                              echo "<script> gagalDaftar(); </script>";
                            }else{
                              $result = mysqli_query($conn,"DELETE from mhs_detail where jenis='$tgledttugas'");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                            }
        
                        }

                        if(isset($_POST['hapusPoinSemua']))   // it checks whether the user clicked login button or not 
                        {
                            $tgledttugas = $_POST['hapusPoinSemua'];

                            if($tgledttugas==""){
                              echo "<script> gagalDaftar(); </script>";
                            }else{
                              $result = mysqli_query($conn,"DELETE from mhs_detail where jenis='$tgledttugas'");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                            }
        
                        }


                        if(isset($_POST['hapusTugas']))   // it checks whether the user clicked login button or not 
                        {
                            $tgledttugas = $_POST['hapusTugas'];

                            if($tgledttugas==""){
                              echo "<script> gagalDaftar(); </script>";
                            }else{
                              $result = mysqli_query($conn,"DELETE from mhs_detail where tgl_input='$tgledttugas'");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                            }
        
                        }

                        if(isset($_POST['hapusPretest']))   // it checks whether the user clicked login button or not 
                        {
                            $tgledtpretest = $_POST['hapusPretest'];

                            if($tgledtpretest==""){
                              echo "<script> gagalDaftar(); </script>";
                            }else{
                              $result = mysqli_query($conn,"DELETE from mhs_detail where tgl_input='$tgledtpretest'");
               
                              if($result){
                                echo "<script> berhasilDaftar(); </script>";
                              }else{
                                echo "<script> gagalDaftar(); </script>";
                              }
                            }
        
                        }


                if(isset($_POST['hapusDsn']))   // it checks whether the user clicked login button or not 
                {

                  

                    $kodeDsn = $_POST['hapusDsn'];
                                


                    if($kodeDsn==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"DELETE from dosen where nidn='$kodeDsn'");
       
                      if($result){
                        echo "<script> berhasilDaftar(); </script>";
                      }else{
                        echo "<script> gagalDaftar(); </script>";
                      }
                    }

                }
                
                if(isset($_POST['edtPretest']))   // it checks whether the user clicked login button or not 
                        {
                              $nimPO = $_POST['edtPreNIM'];
                              $kdMKPO = $_POST['tmbhInfoNama'];
                              $kelasPO = $_POST['edtPreKelas'];    
                              $POKe = $_POST['edtPreKe'];    
                              $nilaiPO = $_POST['edtPreNilai'];
                              
            
                              if($nimPO==""||$kdMKPO==""||$kelasPO==""||$POKe==""||$nilaiPO==""){
                                echo "<script> gagalDaftar(); </script>";
                              }else{
                                $result = mysqli_query($conn,"UPDATE mhs_detail SET nim='$nimPO',kode_matkul='$kdMKPO',
                                kelas_mhs='$kelasPO',lapKe='$POKe',nilai='$nilaiPO',jenis='pretest' where tgl_input='".$_POST["edtPretest"]."'");
                                if($result){
                                  // echo "<script> gagalDaftar(); </script>";
                                  echo "<script> berhasilDaftar(); </script>";
                                }else{
                                  // echo "<script> berhasilDaftar(); </script>";
                                  echo "<script> gagalDaftar(); </script>";
                                }

                                
                              }


                        }



                if(isset($_POST['hapusPoin']))   // it checks whether the user clicked login button or not 
                {

                  

                    $tglInputPoin = $_POST['hapusPoin'];
                                


                    if($tglInputPoin==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"DELETE from mhs_detail where tgl_input='$tglInputPoin'");

                      if($result){
                        echo "<script> berhasilDaftar(); </script>";
                      }else{
                        echo "<script> gagalDaftar(); </script>";
                      }
                    }

                }


                if(isset($_POST['editMK']))   // it checks whether the user clicked login button or not 
                {

                  

                    $kodemk = $_POST['editMkKode'];
                    $namamk = $_POST['editMkNama'];                


                    if($kodemk=="" || $namamk==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"UPDATE matkul SET 
                      nama_matkul='$namamk' where kode_matkul = '$kodemk'");
       
                      if($result){
                        echo "<script> berhasilDaftar(); </script>";
                      }else{
                        echo "<script> gagalDaftar(); </script>";
                      }
                    }

                    

                }


                if(isset($_POST['hapusMK']))   // it checks whether the user clicked login button or not 
                {

                  
                   $kodemkk = $_POST['hapusMK'];                   


                    if($kodemkk==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"DELETE from matkul where kode_matkul='$kodemkk'");
       
                      if($result){
                        echo "<script> berhasilDaftar(); </script>";
                      }else{
                        echo "<script> gagalDaftar(); </script>";
                        var_dump($conn->error);
                      }
                    }

                    

                }



                if(isset($_POST['hapusKls']))   // it checks whether the user clicked login button or not 
                {

                   $data = $_POST['hapusKls'];
                   $kodemkk = substr($data, 0, 9);
                   $klsmkk = substr($data, 9, 1);                   


                    if($kodemkk==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"DELETE from matkul_detail where kode_matkul='$kodemkk' AND kelas_matkul='$klsmkk' ");
       
                      if($result){
                        echo "<script> berhasilDaftar(); </script>";
                      }else{
                        echo "<script> gagalDaftar(); </script>";
                      }
                    }

                    

                }


                if(isset($_POST['editDosenSimpan']))   // it checks whether the user clicked login button or not 
                {

                  
                   $nidnDsnEdit = $_POST['editDosenNIDN'];  
                   $namaDsnEdit = $_POST['editDosenNama'];                 
                   $ketDsnEdit = $_POST['editDosenKet'];

                    if($nidnDsnEdit==""||$namaDsnEdit==""||$ketDsnEdit==""){
                      echo "<script> gagalDaftar(); </script>";
                    }else{
                      $result = mysqli_query($conn,"UPDATE dosen SET nama_dosen='$namaDsnEdit', ket_dosen='$ketDsnEdit' where nidn = '$nidnDsnEdit'");
       
                      if($result){
                        echo "<script> berhasilDaftar(); </script>";
                      }else{
                        echo "<script> gagalDaftar(); </script>";
                      }
                    }

                    

                }

// batas awal


                


 ?>
 
<!-- Register Modals -->
<div class="modal modal-sett fade" id="modal-sett">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">Perbarui data anda&hellip;</h4>
                                            </div>
                                            <div class="modal-body" id="detail_sett">
                                                
                                            </div>

                                        
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
 </div>
                                    <!-- /.modal -->
