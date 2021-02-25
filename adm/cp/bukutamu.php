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
$filenya = "bukutamu.php";
$judul = "[INTERAKTIF]. Data Buku Tamu";
$judulku = "$judul  [$adm_session]";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$kd = nosql($_REQUEST['kd']);
$kdku = nosql($_REQUEST['kdku']);








//jika daftar
if($_POST['btnDF'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}
	
	



//jika hapus data
if($_POST['btnHPS'])
	{
	//ambil nilai
	$katkd = nosql($_POST['katkd']);


	//ambil semua
	for ($i=1; $i<=$limit;$i++)
		{
		//ambil nilai
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del
		mysqli_query($koneksi, "DELETE FROM cp_bukutamu ".
						"WHERE kd = '$kd'");
		}



	//re-direct
	$ke = "$filenya?katkd=$katkd";
	xloc($ke);
	exit();
	}









//isi *START
ob_start();


//js
require("../../inc/js/jumpmenu.js");
require("../../inc/js/swap.js");
require("../../inc/js/checkall.js");
require("../../inc/js/editor.js");





echo '<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx">';

//query
$p = new Pager();
$start = $p->findStart($limit);

$sqlcount = "SELECT * FROM cp_bukutamu ".
				"ORDER BY postdate DESC";
$sqlresult = $sqlcount;

$count = mysqli_num_rows(mysqli_query($sqlcount));
$pages = $p->findPages($count, $limit);
$result = mysqli_query($koneksi, "$sqlresult LIMIT ".$start.", ".$limit);
$pagelist = $p->pageList($_GET['page'], $pages, $target);
$data = mysqli_fetch_array($result);


if ($count != 0)
	{
	?>
		  <script>
	  	$(document).ready(function() {
	    $('#table-responsive').dataTable( {
	        "scrollX": true
	    } );
	} );
	  </script>


	<?php
	//view data
	echo '<div class="table-responsive">          
  <table class="table" border="1">
    <thead>

	<tr bgcolor="'.$warnaheader.'">
	<td width="1">&nbsp;</td>
	<td><strong><font color="'.$warnatext.'">Postdate</font></strong></td>
	<td><strong><font color="'.$warnatext.'">Nama</font></strong></td>
	<td><strong><font color="'.$warnatext.'">Alamat</font></strong></td>
	<td><strong><font color="'.$warnatext.'">Telp</font></strong></td>
	<td><strong><font color="'.$warnatext.'">E-Mail</font></strong></td>
	<td><strong><font color="'.$warnatext.'">Situs</font></strong></td>
	<td><strong><font color="'.$warnatext.'">Isi</font></strong></td>
	</tr>
	</thead>
	<tbody>';
	


	do
		{
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

		//nilai
		$nomer = $nomer + 1;
		$i_kd = nosql($data['kd']);
		$i_nama = balikin($data['nama']);
		$i_alamat = balikin($data['alamat']);
		$i_telp = balikin($data['telp']);
		$i_situs = balikin($data['situs']);
		$i_email = balikin($data['email']);
		$i_isi = balikin($data['isi']);
		$i_postdate = $data['postdate'];


		
		




		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td><input name="kd'.$nomer.'" type="hidden" value="'.$i_kd.'">
		<input type="checkbox" name="item'.$nomer.'" value="'.$i_kd.'">
		</td>
		<td>'.$i_postdate.'</td>
		<td>'.$i_nama.'</td>
		<td>'.$i_alamat.'</td>
		<td>'.$i_telp.'</td>
		<td>'.$i_situs.'</td>
		<td>'.$i_email.'</td>
		<td>'.$i_isi.'</td>
		</tr>';
		}
	while ($data = mysqli_fetch_assoc($result));

	echo '</tbody>
		  </table>
		  </div>



	<table width="100%" border="0" cellspacing="0" cellpadding="3">
	<tr>
	<td width="300">
	<input name="jml" type="hidden" value="'.$limit.'">
	<input name="s" type="hidden" value="'.nosql($_REQUEST['s']).'">
	<input name="m" type="hidden" value="'.nosql($_REQUEST['m']).'">
	<input name="kdku" type="hidden" value="'.nosql($_REQUEST['kdku']).'">
	<input name="btnALL" type="button" value="SEMUA" onClick="checkAll('.$limit.')" class="btn btn-success">
	<input name="btnBTL" type="reset" value="BATAL" class="btn btn-info">
	<input name="btnHPS" type="submit" value="HAPUS" class="btn btn-danger">
	</td>
	<td align="right"><strong><font color="#FF0000">'.$count.'</font></strong> Data. '.$pagelist.'</td>
	</tr>
	</table>';
	}
else
	{
	echo '<p>
	<font color="red">
	<strong>TIDAK ADA DATA.</strong>
	</font>
	</p>';
	}




echo '</form>';

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");



//diskonek
xclose($koneksi);
exit();
?>