<?php
session_start();

require("../../inc/config.php");
require("../../inc/fungsi.php");
require("../../inc/koneksi.php");
	




$filenyax = "i_newsletter_kirim.php";



//PROSES ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//jika simpan
if ((isset($_GET['aksi']) && $_GET['aksi'] == 'simpan'))
	{
	ini_set( 'display_errors', 0 );
	error_reporting( E_ALL );
	
	
	
	//artikel terbaru...
	$qyus = mysql_query("SELECT * FROM cp_artikel ".
							"ORDER BY postdate DESC LIMIT 0,1");
	$ryus = mysql_fetch_assoc($qyus);
	//nilai
	$yus_kd = nosql($ryus['kd']);
	$yus_judul = balikin($ryus['judul']);
	$yus_isi = balikin($ryus['isi']);
	$yus_postdate = $ryus['postdate'];
	$yuk_nama2 = seo_friendly_url($yus_judul);
	
	$ke = "$sumber/artikel.php?$yuk_nama2&artkd=$yus_kd";
		
	
	
	
	//detail
	$qku = mysql_query("SELECT * FROM m_profil");
	$rku = mysql_fetch_assoc($qku);
	$ku_nama = balikin($rku['nama']);
	$ku_email = balikin($rku['email']);
	$ku_web = balikin($rku['web']);
	
		
	
	//daftar
	$qyuk = mysql_query("SELECT * FROM cp_newsletter ".
							"ORDER BY postdate DESC");
	$ryuk = mysql_fetch_assoc($qyuk);
	
	do
		{
		//nilai
		$yuk_email = balikin($ryuk['email']);
	
				
		$from = $ku_email;
		$to = $yuk_email;
		$subject = "$ku_nama : ArtikelTerbaru...";
		$message = "$yus_judul

$yus_isi


[$ke].



$ku_web";
		
		$headers = "From:" . $from;
		mail($to,$subject,$message, $headers);
		}
	while ($ryuk = mysql_fetch_assoc($qyuk));
							
						





	
	exit();
	}



?>