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
$filenya = "polling.php";
$judul = "[INTERAKTIF]. Data Polling";
$judulku = "$judul  [$adm_session]";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$kdku = nosql($_REQUEST['kdku']);






//nek simpan
if ($_POST['btnSMP'])
	{
	//nilai
	$gmkd = nosql($_POST['gmkd']);
	$topik = cegah($_POST['topik']);
	$opsi1 = cegah($_POST['opsi1']);
	$opsi2 = cegah($_POST['opsi2']);
	$opsi3 = cegah($_POST['opsi3']);
	$opsi4 = cegah($_POST['opsi4']);
	$opsi5 = cegah($_POST['opsi5']);


	//cek null
	if ((empty($topik)) OR (empty($opsi1)) OR (empty($opsi2)) OR (empty($opsi3)) OR (empty($opsi4)) OR (empty($opsi5)))
		{
		//diskonek
		xfree($qbw);
		xclose($koneksi);

		//re-direct
		$pesan = "Input Tidak Lengkap. Harap Diperhatikan...!!";
		$ke = "$filenya&s=baru";
		pekem($pesan,$ke);
		exit();
		}
	else
		{
		//hapus yang ada...
		mysql_query("DELETE FROM cp_polling");

		//entry baru
		mysql_query("INSERT INTO cp_polling(kd, topik, opsi1, opsi2, opsi3, opsi4, opsi5, postdate) VALUES ".
						"('$x', '$topik', '$opsi1', '$opsi2', '$opsi3', '$opsi4', '$opsi5', '$today')");

		//diskonek
		xfree($qbw);
		xclose($koneksi);

		///re-direct
		xloc($filenya);
		exit();
		}
	}








//isi *START
ob_start();


//js
require("../../inc/js/swap.js");





echo '<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx">
<p>
[<a href="'.$filenya.'?s=baru" title="Buat Baru">Buat Baru</a>]
</p>
<br>';


//jika tulis baru
if ($s == "baru")
	{
	echo '<table width="100%" border="0" cellspacing="0" cellpadding="3">
	<tr valign="top">
	<td>
	Topik :
	<br>
	<input name="topik" type="text" value="" size="50" class="btn btn-warning">
	<br>
	<br>

	Opsi #01 :
	<br>
	<input name="opsi1" type="text" value="" size="30" class="btn btn-warning">
	<br>
	<br>

	Opsi #02 :
	<br>
	<input name="opsi2" type="text" value="" size="30" class="btn btn-warning">
	<br>
	<br>

	Opsi #03 :
	<br>
	<input name="opsi3" type="text" value="" size="30" class="btn btn-warning">
	<br>
	<br>

	Opsi #04 :
	<br>
	<input name="opsi4" type="text" value="" size="30" class="btn btn-warning">
	<br>
	<br>

	Opsi #05 :
	<br>
	<input name="opsi5" type="text" value="" size="30" class="btn btn-warning">
	<br>
	<br>

	<input name="btnSMP" type="submit" value="SIMPAN" class="btn btn-danger">
	<input name="btnBTL" type="submit" value="BATAL" class="btn btn-info">
	</td>
	</tr>
	</table>
	<br>';
	}

//jika view
else
	{
	//js
	require("../../inc/js/wz_jsgraphics.js");
	require("../../inc/js/pie.js");


	//cek
	$qcc = mysql_query("SELECT * FROM cp_polling");
	$rcc = mysql_fetch_assoc($qcc);
	$tcc = mysql_num_rows($qcc);
	$cc_topik = balikin($rcc['topik']);
	$cc_opsi1 = balikin($rcc['opsi1']);
	$cc_opsi2 = balikin($rcc['opsi2']);
	$cc_opsi3 = balikin($rcc['opsi3']);
	$cc_opsi4 = balikin($rcc['opsi4']);
	$cc_opsi5 = balikin($rcc['opsi5']);
	$cc_nil_opsi1 = nosql($rcc['nil_opsi1']);
	$cc_nil_opsi2 = nosql($rcc['nil_opsi2']);
	$cc_nil_opsi3 = nosql($rcc['nil_opsi3']);
	$cc_nil_opsi4 = nosql($rcc['nil_opsi4']);
	$cc_nil_opsi5 = nosql($rcc['nil_opsi5']);

	//jika nol
	if ((empty($cc_nil_opsi1)) AND (empty($cc_nil_opsi2)) AND (empty($cc_nil_opsi3)) AND (empty($cc_nil_opsi4))
		AND (empty($cc_nil_opsi5)))
		{
		$cc_nil_opsi1 = 1;
		$cc_nil_opsi2 = 1;
		$cc_nil_opsi3 = 1;
		$cc_nil_opsi4 = 1;
		$cc_nil_opsi5 = 1;
		}



	//jika ada
	if ($tcc != 0)
		{
		echo '<table width="100%" border="0" cellspacing="0" cellpadding="3">
		<tr valign="top">
		<td width="400">
		Topik :
		<br>
		<strong>'.$cc_topik.'</strong>
		<br>
		<br>

		<ul>
		<li>
		Opsi #01 : [<strong>'.$cc_nil_opsi1.'</strong> vote]
		<br>
		<strong>'.$cc_opsi1.'</strong>
		<br>
		<br>
		</li>

		<li>
		Opsi #02 : [<strong>'.$cc_nil_opsi2.'</strong> vote]
		<br>
		<strong>'.$cc_opsi2.'</strong>
		<br>
		<br>
		</li>

		<li>
		Opsi #03 : [<strong>'.$cc_nil_opsi3.'</strong> vote]
		<br>
		<strong>'.$cc_opsi3.'</strong>
		<br>
		<br>
		</li>

		<li>
		Opsi #04 : [<strong>'.$cc_nil_opsi4.'</strong> vote]
		<br>
		<strong>'.$cc_opsi4.'</strong>
		<br>
		<br>
		</li>

		<li>
		Opsi #05 : [<strong>'.$cc_nil_opsi5.'</strong> vote]
		<br>
		<strong>'.$cc_opsi5.'</strong>
		<br>
		<br>
		</li>

		</ul>

		</td>
		<td>
		<div id="pieCanvas" style="position:absolute; height:350px; width:380px; z-index:1; left: 400px; top: 150px;"></div>

		<script type="text/javascript">
		var p = new pie();
		p.add("Opsi #1 ",'.$cc_nil_opsi1.');
		p.add("Opsi #2 ",'.$cc_nil_opsi2.');
		p.add("Opsi #3 ",'.$cc_nil_opsi3.');
		p.add("Opsi #4 ",'.$cc_nil_opsi4.');
		p.add("Opsi #5 ",'.$cc_nil_opsi5.');
		p.render("pieCanvas", "Grafik Polling")

		</script>

		</td>
		</tr>
		</table>
		<br>';
		}

	//tidak ada
	else
		{
		echo '<table width="100%" border="0" cellspacing="0" cellpadding="3">
		<tr valign="top">
		<td>
		<font color="blue"><strong>Belum Ada Data Polling. Silahkan Entry Baru...!!</strong></font>
		</td>
		</tr>
		</table>
		<br>';
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