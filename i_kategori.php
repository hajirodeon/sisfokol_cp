<?php
//kategori
$qyuk2 = mysqli_query($koneksi, "SELECT * FROM cp_m_kategori ".
						"ORDER BY nama ASC");
$ryuk2 = mysqli_fetch_assoc($qyuk2);


echo '<ul class="catagory-widgets">';


do
	{
	//nilai
	$yuk2_kd = nosql($ryuk2['kd']);
	$yuk2_nama = balikin($ryuk2['nama']);
	$yuk2_postdate = balikin($ryuk2['postdate']);
	
	$yuk2_nama2 = seo_friendly_url($yuk2_nama);
	
	
	//ketahui jumlah artikel
	$qmboh = mysqli_query($koneksi, "SELECT * FROM cp_artikel ".
							"WHERE kd_kategori = '$yuk2_kd'");
	$tmboh = mysqli_num_rows($qmboh);
	
	

    echo '<li><a href="kategori.php?katkd='.$yuk2_kd.'&'.$yuk2_nama2.'"><span><i class="fa fa-angle-double-right" aria-hidden="true"></i> '.$yuk2_nama.'</span> <span>'.$tmboh.'</span></a></li>';
	}
while ($ryuk2 = mysqli_fetch_assoc($qyuk2));


echo '</ul>';
?>