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
$filenya = "newsletter.php";
$filenyax = "i_newsletter_kirim.php";
$judul = "[INTERAKTIF]. NEWSLETTER";
$judulku = "[NEWSLETTER]. $judul";
$judulx = $judul;
$s = nosql($_REQUEST['s']);
$kdku = nosql($_REQUEST['kdku']);








//jika daftar
if($_POST['btnDF'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}
	
	







//isi *START
ob_start();




?>


  
  <script>
  	$(document).ready(function() {
    $('#table-responsive').dataTable( {
        "scrollX": true
    } );
} );
  </script>
  


<script language='javascript'>
//membuat document jquery
$(document).ready(function(){


	$("#btnMASSAL").on('click', function(){
		$('#loading').show();
		
		$("#formx21").submit(function(){
			$.ajax({
				url: "<?php echo $filenyax;?>?aksi=simpan",
				type:$(this).attr("method"),
				data:$(this).serialize(),
				success:function(data){					
					$("#ihasil2").html(data);
					setTimeout('$("#loading").hide()',5000);
					}
				});
			return false;
		});
	});	





		
});

</script>

	
	



<?php
echo '<form name="formx21" id="formx21">
<input name="btnMASSAL" id="btnMASSAL" type="submit" value="KIRIM EMAIL MASSAL >> " class="btn btn-danger">
<br>
<div id="ihasil2"></div>

<div id="loading" style="display:none">
<img src="'.$sumber.'/template/img/progress-bar.gif" width="100" height="16">
</div>

</form>


<hr>


NB. Yang dikirimkan massal ke email, adalah artikel terakhir.
<form action="'.$filenya.'" enctype="multipart/form-data" method="post" name="formx">';



//query
$p = new Pager();
$start = $p->findStart($limit);

$sqlcount = "SELECT * FROM cp_newsletter ".
				"ORDER BY postdate DESC";
$sqlresult = $sqlcount;

$count = mysqli_num_rows(mysqli_query($sqlcount));
$pages = $p->findPages($count, $limit);
$result = mysqli_query($koneksi, "$sqlresult LIMIT ".$start.", ".$limit);
$pagelist = $p->pageList($_GET['page'], $pages, $target);
$data = mysqli_fetch_array($result);


if ($count != 0)
	{
	//view data
	echo '<div class="table-responsive">          
		  <table class="table" border="1">
		    <thead>
				
	<tr bgcolor="'.$warnaheader.'">
	<td width="100"><strong><font color="'.$warnatext.'">Postdate</font></strong></td>
	<td><strong><font color="'.$warnatext.'">E-Mail</font></strong></td>
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
		$i_postdate = balikin($data['postdate']);
		$i_email = balikin($data['email']);





		echo "<tr valign=\"top\" bgcolor=\"$warna\" onmouseover=\"this.bgColor='$warnaover';\" onmouseout=\"this.bgColor='$warna';\">";
		echo '<td>'.$i_postdate.'</td>
		<td>'.$i_email.'</td>
		</tr>';
		}
	while ($data = mysqli_fetch_assoc($result));

	echo '</tbody>
		  </table>
		  </div>
	

	<table width="100%" border="0" cellspacing="0" cellpadding="3">
	<tr>
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