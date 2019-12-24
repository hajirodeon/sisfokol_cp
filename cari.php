<?php
session_start();


//ambil nilai
require("inc/config.php");
require("inc/fungsi.php");
require("inc/koneksi.php");
require("inc/class/paging.php");
$tpl = LoadTpl("template/cp_cari.html");



nocache;

//nilai
$kunci = cegah($_POST['kunci']);
$kuncix = balikin($_POST['kunci']);
$filenya = "cari.php?kunci=$kunci";
$filenyax = "i_index.php";
$filenya_ke = $sumber;
$judul = "Cari Artikel : $kuncix";
$judulku = $judul; 




//jika null
if (empty($kunci))
	{
	xloc($sumber);
	exit();
	}







//detail artikel ////////////////////////////////////////////////////////////////////////////////////////
ob_start();




echo '<div class="section-heading">
    <h5>CARI ARTIKEL : '.$kunci.'</h5>
</div>';



//terbaru
$qyuk2 = mysql_query("SELECT * FROM cp_artikel ".
						"WHERE judul LIKE '%$kunci%' ".
						"OR isi LIKE '%$kunci%' ".
						"ORDER BY postdate DESC");
$ryuk2 = mysql_fetch_assoc($qyuk2);

do
	{
	//nilai
	$yuk2_kd = nosql($ryuk2['kd']);
	$yuk2_filex = balikin($ryuk2['filex']);
	$yuk2_judul = balikin($ryuk2['judul']);
	$yuk2_isi = balikin($ryuk2['isi']);
	$yuk2_jml_dilihat = nosql($ryuk2['jml_dilihat']);
	$yuk2_jml_suka = nosql($ryuk2['jml_suka']);
	$yuk2_jml_komentar = nosql($ryuk2['jml_komentar']);
	
	$yuk2_postdate = balikin($ryuk2['postdate']);
	$yuk_judul2 = seo_friendly_url($yuk_judul);
	
	echo '<div class="single-blog-post d-flex">
        <div class="post-thumbnail">
            <img src="'.$sumber.'/filebox/artikel/'.$yuk2_kd.'/'.$yuk2_filex.'" alt="'.$yuk2_judul.'">
        </div>
        <div class="post-content">
            <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'" class="post-title">'.$yuk2_judul.'</a>
            <div class="post-meta d-flex">
                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'"><i class="fa fa-eye" aria-hidden="true"></i> '.$yuk2_jml_dilihat.'</a>
                &nbsp;&nbsp;
                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> '.$yuk2_jml_suka.'</a>
                &nbsp;&nbsp;
                <a href="artikel.php?artkd='.$yuk2_kd.'&'.$yuk_judul2.'"><i class="fa fa-comments-o" aria-hidden="true"></i> '.$yuk2_jml_komentar.'</a>
                &nbsp;&nbsp;

				
            </div>
        </div>
    </div>';

	}
while ($ryuk2 = mysql_fetch_assoc($qyuk2));


//isi
$i_artikel_detail = ob_get_contents();
ob_end_clean();














//brcrumb ////////////////////////////////////////////////////////////////////////////////////////
ob_start();


echo '<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="'.$sumber.'"><i class="fa fa-home" aria-hidden="true"></i> BERANDA</a></li>
        <li class="breadcrumb-item"><a href="cari.php?kunci='.$kunci.'">Cari Artikel : '.$kunci.'</a></li>
    </ol>
</nav>';

					
					
//isi
$i_artikel_bcrumb = ob_get_contents();
ob_end_clean();























//artikel image ////////////////////////////////////////////////////////////////////////////////////////
ob_start();



//kasi random
$qyuk2 = mysql_query("SELECT * FROM cp_g_foto ".
						"ORDER BY RAND()");
$ryuk2 = mysql_fetch_assoc($qyuk2);
$yuk2_kd = nosql($ryuk2['kd']);
$yuk2_nama = balikin($ryuk2['nama']);
$yuk2_filex = balikin($ryuk2['filex']);


$ku_filex2 = "$sumber/filebox/foto/$yuk2_kd/$yuk2_filex";


echo $ku_filex2;

//isi
$i_artikel_image = ob_get_contents();
ob_end_clean();















//isi *START
ob_start();

require("i_menu.php");

//isi
$i_menu = ob_get_contents();
ob_end_clean();











//isi *START
ob_start();

require("i_footer.php");

//isi
$i_footer = ob_get_contents();
ob_end_clean();










//isi *START
ob_start();

require("i_populer.php");

//isi
$i_populer = ob_get_contents();
ob_end_clean();





//isi *START
ob_start();

require("i_terbaru.php");

//isi
$i_terbaru = ob_get_contents();
ob_end_clean();














require("inc/niltpl.php");


//diskonek
xclose($koneksi);
exit();
?>
