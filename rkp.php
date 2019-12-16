<?php include 'connection.php';
session_start();
date_default_timezone_set('Asia/Jakarta');





if(isset($_POST["rekapMatkul"])){
    $mk = "SELECT * FROM matkul";
    $result = $conn->query($mk);
    
    if ($result->num_rows > 0) {
        $pilihmk = '<option>Pilih Matakuliah...</option>';
        while($row = $result->fetch_assoc()) {
            if($row['kode_matkul']==$_POST["rekapMatkul"]){
                $pilihmk .= '<option  value="'.$row['kode_matkul'].'" selected="selected">'.$row['nama_matkul'].'</option>';
            }else{
                $pilihmk .= '<option  value="'.$row['kode_matkul'].'">'.$row['nama_matkul'].'</option>'; 
            }
        }
    } else {
        echo "0 results";
    }
}else{
    $mk = "SELECT * FROM matkul";
    $result = $conn->query($mk);
    
    if ($result->num_rows > 0) {
        $pilihmk = '<option>Pilih Matakuliah...</option>';
        while($row = $result->fetch_assoc()) {
            $pilihmk .= '<option  value="'.$row['kode_matkul'].'">'.$row['nama_matkul'].'</option>';
        }
    } else {
        echo "0 results";
    }
}





function showrekap(){
    include 'connection.php';
    if(isset($_POST['rekapAll']))   // it checks whether the user clicked login button or not 
    {
      $jenisRKP = $_POST['JenisRekap'];
      $pilMK = $_POST['rekapMatkul'];
      $klsRKP = $_POST['KlsRekap'];
      $btsRKP = $_POST['batasRekap'];
      $umpan =$pilMK.$klsRKP.$jenisRKP;  
      if(isset($_SESSION['use'])){

        $qcek = "SELECT * FROM mhs where nim='".$_SESSION['use']."'";
                  $result = $conn->query($qcek);
                  
                  if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        $stats = $row["status_mhs"];  
                    }
                    
                    if($stats == "Asisten"){
                        
                        if($btsRKP>0){
                            if($jenisRKP==""||$pilMK==""||$klsRKP==""||$btsRKP==""){
                                echo "<script> gagalDaftar(); </script>";
                            }else{
                                ?>
    
                                        
                                        <h3><?php echo strtoupper($jenisRKP."-".$pilMK."-".$klsRKP); ?></h3>
                                        <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>NIM</th>
                                            <th>Nama</th>
                                            <?php 
                                            
                                            for($n=1;$n<=$btsRKP;$n++){
                                                ?>
                                                    <th><?php echo $n;?></th>
                                                <?php
                                            }
                                            
                                            ?>
                                        </tr>
                                        </thead>
                                        <tbody >
                                        
                                            <?php
                                            $sql = "SELECT * FROM mhs_detail JOIN mhs ON mhs_detail.nim = mhs.nim where jenis='$jenisRKP' and kode_matkul='$pilMK' and kelas_mhs='$klsRKP' group by mhs.nim";
                                            $result = $conn->query($sql);
                                            $no=1;
                                            if ($result->num_rows > 0) {
                                                while($row = $result->fetch_assoc()) {
                                                    ?>
                                                        <tr>
                                                            <td><?php echo $no;?></td>
                                                            <td><?php echo $row['nim']; $nimNya = $row['nim'];?></td>
                                                            <td><?php echo $row['nama_mhs'];?></td>
                                                            
                                                            <?php
                                                                    for($n=1;$n<=$btsRKP;$n++){
                                                                        $sql2 = "SELECT * FROM mhs_detail JOIN mhs ON mhs_detail.nim = mhs.nim where mhs.nim='$nimNya' and mhs_detail.jenis='$jenisRKP' and mhs_detail.kode_matkul='$pilMK' and mhs_detail.kelas_mhs='$klsRKP'and mhs_detail.lapKe='$n' group by mhs.nim";
                                                                        $rsl = $conn->query($sql2);
                                                                        if ($rsl->num_rows > 0) {
                                                                            while($ro = $rsl->fetch_assoc()) {
                                                                                ?>
                                                                                <th><?php echo $ro['nilai'];?></th>
                                                                                <?php
                                                                            }
                                                                        }else{
                                                                           ?>
                                                                            <th><?php echo "0";?></th>
                                                                           <?php
                                                                        }
                                                                        ?>
                                                                            
                                                                        <?php
                                                                    }
                                                            
                                                            ?> 
                                                        </tr>
                                                    <?php
                                                    $no++;
                                                }
                                            }else{
                                                echo "<h3>Data Tidak Tersedia</h3>";  
                                            }
                                            ?>
                                            
                                        
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th>No</th>
                                            <th>NIM</th>
                                            <th>Nama</th>
                                            <?php 
                                            
                                            for($n=1;$n<=$btsRKP;$n++){
                                                ?>
                                                    <th><?php echo $n;?></th>
                                                <?php
                                            }
                                            
                                            ?>
                                        </tr>
                                        </tfoot>
                                        </table>
    
                                <?php
                                
    
    
                            }
                        }

                    }

                } 


      }

      exit;
    }
 }


?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BASIC Laboratory</title>

     <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
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
    <body class="hold-transition skin-blue layout-top-nav">
        <div class="wrapper">
                <!-- <div class="content-wrapper">
                    <div class="container">
                        
                    </div>        
                </div> -->
                
                <div class="content-wrapper">
                    <div class="container">
                        <!-- body -->
                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Rekap Nilai!</h3>
                                    
                                </div>

                                    <form class="form-horizontal" action="" method="post" id="form_rekap">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="JenisRekap" class="col-sm-2 control-label">Jenis</label>
                                        <div class="col-sm-10">
                                            <select class="form-control select2" style="width: 100%;" id="JenisRekap" name="JenisRekap">
                                            <option value="">Pilih Jenis..</option>
                                            <option value="pretest" <?php if(isset($_POST['JenisRekap']) =='pretest') {echo "selected";} ?>>Pretest</option>
                                            <option value="tugas" <?php if(isset($_POST['JenisRekap']) == 'tugas') {echo "selected";} ?>>Tugas</option>
                                            <option value="poin" <?php if(isset($_POST['JenisRekap']) == 'poin') {echo "selected";} ?>>Poin</option>
                                            <option value="laporan" <?php if(isset($_POST['JenisRekap']) == 'laporan') {echo "selected";} ?>>Laporan</option>
                                            </select>
                                        </div>
                                </div>
                                        <div class="form-group">
                                            <label for="rekapMatkul" class="col-sm-2 control-label">Matakuliah</label>
                                            <div class="col-sm-10">
                                                    <select class="form-control select2" style="width: 100%;" id="rekapMatkul" name="rekapMatkul">
                                                        <?php echo $pilihmk ?>
                                                    </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="KlsRekap" class="col-sm-2 control-label">Kelas</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="KlsRekap" name="KlsRekap" placeholder="Masukkan Kelas" value="<?php echo isset($_POST["KlsRekap"]) ? $_POST["KlsRekap"] : ''; ?>">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="batasRekap" class="col-sm-2 control-label">Batas Kolom</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="batasRekap" name="batasRekap" placeholder="Batas banyak kolom rekap" value="<?php echo isset($_POST["batasRekap"]) ? $_POST["batasRekap"] : ''; ?>">
                                            </div>
                                        </div>
                                <div class="form-group">
                                    <label for="rekapAll" class="col-sm-2 control-label">  </label>
                                    <div class="col-sm-10">
                                        <div class="box-footer">
                                            
                                            <a href="/" class="btn btn-default">Kembali</a>
                                            <button type="submit" class="btn btn-info pull-right" name="rekapAll" id="rekapAll" >Lihat Rekap</button>
                                            
                                            <p>   </p>
                                            <button target="_blank" formaction="executecetak.php" type="submit" class="btn btn-flat btn-primary btn-md pull-right" name="btn" value="nilai-input"><span class="fa fa-print">  Cetak</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </form>

                            </div>


                                <div class="box">

                                                <div class="box-header">
                                                        <h3 class="box-title">Data Rekap</h3>
                                                </div>
                                    
                                                <div class="box-body" id="detail_rekap">
                                                    <?php showrekap();?>
                                                </div>
                                                <!-- /.box-body -->
                                </div>

                    </div>
                    <!-- /.container -->
                </div>



                    



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

