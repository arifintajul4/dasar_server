      <div class="box box-default">
          <div class="box-header with-border">
            <h3 class="box-title">Jadwal Laboratorium</h3>
          </div>
          <div class="box-body">
            

           
                <!-- Custom Tabs -->
                <div class="nav-tabs-custom">
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab_1" data-toggle="tab">Senin</a></li>
                    <li><a href="#tab_2" data-toggle="tab">Selasa</a></li>
                    <li><a href="#tab_3" data-toggle="tab">Rabu</a></li>
                    <li><a href="#tab_4" data-toggle="tab">Kamis</a></li>
                    <li><a href="#tab_5" data-toggle="tab">Jumat</a></li>
                    <li><a href="#tab_6" data-toggle="tab">Sabtu</a></li>
                    <!-- <li class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Dropdown <span class="caret"></span>
                      </a>
                      <ul class="dropdown-menu">
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                        <li role="presentation" class="divider"></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                      </ul>
                    </li> -->
                    <!-- <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li> -->
                  </ul>
                  <div class="tab-content">
                    <div class="tab-pane active" id="tab_1">


                      <div class="box">
                        <div class="box-header">
                          <h3 class="box-title">Senin</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                          <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                              <th>Jam</th>
                              <th>Kode Matakuliah</th>
                              <th>Matakuliah</th>
                              <th>Kelas</th>
                              <th>Dosen</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php 
                            include 'connection.php';

                            $sql = "SELECT * FROM tabs_diawal_mon";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                // output data of each row
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr><th>".$row["jam_matkul"]."</th><td>".$row["kode_matkul"]."</td><td>".$row["nama_matkul"].
                                    "</td><td>".$row["kelas_matkul"]."</td><td>".$row["nama_dosen"]."</td></tr>";
                                }
                                
                            } else {
                                echo "<h3>Jadwal tidak tersedia</h3>";
                            }
                           

                         ?>
                            </tbody>
                            <!-- <tfoot>
                            <tr>
                              <th>Jam</th>
                              <th>Kode Matakuliah</th>
                              <th>Matakuliah</th>
                              <th>Kelas</th>
                              <th>Dosen</th>
                            </tr>
                            </tfoot> -->
                          </table>
                        </div>
                        <!-- /.box-body -->
                      </div>
                      <!-- /.box -->


                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="tab_2">
                        <div class="box">
                            <div class="box-header">
                              <h3 class="box-title">Selasa</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                              <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                  <th>Jam</th>
                                  <th>Kode Matakuliah</th>
                                  <th>Matakuliah</th>
                                  <th>Kelas</th>
                                  <th>Dosen</th>
                                </tr>
                                </thead>
                                <tbody>

                           
                                    <?php 
                                    include 'connection.php';

                                    $sql = "SELECT * FROM tabs_diawal_tue ORDER BY jam_matkul";
                                    $result = $conn->query($sql);

                                    if ($result->num_rows > 0) {
                                        // output data of each row
                                        while($row = $result->fetch_assoc()) {
                                            echo "<tr><th>".$row["jam_matkul"]."</th><td>".$row["kode_matkul"]."</td><td>".$row["nama_matkul"].
                                            "</td><td>".$row["kelas_matkul"]."</td><td>".$row["nama_dosen"]."</td></tr>";
                                        }
                                        
                                    } else {
                                        echo "<h3>Jadwal tidak tersedia</h3>";
                                    }
                                   

                                ?>
                                </tbody>
                                <!-- <tfoot>
                                <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                                </tr>
                                </tfoot> -->
                              </table>
                            </div>
                            <!-- /.box-body -->
                          </div>
                          <!-- /.box -->
    
                    </div>
                    <!-- /.tab-pane -->

                    <div class="tab-pane" id="tab_3">
                        <div class="box">
                            <div class="box-header">
                              <h3 class="box-title">Rabu</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                              <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                  <th>Jam</th>
                                  <th>Kode Matakuliah</th>
                                  <th>Matakuliah</th>
                                  <th>Kelas</th>
                                  <th>Dosen</th>
                                </tr>
                                </thead>
                                <tbody>
                                            <?php 
                                        include 'connection.php';

                                        $sql = "SELECT * FROM tabs_diawal_wed";
                                        $result = $conn->query($sql);

                                        if ($result->num_rows > 0) {
                                            // output data of each row
                                            while($row = $result->fetch_assoc()) {
                                                echo "<tr><th>".$row["jam_matkul"]."</th><td>".$row["kode_matkul"]."</td><td>".$row["nama_matkul"].
                                                "</td><td>".$row["kelas_matkul"]."</td><td>".$row["nama_dosen"]."</td></tr>";
                                            }
                                            
                                        } else {
                                            echo "<h3>Jadwal tidak tersedia</h3>";
                                        }
                                        
                                    ?>
                                </tbody>
                                <!-- <tfoot>
                                <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                                </tr>
                                </tfoot> -->
                              </table>
                            </div>
                            <!-- /.box-body -->
                          </div>
                          <!-- /.box -->
    
                    </div>
                    <!-- /.tab-pane -->

                    <div class="tab-pane" id="tab_4">
                        <div class="box">
                            <div class="box-header">
                              <h3 class="box-title">Kamis</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                              <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                  <th>Jam</th>
                                  <th>Kode Matakuliah</th>
                                  <th>Matakuliah</th>
                                  <th>Kelas</th>
                                  <th>Dosen</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php 
                            include 'connection.php';

                            $sql = "SELECT * FROM tabs_diawal_thu";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                // output data of each row
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr><th>".$row["jam_matkul"]."</th><td>".$row["kode_matkul"]."</td><td>".$row["nama_matkul"].
                                    "</td><td>".$row["kelas_matkul"]."</td><td>".$row["nama_dosen"]."</td></tr>";
                                }
                                
                            } else {
                                echo "<h3>Jadwal tidak tersedia</h3>";
                            }
                           

                         ?>
                                </tbody>
                                <!-- <tfoot>
                                <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                                </tr>
                                </tfoot> -->
                              </table>
                            </div>
                            <!-- /.box-body -->
                          </div>
                          <!-- /.box -->
    
                    </div>
                    <!-- /.tab-pane -->

                    <div class="tab-pane" id="tab_5">
                        <div class="box">
                            <div class="box-header">
                              <h3 class="box-title">Jumat</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                              <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                  <th>Jam</th>
                                  <th>Kode Matakuliah</th>
                                  <th>Matakuliah</th>
                                  <th>Kelas</th>
                                  <th>Dosen</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php 
                            include 'connection.php';

                            $sql = "SELECT * FROM tabs_diawal_fri";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                // output data of each row
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr><th>".$row["jam_matkul"]."</th><td>".$row["kode_matkul"]."</td><td>".$row["nama_matkul"].
                                    "</td><td>".$row["kelas_matkul"]."</td><td>".$row["nama_dosen"]."</td></tr>";
                                }
                                
                            } else {
                                echo "<h3>Jadwal tidak tersedia</h3>";
                            }
                            

                         ?>
                                </tbody>
                                <!-- <tfoot>
                                <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                                </tr>
                                </tfoot> -->
                              </table>
                            </div>
                            <!-- /.box-body -->
                          </div>
                          <!-- /.box -->
    
                    </div>
                    <!-- /.tab-pane -->


                    <div class="tab-pane" id="tab_6">
                        <div class="box">
                            <div class="box-header">
                              <h3 class="box-title">Sabtu</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                              <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                  <th>Jam</th>
                                  <th>Kode Matakuliah</th>
                                  <th>Matakuliah</th>
                                  <th>Kelas</th>
                                  <th>Dosen</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php 
                            include 'connection.php';

                            $sql = "SELECT * FROM tabs_diawal_sat";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                // output data of each row
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr><th>".$row["jam_matkul"]."</th><td>".$row["kode_matkul"]."</td><td>".$row["nama_matkul"].
                                    "</td><td>".$row["kelas_matkul"]."</td><td>".$row["nama_dosen"]."</td></tr>";
                                }
                                
                            } else {
                                echo "<h3>Jadwal tidak tersedia</h3>";
                            }
                            

                         ?>
                                </tbody>
                                <!-- <tfoot>
                                <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                                </tr>
                                </tfoot> -->
                              </table>
                            </div>
                            <!-- /.box-body -->
                          </div>
                          <!-- /.box -->
    
                    </div>
                    <!-- /.tab-pane -->
                  </div>
                  <!-- /.tab-content -->
                

            
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
    
    
    
    
