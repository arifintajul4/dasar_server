<?php session_start();
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


if (isset($_POST['inputTugas']))   // it checks whether the user clicked login button or not 
{
  $nimTug = $_POST['inputTugNIM'];
  $kdMKTug = $_POST['tmbhInfoNama'];
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
  $kdMKTug = $_POST['tmbhInfoNama'];
  $kelasTug = $_POST['inputKelas'];

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
          <label for="tmbhInfoNama" class="col-sm-2 control-label">Nama Matakuliah</label>
          <div class="col-sm-10">
            <select class="form-control select2" style="width: 100%;" id="tmbhInfoNama" name="tmbhInfoNama">
              <?php echo $pilihmk ?>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label for="inputKelas" class="col-sm-2 control-label">Kelas</label>

          <div class="col-sm-10">
            <select class="form-control select2" style="width: 100%;" id="inputKelas" name="inputKelas">

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
              <button type="submit" class="btn btn-info pull-right" id="eksport">Eksport</button>
            </div>
            <!-- /.box -->
          </div>
        </div>




      </div>


    </form>
  </div>
  <!-- /.box -->


  <div class="box">
    <div class="box-header">
      <h3 class="box-title">Data Nilai</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <button class="btn btn-default btn-flat hapus_semua_tugas" id="tugas">Bersihkan semua data</button>
      <table id="example1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>NIM</th>
            <th>Kode Matakuliah</th>
            <th>Kelas</th>
            <th>Tugas ke-</th>
            <th>Nilai</th>
            <th>Tanggal Input</th>
            <th>Edit</th>
            <th>Hapus</th>
          </tr>
        </thead>
        <tbody>



        </tbody>
        <tfoot>
          <tr>
            <th>NIM</th>
            <th>Matakuliah</th>
            <th>Kelas</th>
            <th>Tugas ke-</th>
            <th>Nilai</th>
            <th>Tanggal Input</th>
            <th>Edit</th>
            <th>Hapus</th>
          </tr>
        </tfoot>
      </table>
    </div>
    <!-- /.box-body -->
  </div>
  <!-- /.box -->

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
    $('#example1').DataTable({
      'paging': false,
      'lengthChange': true,
      'searching': true,
      'ordering': true,
      'info': true,
      'autoWidth': true
    })

    // handle form untuk submit
    $("#form_tugas").submit(function(e) {
      e.preventDefault();

      $.ajax({
        url: "inpt_tugas.php",
        method: "post",
        data: $(this).serializeObject(),
        success: function(data) {
          $('#detail_tugas').html(data);
          $('#modal-tugas').modal("show");
        }

      });
    });

    // handle ketika pilih matkul
    $('#tmbhInfoNama').on('change', function() {
      $.ajax({
        url: "eksport.php",
        method: "post",
        data: {
          kode_mk: this.value
        },
        success: function(data) {
          console.log(data)
        }

      });
    });


    $('.edit_tugas').click(function() {
      var tgl_input = $(this).attr("id");

      $.ajax({
        url: "fileMK.php",
        method: "post",
        data: {
          tgl_input: tgl_input
        },
        success: function(data) {
          $('#detail_tugasEdt').html(data);
          $('#modal-tugasEdt').modal("show");
        }

      });
    });

    $('.hapus_semua_tugas').click(function() {
      var tugas = $(this).attr("id");

      $.ajax({
        url: "hapusdsn.php",
        method: "post",
        data: {
          tugas: tugas
        },
        success: function(data) {
          $('#detail_tugasEdt').html(data);
          $('#modal-tugasEdt').modal("show");
        }

      });
    })

    $('.hapus_tugas').click(function() {
      var tgl_input = $(this).attr("id");

      $.ajax({
        url: "filePretest.php",
        method: "post",
        data: {
          tgl_input: tgl_input
        },
        success: function(data) {
          $('#detail_tugasEdt').html(data);
          $('#modal-tugasEdt').modal("show");
        }

      });
    })


  })
</script>


<!-- Files Modals -->
<div class="modal modal-tugasEdt fade" id="modal-tugasEdt">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Edit Tugas&hellip;</h4>
      </div>
      <div class="modal-body" id="detail_tugasEdt">


      </div>


    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->