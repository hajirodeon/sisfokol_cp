<?php
session_start();

require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/cek/adm.php");
require("../../inc/class/paging.php");
$tpl = LoadTpl("../../template/admin.html");

nocache;

//nilai
$filenya = "kalender.php";
$judul = "[MASTER] Kalender Akademik";
$judulku = "$judul";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$kunci = cegah($_REQUEST['kunci']);
$kd = nosql($_REQUEST['kd']);
$page = nosql($_REQUEST['page']);
if ((empty($page)) OR ($page == "0"))
	{
	$page = "1";
	}




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//nek baru
if ($_POST['btnBR'])
	{
	//nilai
	$ke = "$filenya?s=baru&kd=$x";
	
	
	//re-direct
	xloc($ke);
	exit();
	}



//nek batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}



//jika simpan
if ($_POST['btnSMP'])
	{
	$s = nosql($_POST['s']);
	$page = nosql($_POST['page']);
	$e_kd = nosql($_POST['e_kd']);
	$e_tgl1x = balikin($_POST['e_tgl1']);
	$e_tgl2x = balikin($_POST['e_tgl2']);
	$e_isi = cegah($_POST['e_isi']);


	$e_tgl_lahir1 = balikin($e_tgl1x);
	$tglku = explode("/", $e_tgl_lahir1);
	$e_tgl = trim($tglku[1]);
	$e_bulan = trim($tglku[0]);
	$e_tahun = trim($tglku[2]);
	$e_tgl1 = "$e_tahun:$e_bulan:$e_tgl";
	$e_tgl1x = "$e_tahun-$e_bulan-$e_tgl";


	$e_tgl_lahir1 = balikin($e_tgl2x);
	$tglku = explode("/", $e_tgl_lahir1);
	$e_tgl = trim($tglku[1]);
	$e_bulan = trim($tglku[0]);
	$e_tahun = trim($tglku[2]);
	$e_tgl2 = "$e_tahun:$e_bulan:$e_tgl";
	$e_tgl2x = "$e_tahun-$e_bulan-$e_tgl";



	
	

	//nek null
	if ((empty($e_tgl1)) OR (empty($e_isi)))
		{
		//re-direct
		$pesan = "Belum Ditulis. Harap Diulangi...!!";
		$ke = "$filenya?s=$s&kd=$e_kd";
		pekem($pesan,$ke);
		exit();
		}
	else
		{
		//jika baru
		if ($s == "baru")
			{
			//insert
			mysqli_query($koneksi, "INSERT INTO cp_kalender(kd, tgl1, tgl2, judul, postdate) VALUES ".
							"('$e_kd', '$e_tgl1', '$e_tgl2', '$e_isi', '$today')");



			//detek list tgl
			//jika gak null
			if ($e_tgl2 != "0000:00:00")
				{
			    $date_from = $e_tgl1x;   
			    $date_from = strtotime($date_from);  
			  
			    $date_to = $e_tgl2x;  
			    $date_to = strtotime($date_to);   
			      
			    // Loop   
			    for ($i=$date_from; $i<=$date_to; $i+=86400) 
			    	{
			    	$xyz = md5("$x$i");  
			        $tglnya = date("Y:m:d", $i);
					
					//masukin
					mysqli_query($koneksi, "INSERT INTO cp_kalender_detail(kd, kalender_kd, tgli, judul, postdate) VALUES ".
									"('$xyz', '$e_kd', '$tglnya', '$e_isi', '$today')");					  
				    }
				}
				
				
				  
			

			//re-direct
			xloc($filenya);
			exit();
			}
			
			
				
				
		//jika update
		if ($s == "edit")
			{
			//update
			mysqli_query($koneksi, "UPDATE cp_kalender SET tgl1 = '$e_tgl1', ".
							"tgl2 = '$e_tgl2', ".
							"judul = '$e_isi', ".
							"postdate = '$today' ".
							"WHERE kd = '$e_kd'");

							
			//hapus dulu detailnya
			mysqli_query($koneksi, "DELETE FROM cp_kalender_detail ".
							"WHERE kalender_kd = '$e_kd'");
			
			
			
			//insert lagi...			
			//detek list tgl
			//jika gak null
			if ($e_tgl2 != "0000:00:00")
				{
			    $date_from = $e_tgl1x;   
			    $date_from = strtotime($date_from);  
			  
			    $date_to = $e_tgl2x;  
			    $date_to = strtotime($date_to);   
			      
			    // Loop   
			    for ($i=$date_from; $i<=$date_to; $i+=86400) 
			    	{
			    	$xyz = md5("$x$i");  
			        $tglnya = date("Y:m:d", $i);
					
					//masukin
					mysqli_query($koneksi, "INSERT INTO cp_kalender_detail(kd, kalender_kd, tgli, judul, postdate) VALUES ".
									"('$xyz', '$e_kd', '$tglnya', '$e_isi', '$today')");					  
				    }
				}
				
			

			//re-direct
			xloc($filenya);
			exit();
			}

		}
	}

	
	
	

//jika hapus
if ($_POST['btnHPS'])
	{
	//ambil nilai
	$jml = nosql($_POST['jml']);
	$ke = $filenya;

	//ambil semua
	for ($i=1; $i<=$jml;$i++)
		{
		//ambil nilai
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del
		mysqli_query($koneksi, "DELETE FROM cp_kalender ".
						"WHERE kd = '$kd'");
						
						
		//hapus detailnya
		mysqli_query($koneksi, "DELETE FROM cp_kalender_detail ".
						"WHERE kalender_kd = '$kd'");
		}


	//auto-kembali
	xloc($ke);
	exit();
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi *START
ob_start();


?>



<!-- Bootstrap core JavaScript -->
<script src="<?php echo $sumber;?>/template/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<!-- Bootstrap core CSS -->
<link href="<?php echo $sumber;?>/template/vendor/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet">




<script language='javascript'>
//membuat document jquery
$(document).ready(function(){

    $('#e_tgl1').datepicker({
        format: 'dd/mm/yyyy',
        todayHighlight: true,
        autoclose: true,
    })

    $('#e_tgl2').datepicker({
        format: 'dd/mm/yyyy',
        todayHighlight: true,
        autoclose: true,
    })
    
    
		
});

</script>



  
  <script>
  	$(document).ready(function() {
    $('#table-responsive').dataTable( {
        "scrollX": true
    } );
} );
  </script>
  
<?php
//require
require("../../template/js/jumpmenu.js");
require("../../template/js/checkall.js");
require("../../template/js/swap.js");


//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo '<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx">

<p>
<input name="btnBR" type="submit" value="BUAT BARU" class="btn btn-danger">
<hr>
</p>';


    
    

if (($s == "baru") OR ($s == "edit"))
	{
	//edit
	$qx = mysqli_query($koneksi, "SELECT * FROM cp_kalender ".
						"WHERE kd = '$kd'");
	$rowx = mysqli_fetch_assoc($qx);
	$e_kd = nosql($rowx['kd']);
	$e_tgl1x = balikin($rowx['tgl1']);
	$e_tgl2x = balikin($rowx['tgl2']);
	$e_isi = balikin($rowx['judul']);
		

	$e_tgl_lahir1 = balikin($e_tgl1x);
	$tglku = explode("-", $e_tgl_lahir1);
	$e_tgl = trim($tglku[2]);
	$e_bulan = trim($tglku[1]);
	$e_tahun = trim($tglku[0]);
	$e_tgl1 = "$e_bulan/$e_tgl/$e_tahun";
		

	$e_tgl_lahir1 = balikin($e_tgl2x);
	$tglku = explode("-", $e_tgl_lahir1);
	$e_tgl = trim($tglku[2]);
	$e_bulan = trim($tglku[1]);
	$e_tahun = trim($tglku[0]);
	$e_tgl2 = "$e_bulan/$e_tgl/$e_tahun";
	
	
	
	echo '<table border="0" cellspacing="0" cellpadding="3" bgcolor="white">
	<tr valign="top">
	<td>
	
	<p>
	Tanggal Mulai : 
	<br>
	<input name="e_tgl1" id="e_tgl1" type="text" size="10" value="'.$e_tgl1.'" class="btn-warning">
	</p>
	
	
	<p>
	Tanggal Akhir : 
	<br>
	<input name="e_tgl2" id="e_tgl2" type="text" size="10" value="'.$e_tgl2.'" class="btn-warning">
	</p>
	
	<p>
	Keterangan : 
	<br>

	<input name="e_isi" type="text" size="30" value="'.$e_isi.'" class="btn-warning">
	</p>
	
	</td>

	</tr>
	</table>
	
	
	<p>
	<hr>	
	
	<input name="s" type="hidden" value="'.$s.'">
	<input name="e_kd" type="hidden" value="'.$kd.'">
	<input name="page" type="hidden" value="'.$page.'">

	
	<input name="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">
	<input name="btnBTL" type="submit" value="BATAL" class="btn btn-info">
	<hr>
	</p>';
	}
	
	
else
	{
	//query
	$p = new Pager();
	$start = $p->findStart($limit);
	
	$sqlcount = "SELECT * FROM cp_kalender ".
					"ORDER BY tgl1 DESC";
	$sqlresult = $sqlcount;
	
	$count = mysqli_num_rows(mysqli_query($sqlcount));
	$pages = $p->findPages($count, $limit);
	$result = mysqli_query($koneksi, "$sqlresult LIMIT ".$start.", ".$limit);
	$pagelist = $p->pageList($_GET['page'], $pages, $target);
	$data = mysqli_fetch_array($result);



	$warnatext = "orange";
	
	echo '<div class="table-responsive">          
		  <table class="table" border="1">
		    <thead>
				
	<tr bgcolor="'.$warnaheader.'">
	<td width="16">&nbsp;</td>
	<td width="30">&nbsp;</td>
	<td width="150"><strong><font color="'.$warnatext.'">Tanggal Mulai</font></strong></td>
	<td width="150"><strong><font color="'.$warnatext.'">Tanggal Akhir</font></strong></td>
	<td><strong><font color="'.$warnatext.'">Keterangan</font></strong></td>
	</tr>
	
		    </thead>
		    <tbody>';
	
	if ($count != 0)
		{
		do {
			if ($warna_set ==0)
				{
				$warna = $warna01;
				$warna_set = 1;
				}
			else
				{
				$warna = $warna02;
				$warna_set = 0;
				}
	
			$nomer = $nomer + 1;
			$e_kd = nosql($data['kd']);
			$e_tgl1 = balikin($data['tgl1']);
			$e_tgl2 = balikin($data['tgl2']);
			$e_isi = balikin($data['judul']);
			$e_postdate = balikin($data['postdate']);

	
			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td>
			<input type="checkbox" name="item'.$nomer.'" value="'.$e_kd.'">
	        </td>
			<td>
			<a href="'.$filenya.'?s=edit&kd='.$e_kd.'"><img src="'.$sumber.'/template/img/edit.gif" width="16" height="16" border="0"></a>
			</td>
			<td>'.$e_tgl1.'</td>
			<td>'.$e_tgl2.'</td>
			<td>'.$e_isi.'</td>
	        </tr>';
			}
		while ($data = mysqli_fetch_assoc($result));
		}
	
	
	echo '</tbody>
		  </table>
		  </div>
		  
	<table width="100%" border="0" cellspacing="0" cellpadding="3">
	<tr>
	<td>
	<strong><font color="#FF0000">'.$count.'</font></strong> Data. '.$pagelist.'
	<input name="jml" type="hidden" value="'.$count.'">
	<br>
	<input name="btnALL" type="button" value="SEMUA" onClick="checkAll('.$count.')" class="btn btn-primary">
	<input name="btnBTL" type="reset" value="BATAL" class="btn btn-warning">
	<input name="btnHPS" type="submit" value="HAPUS" class="btn btn-danger">
	</td>
	</tr>
	</table>';
	}
	

echo '</form>';

//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");



//null-kan
xclose($koneksi);
exit();
?>