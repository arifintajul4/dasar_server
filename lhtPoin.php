<section class="content">

<!-- Horizontal Form -->
<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Lihat Poin Tambah!</h3>
            </div>
          <?php
          session_start();
          include 'connection.php';
          $mhs = $_SESSION['use'];
          $sql = "SELECT * FROM mhs_detail where nim='$mhs' and jenis='poin'";
          $result = $conn->query($sql);

          ?>
          <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">
                  
                  <tr>
                    <th>Kode Matakuliah</th>
                    <th>Kelas</th>
                    <th>Poin Ke-</th>
                    <th>Poin</th>
                  </tr>
          
          <?php

          if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
              echo "<tr><th>".$row["kode_matkul"]."</th><td>".$row["kelas_mhs"]."</td><td>".$row["lapKe"]."</td><td>".$row["nilai"].
              "</td></tr>";
          }
          }
              // output data of each row
              ?>
              

            
            <!-- /.box-header -->
            <!-- form start -->
           
          </div>
          <!-- /.box -->
          </section>