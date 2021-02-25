<?php
session_start();

require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
require("../../inc/cek/adm.php");
$tpl = LoadTpl("../../template/admin.html");

nocache;

//nilai
$filenya = "submenu.php";
$diload = "document.formx.submenu.focus();";
$judul = "[ARTIKEL]. Data submenu";
$judulku = "$judul  [$adm_session]";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$kd = nosql($_REQUEST['kd']);





//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////
if ($_POST['btnSMP'])
	{
	$s = nosql($_POST['s']);
	$kd = nosql($_POST['kd']);
	$dmenu = nosql($_POST['dmenu']);
	$kode = nosql($_POST['e_no']);
	$submenu = cegah2($_POST['e_nama']);

	//nek null
	if ((empty($kode)) OR (empty($submenu)))
		{
		//nilai
		$pesan = "Input Tidak Lengkap. Harap Diulangi...!!";
		pekem($pesan,$filenya);
		exit();
		}
	else
		{
		//jika baru
		if (empty($s))
			{
			//cek
			$qcc = mysqli_query($koneksi, "SELECT * FROM cp_m_submenu ".
									"WHERE kd_menu = '$dmenu' ".
									"no = '$kode'");
			$rcc = mysqli_fetch_assoc($qcc);
			$tcc = mysqli_num_rows($qcc);
	
			if (empty($tcc))
				{
				//query
				mysqli_query($koneksi, "INSERT INTO cp_m_submenu(kd, kd_menu, no, nama, postdate) VALUES ".
								"('$x', '$dmenu', '$kode', '$submenu', '$today')");
	
	
				//re-direct
				xloc($filenya);
				exit();
				}
	
			//nek ada
			else if (!empty($tcc))
				{
				//re-direct
				$pesan = "Sudah Ada. Silahkan Ganti Yang Lain...!!";
				pekem($pesan,$filenya);
				exit();
				}
			}
			
			
		else if ($s == "edit")
			{
			//query
			mysqli_query($koneksi, "UPDATE cp_m_submenu SET kd_menu = '$dmenu', ".
							"no = '$kode', ".
							"nama = '$submenu' ".
							"WHERE kd = '$kd'");
							
							
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

	//ambil semua
	for ($i=1; $i<=$jml;$i++)
		{
		//ambil nilai
		$yuk = "item";
		$yuhu = "$yuk$i";
		$kd = nosql($_POST["$yuhu"]);

		//del
		mysqli_query($koneksi, "DELETE FROM cp_m_submenu ".
					"WHERE kd = '$kd'");
		}

	//re-direct
	xloc($filenya);
	exit();
	}
///////////////////////////////////////////////////////////////////////////////////////////////////












//isi *START
ob_start();


//js
require("../../inc/js/jumpmenu.js");
require("../../inc/js/swap.js");
require("../../inc/js/checkall.js");





//view //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//query
$qx = mysqli_query($koneksi, "SELECT * FROM cp_m_submenu ".
					"WHERE kd = '$kd'");
$rowx = mysqli_fetch_assoc($qx);
$e_no = balikin($rowx['no']);
$e_nama = balikin($rowx['nama']);


echo '<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx">
<p>
Menu :
<br>
<select name="dmenu" id="dmenu" class="btn btn-warning">
<option value="" selected></option>';

$qst = mysqli_query($koneksi, "SELECT * FROM cp_m_menu ".
						"ORDER BY round(no) ASC");
$rowst = mysqli_fetch_assoc($qst);

do
	{
	$st_kd = nosql($rowst['kd']);
	$st_kode1 = balikin($rowst['no']);
	$st_nama1 = balikin($rowst['nama']);

	echo '<option value="'.$st_kd.'">'.$st_nama1.'</option>';
	}
while ($rowst = mysqli_fetch_assoc($qst));

echo '</select>
</p>

<p>
No. :
<br> 
<input name="e_no" id="e_no" type="text" value="'.$e_no.'" size="5" class="btn btn-warning">
</p>

<p>
Nama : 
<br>
<input name="e_nama" id="e_nama" type="text" value="'.$e_nama.'" size="30" class="btn btn-warning">
</p>

<p>
<input name="s" type="hidden" value="'.$s.'">
<input name="kd" type="hidden" value="'.$kd.'">

<button name="btnSMP" id="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">SIMPAN</button>
<button name="btnBTL" id="btnBTL" type="reset" value="BATAL" class="btn btn-info">BATAL</button>
</p>
</form>';



//query
$q = mysqli_query($koneksi, "SELECT cp_m_submenu.*, ".
						"cp_m_menu.nama AS mmenu ".
						"FROM cp_m_submenu, cp_m_menu ".
						"WHERE cp_m_submenu.kd_menu = cp_m_menu.kd ".
						"ORDER BY cp_m_menu.nama ASC, ".
						"round(cp_m_submenu.no) ASC");
$row = mysqli_fetch_assoc($q);
$total = mysqli_num_rows($q);


echo '<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx3">

<div class="table-responsive">          
  <table class="table" border="1">
    <thead>


	<tr valign="top" bgcolor="'.$warnaheader.'">
	<td width="1">&nbsp;</td>
	<td width="1">&nbsp;</td>
	<td width="50"><strong><font color="'.$warnatext.'">MENU</font></strong></td>
	<td width="50"><strong><font color="'.$warnatext.'">No.</font></strong></td>
	<td><strong><font color="'.$warnatext.'">Nama</font></strong></td>
	<td width="350"><strong><font color="'.$warnatext.'">Terhubung Halaman</font></strong></td>
	</tr>

    </thead>
    <tbody>';

	
	//jika ada
	if (!empty($total))
		{
	
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
		
			$nomer = $nomer + 1;
			$kd = nosql($row['kd']);
			$e_no = balikin($row['no']);
			$e_submenu = balikin($row['nama']);
			$e_mmenu = balikin($row['mmenu']);
			
			
			//ketahui artikelnya
			$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
									"WHERE kd_submenu = '$kd'");
			$rku = mysqli_fetch_assoc($qku);
			$ku_kd = nosql($rku['kd']);
			$ku_judul = balikin($rku['judul']);
			
			//update submenu
			mysqli_query($koneksi, "UPDATE cp_m_submenu SET kd_artikel = '$ku_kd' ".
							"WHERE kd = '$kd'");
			
		
			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td>
			<input name="kd'.$nomer.'" type="hidden" value="'.$kd.'">
			<input type="checkbox" name="item'.$nomer.'" value="'.$kd.'">
			</td>
			<td>
			<a href="'.$filenya.'?s=edit&kd='.$kd.'" title="EDIT..."><img src="'.$sumber.'/img/edit.gif" width="16" height="16" border="0"></a>
			</td>
			<td>'.$e_mmenu.'</td>
			<td>'.$e_no.'</td>
			<td>'.$e_submenu.'</td>
			<td>';
			
			//jika gak  null
			if (!empty($ku_kd))
				{
				echo '[<a href="artikel.php?s=edit&kdku='.$ku_kd.'" title="EDIT..."><img src="'.$sumber.'/img/edit.gif" width="16" height="16" border="0"></a>].
				'.$ku_judul.'';
				}
				
			echo '</td>
			</tr>';
			}
		while ($row = mysqli_fetch_assoc($q));
		}
	
	echo '</tbody>
  </table>
  </div>
  
  


<table width="100%" border="0" cellspacing="0" cellpadding="3">
<tr>
<td width="300">
<input name="jml" type="hidden" value="'.$total.'">
<input name="s" type="hidden" value="'.$s.'">
<input name="kd" type="hidden" value="'.$kd.'">
<input name="btnALL" type="button" value="SEMUA" onClick="checkAll('.$total.')" class="btn btn-success">
<input name="btnBTL" type="reset" value="BATAL" class="btn btn-info">
<input name="btnHPS" type="submit" value="HAPUS" class="btn btn-danger">
</td>
<td align="right"><strong><font color="#FF0000">'.$total.'</font></strong> Data. </td>
</tr>
</table>


</form>';

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi
$isi = ob_get_contents();
ob_end_clean();

require("../../inc/niltpl.php");



//diskonek
xfree($qbw);
xclose($koneksi);
exit();
?>