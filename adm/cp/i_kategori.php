<?php
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
/////// SISFOKOL_SMA_v5.0_(PernahJaya)                          ///////
/////// (Sistem Informasi Sekolah untuk SMA)                    ///////
///////////////////////////////////////////////////////////////////////
/////// Dibuat oleh :                                           ///////
/////// Agus Muhajir, S.Kom                                     ///////
/////// URL 	:                                               ///////
///////     * http://omahbiasawae.com/                          ///////
///////     * http://sisfokol.wordpress.com/                    ///////
///////     * http://hajirodeon.wordpress.com/                  ///////
///////     * http://yahoogroup.com/groups/sisfokol/            ///////
///////     * http://yahoogroup.com/groups/linuxbiasawae/       ///////
/////// E-Mail	:                                               ///////
///////     * hajirodeon@yahoo.com                              ///////
///////     * hajirodeon@gmail.com                              ///////
/////// HP/SMS/WA : 081-829-88-54                               ///////
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////



require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
nocache;


$filenyax = "i_kategori.php";




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//tampilkan form
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'input'))
	{
	echo '<form name="formx" id="formx">
	<p>
	No. :
	<br> 
	<input name="e_no" id="e_no" type="text" value="'.$e_no.'" size="5">
	</p>
	
	<p>
	Nama : 
	<br>
	<input name="e_nama" id="e_nama" type="text" value="'.$e_nama.'" size="30">
	</p>
	
	<p>
	<button name="btnSMP" id="btnSMP" type="submit" value="SIMPAN" class="search_btn"><img src="'.$sumber.'/img/save.png" alt="simpan">SIMPAN</button>
	<button name="btnBTL" id="btnBTL" type="reset" value="BATAL" class="search_btn"><img src="'.$sumber.'/img/reset.png" alt="batal">BATAL</button>
	</p>
	</form>';
	}




//tampilkan form
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'edit'))
	{
	//nilai
	$kd = nosql($_GET['kd']);
	$s = "edit";

	//query
	$qx = mysql_query("SELECT * FROM cp_m_kategori ".
						"WHERE kd = '$kd'");
	$rowx = mysql_fetch_assoc($qx);
	$e_no = balikin($rowx['no']);
	$e_nama = balikin($rowx['nama']);

	echo '<form name="formx2" id="formx2">
	<p>
	No. :
	<br> 
	<input name="e_no" id="e_no" type="text" value="'.$e_no.'" size="5">
	</p>
	
	<p>
	Nama : 
	<br>
	<input name="e_nama" id="e_nama" type="text" value="'.$e_nama.'" size="30">
	</p>
	
	<p>
	<input name="s" id="s" type="hidden" value="'.$s.'">
	<input name="kd" id="kd" type="hidden" value="'.$kd.'">
	<button name="btnSMP2" id="btnSMP2" type="submit" value="SIMPAN" class="search_btn"><img src="'.$sumber.'/img/save.png" alt="simpan">SIMPAN</button>
	<button name="btnBTL2" id="btnBTL2" type="reset" value="BATAL" class="search_btn"><img src="'.$sumber.'/img/reset.png" alt="batal">BATAL</button>
	</p>
	</form>';
	
	xclose($koneksi);
	exit();
	}






//tampilkan data
if(isset($_GET['aksi']) && $_GET['aksi'] == 'daftar')
	{
	//query
	$q = mysql_query("SELECT * FROM cp_m_kategori ".
						"ORDER BY round(no) ASC");
	$row = mysql_fetch_assoc($q);
	$total = mysql_num_rows($q);

	if ($total != 0)
		{
		echo '<form name="formx3" id="formx3">
		<table width="600" border="1" cellspacing="0" cellpadding="3">
		<tr valign="top" bgcolor="'.$warnaheader.'">
		<td width="1">&nbsp;</td>
		<td width="1">&nbsp;</td>
		<td width="50"><strong><font color="'.$warnatext.'">No.</font></strong></td>
		<td><strong><font color="'.$warnatext.'">Nama</font></strong></td>
		</tr>';

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
			$e_kategori = balikin($row['nama']);

			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td>
			<input type="checkbox" class="cb-element" name="item'.$nomer.'" id="item'.$nomer.'" value="'.$kd.'">
			</td>
			<td>
			<a href="#" onclick="$(\'#finput\').load(\''.$filenyax.'?aksi=edit&s=edit&kd='.$kd.'\');">
			<img src="'.$sumber.'/img/edit.gif" width="16" height="16" border="0">
			</a>
			</td>
			<td>'.$e_no.'</td>
			<td>'.$e_kategori.'</td>
			</tr>';
			}
		while ($row = mysql_fetch_assoc($q));

		echo '<tr valign="top" bgcolor="'.$warnaheader.'">
		<td><input type="checkbox" class="checkAll"></td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
		</table>
		<table width="500" border="0" cellspacing="0" cellpadding="3">
		<tr>
		<td>
		<input name="jml" id="jml" type="hidden" value="'.$total.'">
		<button name="btnHPS" id="btnHPS" type="submit" value="HAPUS" class="search_btn"><img src="'.$sumber.'/img/trash.png" alt="delete">HAPUS</button>
		Total : <strong><font color="#FF0000">'.$total.'</font></strong> Data.</td>
		</tr>
		</table>
		</form>';
		}
	else
		{
		echo '<p>
		<font color="red">
		<strong>TIDAK ADA DATA. Silahkan Entry Dahulu...!!</strong>
		</font>
		</p>';
		}

	//diskonek
	xclose($koneksi);
	exit();
	}







//jika simpan baru
if(isset($_GET['aksi']) && $_GET['aksi'] == 'simpan')
	{
	sleep(1);
	$s = nosql($_GET['s']);
	$kd = nosql($_GET['kd']);
	$kode = nosql($_GET['e_no']);
	$kategori = cegah2($_GET['e_nama']);

	//nek null
	if ((empty($kode)) OR (empty($kategori)))
		{
		echo '<p>
		<b>
		<font color="red">
		Input Tidak Lengkap. Harap Diulangi...!!
		</font>
		</b>
		</p>';
		exit();
		}
	else
		{
		//cek
		$qcc = mysql_query("SELECT * FROM cp_m_kategori ".
								"WHERE no = '$kode'");
		$rcc = mysql_fetch_assoc($qcc);
		$tcc = mysql_num_rows($qcc);

		if (empty($tcc))
			{
			//query
			mysql_query("INSERT INTO cp_m_kategori(kd, no, nama, postdate) VALUES ".
							"('$x', '$kode', '$kategori', '$today')");


			echo '<p>
			<b>
			<font color="red">
			Input Berhasil.
			</font>
			</b>
			</p>';
			exit();
			}

		//nek ada
		else if (!empty($tcc))
			{
			echo '<p>
			<b>
			<font color="red">
			Sudah Ada. Silahkan Ganti Yang Lain...!!
			</font>
			</b>
			</p>';
			exit();
			}
		}



	//diskonek
	xclose($koneksi);
	exit();
	}







//jika simpan edit
if(isset($_GET['aksi']) && $_GET['aksi'] == 'simpan2')
	{
	sleep(1);
	$s = nosql($_GET['s']);
	$kd = nosql($_POST['kd']);
	$kode = cegah($_POST['e_no']);
	$kategori = cegah($_POST['e_nama']);

	//nek null
	if ((empty($kode)) OR (empty($kategori)))
		{
		echo '<p>
		<b>
		<font color="red">
		Input Tidak Lengkap. Harap Diulangi...!!
		</font>
		</b>
		</p>';
		}
	else
		{
		//query
		mysql_query("UPDATE cp_m_kategori SET no = '$kode', ".
						"nama = '$kategori' ".
						"WHERE kd = '$kd'");


		echo '<p>
		<b>
		<font color="red">
		Update Berhasil.
		</font>
		</b>
		</p>';
		}



	//diskonek
	xclose($koneksi);
	exit();
	}





//jika hapus
if(isset($_GET['aksi']) && $_GET['aksi'] == 'hapus')
	{
	sleep(1);
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
		mysql_query("DELETE FROM cp_m_kategori ".
					"WHERE kd = '$kd'");
		}



	echo '<p>
	<b>
	<font color="red">
	Berhasil Dihapus.
	</font>
	</b>
	</p>';


	//diskonek
	xclose($koneksi);
	exit();
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
?>