<?php
//kategori
$qyuk2 = mysqli_query($koneksi, "SELECT * FROM cp_link_internal ".
						"ORDER BY nama ASC");
$ryuk2 = mysqli_fetch_assoc($qyuk2);



echo '<ul class="catagory-widgets">';


do
	{
	//nilai
	$yuk2_kd = nosql($ryuk2['kd']);
	$yuk2_nama = balikin($ryuk2['nama']);
	$yuk2_urlnya = balikin($ryuk2['urlnya']);
	$yuk2_postdate = balikin($ryuk2['postdate']);
	

    echo '<li><a href="'.$yuk2_urlnya.'" target="_blank"><span><i class="fa fa-angle-double-right" aria-hidden="true"></i> '.$yuk2_nama.'</span> </a></li>';
	}
while ($ryuk2 = mysqli_fetch_assoc($qyuk2));


echo '</ul>';
?>