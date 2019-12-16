<?php 
    
?>


<nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="#" onclick="balik();return false;" class="navbar-brand"><b>BASIC</b>Lab</a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
          <ul class="nav navbar-nav">
                <li><a href="#" onclick="mtr();return false;">Materi</a></li>
          </ul>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">


            <?php 
            
            if(!isset($_SESSION['use'])){
                ?>
                    
                <?php
            }else{

                        $nim = $_SESSION['use'];
                        $sql = "SELECT * FROM mhs where nim='$nim'";
                        $result = $conn->query($sql);
                        
                        if ($result->num_rows > 0) {
                        // output data of each row
                        while($row = $result->fetch_assoc()) {
                        $nama = $row["nama_mhs"];
                        $statusMhs = $row["status_mhs"]; 
                        }
                    }


                    if($statusMhs=="Asisten"){
                        ?>
                            <ul class="nav navbar-nav">
                            <!-- <li class="active"><a href="#">Beranda <span class="sr-only">(current)</span></a></li> -->
                                
                                

                            <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tambah <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" onclick="tbhinfo();return false;">Informasi</a></li>
                                <li class="divider"></li>
                                <li><a href="#" onclick="tbhmk();return false;">Matakuliah</a></li>
                                <li><a href="#" onclick="tbhkls();return false;">Kelas</a></li>
                                <li><a href="#" onclick="tbhdsn();return false;">Dosen</a></li>
                            </ul>
                            </li>

                            <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Upload <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" onclick="upldPretest();return false;">Pretest</a></li>
                                <li class="divider"></li>
                                <li><a href="#" onclick="upldmtr();return false;">Materi</a></li>
                                <li><a href="#">Tugas</a></li>
                                <li><a href="#">Ujian</a></li>
                            </ul>
                            </li>

                            <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nilai <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Poin</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Pretest</a></li>
                                <li><a href="#">Laporan</a></li>
                                <li><a href="#">Tugas</a></li>
                            </ul>
                            </li>

                                    <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Input Nilai <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Poin</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Pretest</a></li>
                            <li><a href="#">Laporan</a></li>
                            <li><a href="#">Tugas</a></li>
                            </ul>
                        </li>
                        <li><a href="#" onclick="rekap();return false;">Rekap</a></li>
                        </ul>
                        <?php
                    }else{
                        ?>

                        <ul class="nav navbar-nav">
                            
                            <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Upload <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" onclick="upldPretest();return false;">Pretest</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Tugas</a></li>
                                <li><a href="#">Ujian</a></li>
                            </ul>
                            </li>

                            <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nilai <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Poin</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Pretest</a></li>
                                <li><a href="#">Laporan</a></li>
                                <li><a href="#">Tugas</a></li>
                            </ul>
                            </li>
                            
                        </ul>

                        <?php
                    }


            }

            ?>
            
        </div>
        <!-- /.navbar-collapse -->
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->
            


           <?php 
           
           if(!isset($_SESSION['use'])) // If session is not set then redirect to Login Page
                {
                    ?>
                    
                                    <!-- User Account Menu -->
                            <li class="dropdown user user-menu">
                            <!-- Menu Toggle Button -->
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <!-- The user image in the navbar-->
                                <img src="dist/img/avatar2.png" class="user-image" alt="User Image">
                                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                <span class="hidden-xs">Login</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- The user image in the menu -->
                                

                                <!-- Horizontal Form -->
                        <div class="box box-info">
                            <div class="box-header with-border">
                                <h3 class="box-title">Silahkan Login</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <form action="" method="post" class="form-horizontal">
                                <div class="box-body">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-4 control-label">NIM</label>
                
                                    <div class="col-sm-8">
                                    <input type="text" class="form-control" name ="inputNIM" placeholder="NIM">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-4 control-label">Password</label>
                
                                    <div class="col-sm-8">
                                    <input type="password" class="form-control" id= "inputPassword" name="inputPassword" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-8">
                                    <div class="checkbox">
                                        <a href="#" class="pull-right">Lupa Password?</a>
                                    </div>
                                    </div>
                                </div>
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                <button type="button" data-toggle="modal" data-target="#modal-info" class="btn btn-default">Register</button>
                                <button type="submit" name="login" id="login" class="btn btn-info pull-right">Sign in</button>
                                </div>
                                <!-- /.box-footer -->
                            </form>
                            </div>
                            <!-- /.box -->


                            </ul>
                            </li>


                                    
                                                
                    <?php
                }
            else{
                    ?>

                    <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- The user image in the navbar-->
                <img src="dist/img/avatar5.png" class="user-image" alt="User Image">
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs"><?php   echo $_SESSION['use']; ?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- The user image in the menu -->
                <li class="user-header">
                  <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                  <p>
                  <?php echo $_SESSION['use']." - ".$statusMhs; ?> 
                    <small><?php echo $nama; ?></small>
                  </p>
                </li>
                <!-- Menu Body -->
                <li class="user-body">

                <?php 
                
                if($statusMhs=="Asisten"){
                    ?>
                        <a href="#" class="text-center" data-dismiss="modal" onclick="tbhinfo();return false;">Buat Informasi</a>
                    <?php
                }
                
                ?>

                  <!-- <div class="row">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </div> -->
                  <!-- /.row -->
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="#" class="btn btn-default btn-flat">Pengaturan</a>
                  </div>
                  <div class="pull-right">
                    <a href="logout.php" class="btn btn-default btn-flat">Keluar</a>
                  </div>
                </li>
              </ul>
            </li>

                    <?php

                }

           ?>

        
           
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>

    