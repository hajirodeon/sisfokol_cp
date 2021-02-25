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
$filenya = "komentar.php";
$judul = "[INTERAKTIF]. Daftar Komentar";
$judulku = "$judul  [$adm_session]";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$katkd = nosql($_REQUEST['katkd']);
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
	//ambil semua
	for ($i=1; $i<=$limit;$i++)
		{
		//ambil nilai
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del
		mysqli_query($koneksi, "DELETE FROM cp_artikel_komentar ".
						"WHERE kd = '$kd'");
		}



	//re-direct
	xloc($filenya);
	exit();
	}






//jika balas
if ($_POST['btnSMP'])
	{
	//nilai
	$kdku = nosql($_POST['kdku']);
	$katkd = nosql($_POST['katkd']);
	$s = nosql($_POST['s']);
	$e_balas = cegah($_POST['e_balas']);
	
	
	//update dulu...
	mysqli_query($koneksi, "UPDATE cp_artikel_komentar SET aktif = 'true' ".
					"WHERE kd = '$kdku'");
	
	//insert
	mysqli_query($koneksi, "INSERT INTO cp_artikel_komentar(kd, kd_artikel, nama, isi, aktif, postdate) VALUES ".
					"('$x', '$katkd', 'ADMIN', '$e_balas', 'true', '$today')");
	
	
	//re-direct
	xloc($filenya);
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

//jika balas
if ($s == "balas")
	{
	//rincian komentar
	$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel_komentar ".
							"WHERE kd = '$kdku'");
	$rku = mysqli_fetch_assoc($qku);
	$ku_artkd = nosql($rku['kd_artikel']);
	$ku_isi = balikin($rku['isi']);
	$ku_nama = balikin($rku['nama']);
	
	//detail artikel
	$qku2 = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
						"WHERE kd = '$ku_artkd'");
	$rku2 = mysqli_fetch_assoc($qku2);
	$ku2_artikel = balikin($rku2['judul']);




	echo '<p>
	Artikel :
	<br>
	<b>'.$ku2_artikel.'</b>
	</p>
	
	<p>
	Komentar : 
	<br>
	<u><b>'.$ku_isi.'</b></u>
	</p>
	
	<p>
	Dari nama : <b>'.$ku_nama.'</b>.
	</p>
	
	<p>
	Isi Balasan : 
	<br>
	<textarea id="e_balas" name="e_balas" rows="20" cols="80" style="width: 100%"></textarea>
	</p>
	
	<p>
	<input name="s" id="s" type="hidden" value="'.$s.'">
	<input name="kdku" id="kdku" type="hidden" value="'.$kdku.'">
	<input name="katkd" id="katkd" type="hidden" value="'.$katkd.'">
	<button name="btnSMP" id="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">SIMPAN</button>
	<button name="btnBTL" id="btnBTL" type="reset" value="BATAL" class="btn btn-info">BATAL</button>
	</p>
	';
	}

else 
	{
	//query
	$p = new Pager();
	$start = $p->findStart($limit);
	
	$sqlcount = "SELECT * FROM cp_artikel_komentar ".
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
		<td><strong><font color="'.$warnatext.'">Judul Artikel</font></strong></td>
		<td><strong><font color="'.$warnatext.'">Nama</font></strong></td>
		<td><strong><font color="'.$warnatext.'">Alamat</font></strong></td>
		<td><strong><font color="'.$warnatext.'">E-Mail</font></strong></td>
		<td><strong><font color="'.$warnatext.'">Isi</font></strong></td>
		<td width="10"><strong><font color="'.$warnatext.'">BALAS</font></strong></td>
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
			$i_katkd = nosql($data['kd_artikel']);
			$i_nama = balikin($data['nama']);
			$i_alamat = balikin($data['alamat']);
			$i_email = balikin($data['email']);
			$i_isi = balikin($data['isi']);
			$i_aktif = balikin($data['aktif']);
			$i_postdate = $data['postdate'];
	
	
			//detail artikel
			$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
								"WHERE kd = '$i_katkd'");
			$rku = mysqli_fetch_assoc($qku);
			$ku_artikel = balikin($rku['judul']);
	
	
			//jika belum acc
			if ($i_aktif == "false")
				{
				$warnax = "red";	
				}
				
				
	
			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td><input name="kd'.$nomer.'" type="hidden" value="'.$i_kd.'">
			<input type="checkbox" name="item'.$nomer.'" value="'.$i_kd.'">
			</td>
			<td>'.$i_postdate.'</td>
			<td>'.$ku_artikel.'</td>
			<td>'.$i_nama.'</td>
			<td>'.$i_alamat.'</td>
			<td>'.$i_email.'</td>
			<td>'.$i_isi.'</td>
			<td>';
			
			//jika perlu acc admin
			if ($i_nama != "ADMIN")
				{
				echo '<a href="'.$filenya.'?s=balas&kdku='.$i_kd.'&katkd='.$i_katkd.'"><img src="'.$sumber.'/img/edit.gif" width="16" height="16" border="0"></a>';
				}
				
			else
				{
				echo "-";
				}
			
			
			echo '</td>
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