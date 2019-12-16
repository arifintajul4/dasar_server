<?php

?>

<style type="text/css">
	
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
}


</style>

<?php 

include 'connection.php';
session_start();
$jens = $_POST['JenisRekap'];
$kodeMK = $_POST['matkul'];
$kelas = $_POST['kelas'];
$btsRKP = $_POST['batasRekap'];

$sqli = "SELECT * FROM matkul where kode_matkul='$kodeMK'";
$resu = $conn->query($sqli);
$no=1;
if ($resu->num_rows > 0) {
    while($ros = $resu->fetch_assoc()) {
        $matk=$ros['nama_matkul'];
    }
}
   


$file="REKAP LAPORAN ".$kodeMK." KELAS ".strtoupper($kelas).".xls";
header("Content-type: application/vnd.ms-excel");
header("Content-Disposition: attachment; filename=$file");

?>

<?php

if(isset($_SESSION['use'])){
    $qcek = "SELECT * FROM mhs where nim='".$_SESSION['use']."'";
     $result = $conn->query($qcek);
     if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $stats = $row["status_mhs"];  
        }
        if($stats == "Asisten"){
           if($btsRKP>0){
                ?>

                    <table>

                        <tr>
                            <td>Kode Matakuliah :</td>
                            <td><?php echo $kodeMK; ?></td>
                            <td><?php echo $matk; ?></td>
                            <td><?php echo "Nilai ".$jens; ?></td>
                        </tr>
                        <tr>
                            <td>Kelas :</td>
                            <td><?php echo strtoupper($kelas); ?></td>
                            <td><?php echo "Dicetak oleh : ".$_SESSION['use'].". Pada ".date("Y/m/d"); ?></td>
                        </tr>
                            
                        <tr>
                            <th>No.</th>
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

                        <?php
                        $sql = "SELECT * FROM mhs_detail JOIN mhs ON mhs_detail.nim = mhs.nim where jenis='$jens' and kode_matkul='$kodeMK' and kelas_mhs='$kelas' group by mhs.nim";
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
                                                                                            $sql2 = "SELECT * FROM mhs_detail JOIN mhs ON mhs_detail.nim = mhs.nim where mhs.nim='$nimNya' and mhs_detail.jenis='$jens' and mhs_detail.kode_matkul='$kodeMK' and mhs_detail.kelas_mhs='$kelas'and mhs_detail.lapKe='$n' group by mhs.nim";
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
                            echo "No Data";
                        }


                        ?>

                        </table>

                <?php
           }
        }else{
            echo "Bukan urusan anda menanyakan hal itu! :)";
        }
     }
}

    

?>




