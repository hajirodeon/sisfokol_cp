<?php
//kategori
$qyuk2 = mysqli_query($koneksi, "SELECT * FROM cp_m_download ".
						"ORDER BY nama ASC");
$ryuk2 = mysqli_fetch_assoc($qyuk2);


echo '<ul class="catagory-widgets">';


do
	{
	//nilai
	$yuk2_kd = nosql($ryuk2['kd']);
	$yuk2_nama = balikin($ryuk2['nama']);
	$yuk2_filex = balikin($ryuk2['filex']);
	$yuk2_postdate = balikin($ryuk2['postdate']);
	
	$yuk2_nama2 = seo_friendly_url($yuk2_nama);
	

    echo '<li><a href="'.$sumber.'/filebox/download/'.$yuk2_kd.'/'.$yuk2_filex.'"><span><i class="fa fa-angle-double-right" aria-hidden="true"></i> '.$yuk2_nama.'</span> </a></li>';
	}
while ($ryuk2 = mysqli_fetch_assoc($qyuk2));


echo '</ul>';
?>