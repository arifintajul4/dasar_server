<?php

use Illuminate\Mail\Message;

session_start();
include 'connection.php';
$mk = "SELECT * FROM matkul";
$result = $conn->query($mk);
//var_dump($result->fetch_assoc()); die;
if ($result->num_rows > 0) {
  $pilihmk = '<option>Pilih Matakuliah...</option>';
  while ($row = $result->fetch_assoc()) {
    $pilihmk .= '<option  value="' . $row['kode_matkul'] . '">' . $row['nama_matkul'] . '</option>';
  }
} else {
  echo "0 results";
}

if (isset($_POST['matkul']) && isset($_POST['kelas']))
{
  $mk = $_POST['matkul'];
  $kls = $_POST['kelas'];
  $query = "SELECT * FROM mhs_detail WHERE kode_matkul='".$mk."' AND kelas_mhs = '".$kls."'";
  $result = $conn->query($query);
  if ($result->num_rows > 0) {
    
  }else{
    $result= "Data Kosong";
  }
  //echo json_encode($result->fetch_assoc());
  exit;
}


if (isset($_POST['matkul']))
{
  $mk = $_POST['matkul'];
  $query = "SELECT * FROM `matkul_detail` WHERE `kode_matkul` = '".$mk."'";
  $result = $conn->query($query);

  if ($result->num_rows > 0) {
    $kelas = '<option>Pilih Kelas...</option>';
    while ($row = $result->fetch_assoc()) {
      $kelas .= '<option  value="' . $row['kelas_matkul'] . '">' .  $row['kelas_matkul'] . '</option>';
    }
    echo $kelas;
  }else{
    echo "0 results";
  }
  //echo json_encode($result->fetch_assoc());
  exit;
}

if (isset($_POST['inputTugas']))   // it checks whether the user clicked login button or not 
{
  $nimTug = $_POST['inputTugNIM'];
  $kdMKTug = $_POST['matkul'];
  $kelasTug = $_POST['inputTugKelas'];
  $TugKe = $_POST['inputTugKe'];
  $nilaiTug = $_POST['inputTugNilai'];

  if (isset($_SESSION['use'])) {

    $qcek = "SELECT * FROM mhs where nim='" . $_SESSION['use'] . "'";
    $result = $conn->query($qcek);

    if ($result->num_rows > 0) {
      // output data of each row
      while ($row = $result->fetch_assoc()) {
        $stats = $row["status_mhs"];
      }

      if ($stats == "Asisten") {

        if ($nimTug == "" || $kdMKTug == "" || $kelasTug == "" || $TugKe == "" || $nilaiTug == "") {
          echo "<script> gagalDaftar(); </script>";
        } else {
          $result = mysqli_query($conn, "INSERT INTO mhs_detail(nim,kode_matkul,kelas_mhs,lapKe,nilai,jenis,tgl_input, penginput) VALUES
                            ('" . $nimTug . "','" . $kdMKTug . "','" . $kelasTug . "','" . $TugKe . "','" . $nilaiTug . "','Tugas','" . date("Y-m-d/hms") . "','" . $_SESSION['use'] . "')");
          if ($result) {
            echo "success";
          } else {
            // echo "<script> berhasilDaftar(); </script>";
            echo "fail";
          }
        }
      }
    }
  }



  exit;
}

if (isset($_POST['eksport']))   // it checks whether the user clicked login button or not 
{
  $kdMKTug = $_POST['matkul'];
  $kelasTug = $_POST['kelas'];

  if (isset($_SESSION['use'])) {

    $qcek = "SELECT * FROM mhs where nim='" . $_SESSION['use'] . "'";
    $result = $conn->query($qcek);

    if ($result->num_rows > 0) {
      // output data of each row
      while ($row = $result->fetch_assoc()) {
        $stats = $row["status_mhs"];
      }

      if ($stats == "Asisten") {

        if ($nimTug == "" || $kdMKTug == "" || $kelasTug == "" || $TugKe == "" || $nilaiTug == "") {
          echo "<script>  (); </script>";
        } else {
          $result = mysqli_query($conn, "INSERT INTO mhs_detail(nim,kode_matkul,kelas_mhs,lapKe,nilai,jenis,tgl_input, penginput) VALUES
                            ('" . $nimTug . "','" . $kdMKTug . "','" . $kelasTug . "','" . $TugKe . "','" . $nilaiTug . "','Tugas','" . date("Y-m-d/hms") . "','" . $_SESSION['use'] . "')");
          if ($result) {
            echo "success";
          } else {
            // echo "<script> berhasilDaftar(); </script>";
            echo "fail";
          }
        }
      }
    }
  }



  exit;
}

?>


<section class="content">

  <!-- Horizontal Form -->
  <div class="box box-info">
    <div class="box-header with-border">
      <h3 class="box-title">Export Nilai!</h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <form class="form-horizontal" action="" method="post" id="form_tugas">
      <div class="box-body">


        <div class="form-group">
          <label for="matkul" class="col-sm-2 control-label">Nama Matakuliah</label>
          <div class="col-sm-10">
            <select class="form-control select2" style="width: 100%;" id="matkul" name="matkul">
              <?php echo $pilihmk ?>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label for="kelas" class="col-sm-2 control-label">Kelas</label>

          <div class="col-sm-10">
            <select class="form-control select2" style="width: 100%;" id="kelas" name="kelas">

            </select>
            <!-- <input type="text" class="form-control select2" id="inputTugKelas" name="inputTugKelas"> -->
          </div>
        </div>





        <!-- /.box-body -->

        <!-- /.box-footer -->



        <div class="form-group">
          <label for="eksport" class="col-sm-2 control-label"> </label>

          <div class="col-sm-10">
            <div class="box-footer">
              <input type="hidden" name="eksport" value="">
              <!-- <button type="submit" class="btn btn-default" onclick="balik();return false;">Batal</button> -->
              <button type="button" class="btn btn-info pull-right" name="eksport" id="eksport">Eksport</button>
            </div>
            <!-- /.box -->
          </div>
        </div>




      </div>


    </form>
  </div>

</section>

<!-- CK Editor -->
<script src="bower_components/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>

<script>
  $(function() {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>

<!-- DataTables -->
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->

<script>
  $.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
      if (o[this.name]) {
        if (!o[this.name].push) {
          o[this.name] = [o[this.name]];
        }
        o[this.name].push(this.value || '');
      } else {
        o[this.name] = this.value || '';
      }
    });
    return o;
  };

  $(function() {


    // handle ketika klik eksport
    $('#eksport').on('click', function() {

      var matkul = $('#matkul').val();
      var kelas = $('#kelas').val();
      console.log(matkul +' '+kelas);

      $.ajax({
        url: "eksport.php",
        method: "post",
        type: 'JSON',
        data: {
          matkul: matkul,
          kelas: kelas
        },
        success: function(data) {
          console.log(data)
        }

      });
    });

    // handle ketika klik eksport
    $('#matkul').on('change', function() {
      var matkul = $('#matkul').val();
      $.ajax({
        url: "eksport.php",
        method: "post",
        type: 'text',
        data: {
          matkul: matkul
        },
        success: function(data) {
          $('#kelas').html(data);
        }

      });
    });

  })
</script>