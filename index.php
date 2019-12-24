<?php
session_start();


//ambil nilai
require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
require("inc/class/paging.php");
$tpl = LoadTpl("template/cp_depan.html");



nocache;

//nilai
$filenya = "index.php";
$filenyax = "i_index.php";
$filenya_ke = $sumber;
$judul = "$sek_nama";
$judulku = $judul;






//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika batal
if ($_POST['btnBTL'])
	{
	//re-direct
	xloc($filenya);
	exit();
	}






/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//isi *START
ob_start();

require("i_headline.php");

//isi
$i_headline = ob_get_contents();
ob_end_clean();




//isi *START
ob_start();

require("i_sambutan_ks.php");

//isi
$i_sambutan_ks = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_video.php");

//isi
$i_video = ob_get_contents();
ob_end_clean();









//isi *START
ob_start();

require("i_kategori.php");

//isi
$i_kategori = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_link_internal.php");

//isi
$i_link_internal = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_pegawai.php");

//isi
$i_pegawai = ob_get_contents();
ob_end_clean();












//isi *START
ob_start();

require("i_siswa.php");

//isi
$i_siswa = ob_get_contents();
ob_end_clean();


















//isi *START
ob_start();

require("i_menu.php");

//isi
$i_menu = ob_get_contents();
ob_end_clean();








//isi *START
ob_start();

require("i_populer.php");

//isi
$i_populer = ob_get_contents();
ob_end_clean();












//isi *START
ob_start();

require("i_kalender.php");

//isi
$i_kalender = ob_get_contents();
ob_end_clean();





//isi *START
ob_start();

require("i_terbaru.php");

//isi
$i_terbaru = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_link.php");

//isi
$i_link = ob_get_contents();
ob_end_clean();



















//isi *START
ob_start();

require("i_download.php");

//isi
$i_download = ob_get_contents();
ob_end_clean();






//isi *START
ob_start();

require("i_foto.php");

//isi
$i_foto = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_polling.php");

//isi
$i_polling = ob_get_contents();
ob_end_clean();












//isi *START
ob_start();

require("i_slideshow.php");

//isi
$i_slideshow = ob_get_contents();
ob_end_clean();








//isi *START
ob_start();

require("i_mutiara.php");

//isi
$i_mutiara = ob_get_contents();
ob_end_clean();








//isi *START
ob_start();

require("i_mitra.php");

//isi
$i_mitra = ob_get_contents();
ob_end_clean();






//isi *START
ob_start();

require("i_newsletter.php");

//isi
$i_newsletter = ob_get_contents();
ob_end_clean();
















//isi *START
ob_start();

require("i_footer.php");

//isi
$i_footer = ob_get_contents();
ob_end_clean();










require("inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
