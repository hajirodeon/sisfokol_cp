<?php
require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
nocache;


$filenyax = "i_headline.php";




//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//tampilkan data
if(isset($_GET['aksi']) && $_GET['aksi'] == 'daftar')
	{
	//query
	$q = mysqli_query($koneksi, "SELECT cp_m_posisi.* ".
						"FROM cp_m_posisi ".
						"ORDER BY round(cp_m_posisi.no) ASC");
	$row = mysqli_fetch_assoc($q);
	$total = mysqli_num_rows($q);

	if ($total != 0)
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
		echo '<form name="formx3" id="formx3">
		<div class="table-responsive">          
		  <table class="table" border="1">
		    <thead>

		<tr valign="top" bgcolor="'.$warnaheader.'">
		<td width="150"><strong><font color="'.$warnatext.'">Nama</font></strong></td>
		<td><strong><font color="'.$warnatext.'">Terhubung Halaman</font></strong></td>
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

			$nomer = $nomer + 1;
			$kd = nosql($row['kd']);
			$e_no = balikin($row['no']);
			$e_headline = balikin($row['nama']);
			$e_mmenu = balikin($row['mmenu']);
			
			
			//ketahui artikelnya
			$qku = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
									"WHERE kd_posisi = '$kd'");
			$rku = mysqli_fetch_assoc($qku);
			$ku_kd = nosql($rku['kd']);
			$ku_judul = balikin($rku['judul']);
			
			//update headline
			mysqli_query($koneksi, "UPDATE cp_m_posisi SET kd_artikel = '$ku_kd' ".
							"WHERE kd = '$kd'");
			

			echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
			echo '<td>'.$e_headline.'</td>
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

		echo '</tbody>
		  </table>
		  </div>


		<table width="500" border="0" cellspacing="0" cellpadding="3">
		<tr>
		<td>
		<input name="jml" id="jml" type="hidden" value="'.$total.'">
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
		mysqli_query($koneksi, "UPDATE cp_m_posisi SET kd_artikel = '' ".
						"WHERE kd = '$kd'");
						
		//del
		mysqli_query($koneksi, "UPDATE cp_artikel SET kd_posisi = '' ".
						"WHERE kd_posisi = '$kd'");
		
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