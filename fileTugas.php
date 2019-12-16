<?php
if(isset($_POST["kode_matkul"])){
    $output = '';
    $connect= mysqli_connect("localhost","root","","db_dasar");
    $query = "SELECT * FROM matkul where kode_matkul='".$_POST["kode_matkul"]."'";
    $result = mysqli_query($connect,$query);
    while($row = mysqli_fetch_array($result)){
        $nmMK = $row["nama_matkul"];
    }

    $mkFile = scandir('matkul/'.$nmMK.'/tugas');
        
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
                                    $path = 'matkul/'.$nmMK.'/tugas'.'/'.$file;
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
?>