<?php
if(isset($_POST["kode_matkul"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM matkul where kode_matkul='".$_POST["kode_matkul"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmMK = $row["nama_matkul"];
    }

    $mkFile = scandir('matkul/'.$nmMK.'/pretest');
        
        $output .='
        <div class="register-box-body">
	        <div class="box">
              <div class="box-header">
                  <h3 class="box-title">'.$nmMK.'</span></h3>
              </div>
                 <!-- /.box-header -->
                   <div class="box-body no-padding">
                       <table class="table table-striped">
                            <tr>
                                <th>File</th>
                                <th style="width: 40px"> </th>
                            </tr>';
                            foreach($mkFile as $file){
                                if($file === '.' or $file === '..'){
                                    continue;
                                }else{
                                    $path = 'matkul/'.$nmMK.'/pretest'.'/'.$file;
                                    $output .= '
                                    <tr>
                                        <td>'.$file.'</td>
                                        <td><span class="badge bg-green">Sukses</span></td>
                                    </tr>
                                    ';
                                }
                            }

                            $output .='
                                                </table>
                                                </div>
                                                <!-- /.box-body -->
                                        </div>
                                        <!-- /.box -->
                            
                                
                                        <p class="help-block text-center">Harap perhatikan instruksi dari Asisten</p>
                                
                            </div>
                            <!-- /.register-box -->
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
                     
                       <h4>Apakah anda yakin ingin menghapus NIM : '.$nimPOIN.' - Kode Matkul '.$kdMkPOIN.' - Laporan ke-'.$lapKePOIN.' - Nilai : '.$nilaiPOIN.'?</h4>
                   
                   </div>
                   <!-- /.box-body -->
                   <div class="box-footer">
                     <button type="submit" class="btn btn-danger pull-right" id="hapusTugas" value="'.$_POST["tgl_input"].'" name="hapusTugas">Hapus</button>
                   </div>
                   <!-- /.box-footer -->
                 </form>      
                   </div>
            </div>
        </div>           
                   ';
                           
                            

    echo $output;
}


?>