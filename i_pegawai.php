<?php
//foto
$qyuk2 = mysql_query("SELECT * FROM cp_m_pegawai ".
						"ORDER BY RAND()");
$ryuk2 = mysql_fetch_assoc($qyuk2);
$yuk2_kd = nosql($ryuk2['kd']);
$yuk2_nama = balikin($ryuk2['nama']);
$yuk2_filex = balikin($ryuk2['filex1']);
$yuk2_postdate = balikin($ryuk2['postdate']);
$yuk2_nama2 = seo_friendly_url($yuk2_nama);



echo '<div class="row">

<div class="col-md-12">
<p>
<img src="'.$sumber.'/filebox/pegawai/'.$yuk2_kd.'/'.$yuk2_filex.'" class="img-thumbnail" alt="'.$yuk2_nama.'" width="100%">
</p>

<p>
'.$yuk2_nama.'
</p>

<p>
<a href="pegawai.php">...SELENGKAPNYA >></a>
</p>

</div>

</div>';
?>

